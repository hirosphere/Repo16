using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.Win32.SafeHandles;
using System.Runtime.InteropServices;
using System.Threading;



class HIDHost
{
	//Constant definitions from setupapi.h, which we aren't allowed to include directly since this is C#
	internal const uint DIGCF_PRESENT = 0x02;
	internal const uint DIGCF_DEVICEINTERFACE = 0x10;
	//Constants for CreateFile() and other file I/O functions
	internal const short FILE_ATTRIBUTE_NORMAL = 0x80;
	internal const short INVALID_HANDLE_VALUE = -1;
	internal const uint GENERIC_READ = 0x80000000;
	internal const uint GENERIC_WRITE = 0x40000000;
	internal const uint CREATE_NEW = 1;
	internal const uint CREATE_ALWAYS = 2;
	internal const uint OPEN_EXISTING = 3;
	internal const uint FILE_SHARE_READ = 0x00000001;
	internal const uint FILE_SHARE_WRITE = 0x00000002;
	//Constant definitions for certain WM_DEVICECHANGE messages
	internal const uint WM_DEVICECHANGE = 0x0219;
	internal const uint DBT_DEVICEARRIVAL = 0x8000;
	internal const uint DBT_DEVICEREMOVEPENDING = 0x8003;
	internal const uint DBT_DEVICEREMOVECOMPLETE = 0x8004;
	internal const uint DBT_CONFIGCHANGED = 0x0018;
	//Other constant definitions
	internal const uint DBT_DEVTYP_DEVICEINTERFACE = 0x05;
	internal const uint DEVICE_NOTIFY_WINDOW_HANDLE = 0x00;
	internal const uint ERROR_SUCCESS = 0x00;
	internal const uint ERROR_NO_MORE_ITEMS = 0x00000103;
	internal const uint SPDRP_HARDWAREID = 0x00000001;

	//Various structure definitions for structures that this code will be using
	internal struct SP_DEVICE_INTERFACE_DATA
	{
		internal uint cbSize;               //DWORD
		internal Guid InterfaceClassGuid;   //GUID
		internal uint Flags;                //DWORD
		internal uint Reserved;             //ULONG_PTR MSDN says ULONG_PTR is "typedef unsigned __int3264 ULONG_PTR;"  
	}

	internal struct SP_DEVICE_INTERFACE_DETAIL_DATA
	{
		internal uint cbSize;               //DWORD
		internal char[] DevicePath;         //TCHAR array of any size
	}

	internal struct SP_DEVINFO_DATA
	{
		internal uint cbSize;       //DWORD
		internal Guid ClassGuid;    //GUID
		internal uint DevInst;      //DWORD
		internal uint Reserved;     //ULONG_PTR  MSDN says ULONG_PTR is "typedef unsigned __int3264 ULONG_PTR;"  
	}

	internal struct DEV_BROADCAST_DEVICEINTERFACE
	{
		internal uint dbcc_size;            //DWORD
		internal uint dbcc_devicetype;      //DWORD
		internal uint dbcc_reserved;        //DWORD
		internal Guid dbcc_classguid;       //GUID
		internal char[] dbcc_name;          //TCHAR array
	}

	//DLL Imports.  Need these to access various C style unmanaged functions contained in their respective DLL files.
	//--------------------------------------------------------------------------------------------------------------
	//Returns a HDEVINFO type for a device information set.  We will need the 
	//HDEVINFO as in input parameter for calling many of the other SetupDixxx() functions.
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern IntPtr SetupDiGetClassDevs(
		ref Guid ClassGuid,     //LPGUID    Input: Need to supply the class GUID. 
		IntPtr Enumerator,      //PCTSTR    Input: Use NULL here, not important for our purposes
		IntPtr hwndParent,      //HWND      Input: Use NULL here, not important for our purposes
		uint Flags);            //DWORD     Input: Flags describing what kind of filtering to use.

	//Gives us "PSP_DEVICE_INTERFACE_DATA" which contains the Interface specific GUID (different
	//from class GUID).  We need the interface GUID to get the device path.
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern bool SetupDiEnumDeviceInterfaces(
		IntPtr DeviceInfoSet,           //Input: Give it the HDEVINFO we got from SetupDiGetClassDevs()
		IntPtr DeviceInfoData,          //Input (optional)
		ref Guid InterfaceClassGuid,    //Input 
		uint MemberIndex,               //Input: "Index" of the device you are interested in getting the path for.
		ref SP_DEVICE_INTERFACE_DATA DeviceInterfaceData);    //Output: This function fills in an "SP_DEVICE_INTERFACE_DATA" structure.

	//SetupDiDestroyDeviceInfoList() frees up memory by destroying a DeviceInfoList
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern bool SetupDiDestroyDeviceInfoList(
		IntPtr DeviceInfoSet);          //Input: Give it a handle to a device info list to deallocate from RAM.

	//SetupDiEnumDeviceInfo() fills in an "SP_DEVINFO_DATA" structure, which we need for SetupDiGetDeviceRegistryProperty()
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern bool SetupDiEnumDeviceInfo(
		IntPtr DeviceInfoSet,
		uint MemberIndex,
		ref SP_DEVINFO_DATA DeviceInterfaceData);

	//SetupDiGetDeviceRegistryProperty() gives us the hardware ID, which we use to check to see if it has matching VID/PID
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern bool SetupDiGetDeviceRegistryProperty(
		IntPtr DeviceInfoSet,
		ref SP_DEVINFO_DATA DeviceInfoData,
		uint Property,
		ref uint PropertyRegDataType,
		IntPtr PropertyBuffer,
		uint PropertyBufferSize,
		ref uint RequiredSize);

	//SetupDiGetDeviceInterfaceDetail() gives us a device path, which is needed before CreateFile() can be used.
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern bool SetupDiGetDeviceInterfaceDetail(
		IntPtr DeviceInfoSet,                   //Input: Wants HDEVINFO which can be obtained from SetupDiGetClassDevs()
		ref SP_DEVICE_INTERFACE_DATA DeviceInterfaceData,                    //Input: Pointer to an structure which defines the device interface.  
		IntPtr  DeviceInterfaceDetailData,      //Output: Pointer to a SP_DEVICE_INTERFACE_DETAIL_DATA structure, which will receive the device path.
		uint DeviceInterfaceDetailDataSize,     //Input: Number of bytes to retrieve.
		ref uint RequiredSize,                  //Output (optional): The number of bytes needed to hold the entire struct 
		IntPtr DeviceInfoData);                 //Output (optional): Pointer to a SP_DEVINFO_DATA structure

	//Overload for SetupDiGetDeviceInterfaceDetail().  Need this one since we can't pass NULL pointers directly in C#.
	[DllImport("setupapi.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern bool SetupDiGetDeviceInterfaceDetail(
		IntPtr DeviceInfoSet,                   //Input: Wants HDEVINFO which can be obtained from SetupDiGetClassDevs()
		ref SP_DEVICE_INTERFACE_DATA DeviceInterfaceData,               //Input: Pointer to an structure which defines the device interface.  
		IntPtr DeviceInterfaceDetailData,       //Output: Pointer to a SP_DEVICE_INTERFACE_DETAIL_DATA structure, which will contain the device path.
		uint DeviceInterfaceDetailDataSize,     //Input: Number of bytes to retrieve.
		IntPtr RequiredSize,                    //Output (optional): Pointer to a DWORD to tell you the number of bytes needed to hold the entire struct 
		IntPtr DeviceInfoData);                 //Output (optional): Pointer to a SP_DEVINFO_DATA structure

	//Need this function for receiving all of the WM_DEVICECHANGE messages.  See MSDN documentation for
	//description of what this function does/how to use it. Note: name is remapped "RegisterDeviceNotificationUM" to
	//avoid possible build error conflicts.
	[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	internal static extern IntPtr RegisterDeviceNotification(
		IntPtr hRecipient,
		IntPtr NotificationFilter,
		uint Flags);

	//Takes in a device path and opens a handle to the device.
	[DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	static extern SafeFileHandle CreateFile(
		string lpFileName,
		uint dwDesiredAccess,
		uint dwShareMode, 
		IntPtr lpSecurityAttributes, 
		uint dwCreationDisposition,
		uint dwFlagsAndAttributes, 
		IntPtr hTemplateFile);

	//Uses a handle (created with CreateFile()), and lets us write USB data to the device.
	[DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	static extern bool WriteFile(
		SafeFileHandle hFile,
		byte[] lpBuffer,
		uint nNumberOfBytesToWrite,
		ref uint lpNumberOfBytesWritten,
		IntPtr lpOverlapped);

	//Uses a handle (created with CreateFile()), and lets us read USB data from the device.
	[DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	static extern bool ReadFile(
		SafeFileHandle hFile,
		IntPtr lpBuffer,
		uint nNumberOfBytesToRead,
		ref uint lpNumberOfBytesRead,
		IntPtr lpOverlapped);



	//--------------- Global Varibles Section ------------------
	//USB related variables that need to have wide scope.
	
	public bool AttachedState = false;						//Need to keep track of the USB device attachment status for proper plug and play operation.
	public bool AttachedButBroken = false;
		
	
	SafeFileHandle WriteHandleToUSBDevice = null;
	SafeFileHandle ReadHandleToUSBDevice = null;
	String DevicePath = null;   //Need the find the proper device path before you can open file handles.



	//Globally Unique Identifier (GUID) for HID class devices.  Windows uses GUIDs to identify things.
	Guid InterfaceClassGuid = new Guid(0x4d1e55b2, 0xf16f, 0x11cf, 0x88, 0xcb, 0x00, 0x11, 0x11, 0x00, 0x00, 0x30); 
	
	
	
	private System.ComponentModel.BackgroundWorker ReadWriteThread;
	
	public event Action StatusChanged;
	public event Action AttachedStateChanged;
	
	public string StatusText;
	
	
	public unsafe void Initiate( IntPtr handle )
	{
		ReadWriteThread = new System.ComponentModel.BackgroundWorker();
		this.ReadWriteThread.WorkerReportsProgress = true;
		this.ReadWriteThread.DoWork += new System.ComponentModel.DoWorkEventHandler(this.ReadWriteThread_DoWork);
		
		
		//Register for WM_DEVICECHANGE notifications.  This code uses these messages to detect plug and play connection/disconnection events for USB devices
		DEV_BROADCAST_DEVICEINTERFACE DeviceBroadcastHeader = new DEV_BROADCAST_DEVICEINTERFACE();
		DeviceBroadcastHeader.dbcc_devicetype = DBT_DEVTYP_DEVICEINTERFACE;
		DeviceBroadcastHeader.dbcc_size = (uint)Marshal.SizeOf(DeviceBroadcastHeader);
		DeviceBroadcastHeader.dbcc_reserved = 0;	//Reserved says not to use...
		DeviceBroadcastHeader.dbcc_classguid = InterfaceClassGuid;

		//Need to get the address of the DeviceBroadcastHeader to call RegisterDeviceNotification(), but
		//can't use "&DeviceBroadcastHeader".  Instead, using a roundabout means to get the address by 
		//making a duplicate copy using Marshal.StructureToPtr().
		IntPtr pDeviceBroadcastHeader = IntPtr.Zero;  //Make a pointer.
		pDeviceBroadcastHeader = Marshal.AllocHGlobal(Marshal.SizeOf(DeviceBroadcastHeader)); //allocate memory for a new DEV_BROADCAST_DEVICEINTERFACE structure, and return the address 
		Marshal.StructureToPtr(DeviceBroadcastHeader, pDeviceBroadcastHeader, false);  //Copies the DeviceBroadcastHeader structure into the memory already allocated at DeviceBroadcastHeaderWithPointer
		RegisterDeviceNotification( handle, pDeviceBroadcastHeader, DEVICE_NOTIFY_WINDOW_HANDLE);


		//Now make an initial attempt to find the USB device, if it was already connected to the PC and enumerated prior to launching the application.
		//If it is connected and present, we should open read and write handles to the device so we can communicate with it later.
		//If it was not connected, we will have to wait until the user plugs the device in, and the WM_DEVICECHANGE callback function can process
		//the message and again search for the device.
		if(CheckIfPresentAndGetUSBDevicePath())	//Check and make sure at least one device with matching VID/PID is attached
		{
			uint ErrorStatusWrite;
			uint ErrorStatusRead;


			//We now have the proper device path, and we can finally open read and write handles to the device.
			WriteHandleToUSBDevice = CreateFile(DevicePath, GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, IntPtr.Zero, OPEN_EXISTING, 0, IntPtr.Zero);
			ErrorStatusWrite = (uint)Marshal.GetLastWin32Error();
			ReadHandleToUSBDevice = CreateFile(DevicePath, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, IntPtr.Zero, OPEN_EXISTING, 0, IntPtr.Zero);
			ErrorStatusRead = (uint)Marshal.GetLastWin32Error();

			if((ErrorStatusWrite == ERROR_SUCCESS) && (ErrorStatusRead == ERROR_SUCCESS))
			{
				AttachedState = true;		//Let the rest of the PC application know the USB device is connected, and it is safe to read/write to it
				AttachedButBroken = false;
				// StatusBox_txtbx.Text = "Device Found, AttachedState = TRUE";
				StatusText = "Device Found, AttachedState = TRUE";
				
				
				NotifyAttachedStateChanged();
			}
			else //for some reason the device was physically plugged in, but one or both of the read/write handles didn't open successfully...
			{
				AttachedState = false;		//Let the rest of this application known not to read/write to the device.
				AttachedButBroken = true;	//Flag so that next time a WM_DEVICECHANGE message occurs, can retry to re-open read/write pipes
				if(ErrorStatusWrite == ERROR_SUCCESS)
					WriteHandleToUSBDevice.Close();
				if(ErrorStatusRead == ERROR_SUCCESS)
					ReadHandleToUSBDevice.Close();
				
				
				NotifyAttachedStateChanged();
			}
		}
		else	//Device must not be connected (or not programmed with correct firmware)
		{
			AttachedState = false;
			AttachedButBroken = false;
			
			NotifyAttachedStateChanged();
		}

		if (AttachedState == true)
		{
			// StatusBox_txtbx.Text = "Device Found, AttachedState = TRUE";
			StatusText = "Device Found, AttachedState = TRUE";
			
			
			NotifyAttachedStateChanged();
		}
		else
		{
			// StatusBox_txtbx.Text = "Device not found, verify connect/correct firmware";
			StatusText = "Device not found, verify connect/correct firmware";
		}

		ReadWriteThread.RunWorkerAsync();	//Recommend performing USB read/write operations in a separate thread.  Otherwise,
											//the Read/Write operations are effectively blocking functions and can lock up the
											//user interface if the I/O operations take a long time to complete.

	}
	
	protected virtual void NotifyAttachedStateChanged()
	{
		if( AttachedStateChanged != null )  AttachedStateChanged();
	}
	
	protected virtual void OnStatusChanged( string msg )
	{
		if( StatusChanged != null )  StatusChanged();
	}
	
	protected virtual void OnDataReceived( byte[] data ) {}

	//FUNCTION:	CheckIfPresentAndGetUSBDevicePath()
	//PURPOSE:	Check if a USB device is currently plugged in with a matching VID and PID
	//INPUT:	Uses globally declared String DevicePath, globally declared GUID, and the MY_DEVICE_ID constant.
	//OUTPUT:	Returns BOOL.  TRUE when device with matching VID/PID found.  FALSE if device with VID/PID could not be found.
	//			When returns TRUE, the globally accessable "DetailedInterfaceDataStructure" will contain the device path
	//			to the USB device with the matching VID/PID.

	bool CheckIfPresentAndGetUSBDevicePath()
	{
		/* 
		Before we can "connect" our application to our USB embedded device, we must first find the device.
		A USB bus can have many devices simultaneously connected, so somehow we have to find our device only.
		This is done with the Vendor ID (VID) and Product ID (PID).  Each USB product line should have
		a unique combination of VID and PID.  

		Microsoft has created a number of functions which are useful for finding plug and play devices.  Documentation
		for each function used can be found in the MSDN library.  We will be using the following functions (unmanaged C functions):

		SetupDiGetClassDevs()					//provided by setupapi.dll, which comes with Windows
		SetupDiEnumDeviceInterfaces()			//provided by setupapi.dll, which comes with Windows
		GetLastError()							//provided by kernel32.dll, which comes with Windows
		SetupDiDestroyDeviceInfoList()			//provided by setupapi.dll, which comes with Windows
		SetupDiGetDeviceInterfaceDetail()		//provided by setupapi.dll, which comes with Windows
		SetupDiGetDeviceRegistryProperty()		//provided by setupapi.dll, which comes with Windows
		CreateFile()							//provided by kernel32.dll, which comes with Windows

		In order to call these unmanaged functions, the Marshal class is very useful.
		 
		We will also be using the following unusual data types and structures.  Documentation can also be found in
		the MSDN library:

		PSP_DEVICE_INTERFACE_DATA
		PSP_DEVICE_INTERFACE_DETAIL_DATA
		SP_DEVINFO_DATA
		HDEVINFO
		HANDLE
		GUID

		The ultimate objective of the following code is to get the device path, which will be used elsewhere for getting
		read and write handles to the USB device.  Once the read/write handles are opened, only then can this
		PC application begin reading/writing to the USB device using the WriteFile() and ReadFile() functions.

		Getting the device path is a multi-step round about process, which requires calling several of the
		SetupDixxx() functions provided by setupapi.dll.
		*/

		try
		{
			IntPtr DeviceInfoTable = IntPtr.Zero;
			SP_DEVICE_INTERFACE_DATA InterfaceDataStructure = new SP_DEVICE_INTERFACE_DATA();
			SP_DEVICE_INTERFACE_DETAIL_DATA DetailedInterfaceDataStructure = new SP_DEVICE_INTERFACE_DETAIL_DATA();
			SP_DEVINFO_DATA DevInfoData = new SP_DEVINFO_DATA();

			uint InterfaceIndex = 0;
			uint dwRegType = 0;
			uint dwRegSize = 0;
			uint dwRegSize2 = 0;
			uint StructureSize = 0;
			IntPtr PropertyValueBuffer = IntPtr.Zero;
			bool MatchFound = false;
			uint ErrorStatus;
			uint LoopCounter = 0;

			//Use the formatting: "Vid_xxxx&Pid_xxxx" where xxxx is a 16-bit hexadecimal number.
			//Make sure the value appearing in the parathesis matches the USB device descriptor
			//of the device that this aplication is intending to find.
			String DeviceIDToFind = "Vid_04d8&Pid_003f";

			//First populate a list of plugged in devices (by specifying "DIGCF_PRESENT"), which are of the specified class GUID. 
			DeviceInfoTable = SetupDiGetClassDevs(ref InterfaceClassGuid, IntPtr.Zero, IntPtr.Zero, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE);

			if(DeviceInfoTable != IntPtr.Zero)
			{
				//Now look through the list we just populated.  We are trying to see if any of them match our device. 
				while(true)
				{
					InterfaceDataStructure.cbSize = (uint)Marshal.SizeOf(InterfaceDataStructure);
					if(SetupDiEnumDeviceInterfaces(DeviceInfoTable, IntPtr.Zero, ref InterfaceClassGuid, InterfaceIndex, ref InterfaceDataStructure))
					{
						ErrorStatus = (uint)Marshal.GetLastWin32Error();
						if (ErrorStatus == ERROR_NO_MORE_ITEMS)	//Did we reach the end of the list of matching devices in the DeviceInfoTable?
						{	//Cound not find the device.  Must not have been attached.
							SetupDiDestroyDeviceInfoList(DeviceInfoTable);	//Clean up the old structure we no longer need.
							return false;		
						}
					}
					else	//Else some other kind of unknown error ocurred...
					{
						ErrorStatus = (uint)Marshal.GetLastWin32Error();
						SetupDiDestroyDeviceInfoList(DeviceInfoTable);	//Clean up the old structure we no longer need.
						return false;	
					}

					//Now retrieve the hardware ID from the registry.  The hardware ID contains the VID and PID, which we will then 
					//check to see if it is the correct device or not.

					//Initialize an appropriate SP_DEVINFO_DATA structure.  We need this structure for SetupDiGetDeviceRegistryProperty().
					DevInfoData.cbSize = (uint)Marshal.SizeOf(DevInfoData);
					SetupDiEnumDeviceInfo(DeviceInfoTable, InterfaceIndex, ref DevInfoData);

					//First query for the size of the hardware ID, so we can know how big a buffer to allocate for the data.
					SetupDiGetDeviceRegistryProperty(DeviceInfoTable, ref DevInfoData, SPDRP_HARDWAREID, ref dwRegType, IntPtr.Zero, 0, ref dwRegSize);

					//Allocate a buffer for the hardware ID.
					//Should normally work, but could throw exception "OutOfMemoryException" if not enough resources available.
					PropertyValueBuffer = Marshal.AllocHGlobal((int)dwRegSize);

					//Retrieve the hardware IDs for the current device we are looking at.  PropertyValueBuffer gets filled with a 
					//REG_MULTI_SZ (array of null terminated strings).  To find a device, we only care about the very first string in the
					//buffer, which will be the "device ID".  The device ID is a string which contains the VID and PID, in the example 
					//format "Vid_04d8&Pid_003f".
					SetupDiGetDeviceRegistryProperty(DeviceInfoTable, ref DevInfoData, SPDRP_HARDWAREID, ref dwRegType, PropertyValueBuffer, dwRegSize, ref dwRegSize2);

					//Now check if the first string in the hardware ID matches the device ID of the USB device we are trying to find.
					String DeviceIDFromRegistry = Marshal.PtrToStringUni(PropertyValueBuffer); //Make a new string, fill it with the contents from the PropertyValueBuffer

					Marshal.FreeHGlobal(PropertyValueBuffer);		//No longer need the PropertyValueBuffer, free the memory to prevent potential memory leaks

					//Convert both strings to lower case.  This makes the code more robust/portable accross OS Versions
					DeviceIDFromRegistry = DeviceIDFromRegistry.ToLowerInvariant();	
					DeviceIDToFind = DeviceIDToFind.ToLowerInvariant();				
					//Now check if the hardware ID we are looking at contains the correct VID/PID
					MatchFound = DeviceIDFromRegistry.Contains(DeviceIDToFind);		
					if(MatchFound == true)
					{
						//Device must have been found.  In order to open I/O file handle(s), we will need the actual device path first.
						//We can get the path by calling SetupDiGetDeviceInterfaceDetail(), however, we have to call this function twice:  The first
						//time to get the size of the required structure/buffer to hold the detailed interface data, then a second time to actually 
						//get the structure (after we have allocated enough memory for the structure.)
						
						DetailedInterfaceDataStructure.cbSize = (uint)Marshal.SizeOf(DetailedInterfaceDataStructure);
						
						//First call populates "StructureSize" with the correct value
						
						SetupDiGetDeviceInterfaceDetail(DeviceInfoTable, ref InterfaceDataStructure, IntPtr.Zero, 0, ref StructureSize, IntPtr.Zero);
						
						//Need to call SetupDiGetDeviceInterfaceDetail() again, this time specifying a pointer to a SP_DEVICE_INTERFACE_DETAIL_DATA buffer with the correct size of RAM allocated.
						//First need to allocate the unmanaged buffer and get a pointer to it.
						
						IntPtr pUnmanagedDetailedInterfaceDataStructure = IntPtr.Zero;  //Declare a pointer.
						
						pUnmanagedDetailedInterfaceDataStructure = Marshal.AllocHGlobal((int)StructureSize);    //Reserve some unmanaged memory for the structure.
						
						DetailedInterfaceDataStructure.cbSize = 6; //Initialize the cbSize parameter (4 bytes for DWORD + 2 bytes for unicode null terminator)
						
						Marshal.StructureToPtr(DetailedInterfaceDataStructure, pUnmanagedDetailedInterfaceDataStructure, false); //Copy managed structure contents into the unmanaged memory buffer.

						//Now call SetupDiGetDeviceInterfaceDetail() a second time to receive the device path in the structure at pUnmanagedDetailedInterfaceDataStructure.
						
						if (SetupDiGetDeviceInterfaceDetail(DeviceInfoTable, ref InterfaceDataStructure, pUnmanagedDetailedInterfaceDataStructure, StructureSize, IntPtr.Zero, IntPtr.Zero))
						{
							//Need to extract the path information from the unmanaged "structure".  The path starts at (pUnmanagedDetailedInterfaceDataStructure + sizeof(DWORD)).
							IntPtr pToDevicePath = new IntPtr((uint)pUnmanagedDetailedInterfaceDataStructure.ToInt32() + 4);  //Add 4 to the pointer (to get the pointer to point to the path, instead of the DWORD cbSize parameter)
							DevicePath = Marshal.PtrToStringUni(pToDevicePath); //Now copy the path information into the globally defined DevicePath String.
							
							//We now have the proper device path, and we can finally use the path to open I/O handle(s) to the device.
							SetupDiDestroyDeviceInfoList(DeviceInfoTable);	//Clean up the old structure we no longer need.
							Marshal.FreeHGlobal(pUnmanagedDetailedInterfaceDataStructure);  //No longer need this unmanaged SP_DEVICE_INTERFACE_DETAIL_DATA buffer.  We already extracted the path information.
							return true;    //Returning the device path in the global DevicePath String
						}
						else //Some unknown failure occurred
						{
							uint ErrorCode = (uint)Marshal.GetLastWin32Error();
							SetupDiDestroyDeviceInfoList(DeviceInfoTable);	//Clean up the old structure.
							Marshal.FreeHGlobal(pUnmanagedDetailedInterfaceDataStructure);  //No longer need this unmanaged SP_DEVICE_INTERFACE_DETAIL_DATA buffer.  We already extracted the path information.
							return false;    
						}
					}

					InterfaceIndex++;	
					//Keep looping until we either find a device with matching VID and PID, or until we run out of devices to check.
					//However, just in case some unexpected error occurs, keep track of the number of loops executed.
					//If the number of loops exceeds a very large number, exit anyway, to prevent inadvertent infinite looping.
					LoopCounter++;
					if(LoopCounter == 10000000)	//Surely there aren't more than 10 million devices attached to any forseeable PC...
					{
						return false;
					}
				}//end of while(true)
			}
			return false;
		}//end of try
		catch
		{
			//Something went wrong if PC gets here.  Maybe a Marshal.AllocHGlobal() failed due to insufficient resources or something.
			return false;	
		}
	}
	//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------
	//-------------------------------------------------------------------------------------------------------------------------------------------------------------------


	//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
	//-------------------------------------------------------BEGIN CUT AND PASTE BLOCK-----------------------------------------------------------------------------------
	//This is a callback function that gets called when a Windows message is received by the form.
	//We will receive various different types of messages, but the ones we really want to use are the WM_DEVICECHANGE messages.
	public void WndProc(ref Message m)
	{
		if (m.Msg == WM_DEVICECHANGE)
		{
			if (((int)m.WParam == DBT_DEVICEARRIVAL) || ((int)m.WParam == DBT_DEVICEREMOVEPENDING) || ((int)m.WParam == DBT_DEVICEREMOVECOMPLETE) || ((int)m.WParam == DBT_CONFIGCHANGED))
			{
				//WM_DEVICECHANGE messages by themselves are quite generic, and can be caused by a number of different
				//sources, not just your USB hardware device.  Therefore, must check to find out if any changes relavant
				//to your device (with known VID/PID) took place before doing any kind of opening or closing of handles/endpoints.
				//(the message could have been totally unrelated to your application/USB device)

				if (CheckIfPresentAndGetUSBDevicePath())	//Check and make sure at least one device with matching VID/PID is attached
				{
					//If executes to here, this means the device is currently attached and was found.
					//This code needs to decide however what to do, based on whether or not the device was previously known to be
					//attached or not.
					if ((AttachedState == false) || (AttachedButBroken == true))	//Check the previous attachment state
					{
						uint ErrorStatusWrite;
						uint ErrorStatusRead;

						//We obtained the proper device path (from CheckIfPresentAndGetUSBDevicePath() function call), and it
						//is now possible to open read and write handles to the device.
						WriteHandleToUSBDevice = CreateFile(DevicePath, GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, IntPtr.Zero, OPEN_EXISTING, 0, IntPtr.Zero);
						ErrorStatusWrite = (uint)Marshal.GetLastWin32Error();
						ReadHandleToUSBDevice = CreateFile(DevicePath, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, IntPtr.Zero, OPEN_EXISTING, 0, IntPtr.Zero);
						ErrorStatusRead = (uint)Marshal.GetLastWin32Error();

						if ((ErrorStatusWrite == ERROR_SUCCESS) && (ErrorStatusRead == ERROR_SUCCESS))
						{
							AttachedState = true;		//Let the rest of the PC application know the USB device is connected, and it is safe to read/write to it
							AttachedButBroken = false;
							
							// StatusBox_txtbx.Text = "Device Found, AttachedState = TRUE";
							StatusText = "Device Found, AttachedState = TRUE";
							
							
							NotifyAttachedStateChanged();
						}
						else //for some reason the device was physically plugged in, but one or both of the read/write handles didn't open successfully...
						{
							AttachedState = false;		//Let the rest of this application known not to read/write to the device.
							AttachedButBroken = true;	//Flag so that next time a WM_DEVICECHANGE message occurs, can retry to re-open read/write pipes
							if (ErrorStatusWrite == ERROR_SUCCESS)
								WriteHandleToUSBDevice.Close();
							if (ErrorStatusRead == ERROR_SUCCESS)
								ReadHandleToUSBDevice.Close();
							
							
							NotifyAttachedStateChanged();
						}
					}
					//else we did find the device, but AttachedState was already true.  In this case, don't do anything to the read/write handles,
					//since the WM_DEVICECHANGE message presumably wasn't caused by our USB device.  
				}
				else	//Device must not be connected (or not programmed with correct firmware)
				{
					if (AttachedState == true)		//If it is currently set to true, that means the device was just now disconnected
					{
						AttachedState = false;
						WriteHandleToUSBDevice.Close();
						ReadHandleToUSBDevice.Close();
					}
					
					AttachedState = false;
					AttachedButBroken = false;
					
					
					NotifyAttachedStateChanged();
				}
			}
		} //end of: if(m.Msg == WM_DEVICECHANGE)

		// base.WndProc(ref m);
	} //end of: WndProc() function
	//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------
	//-------------------------------------------------------------------------------------------------------------------------------------------------------------------



	private void ReadWriteThread_DoWork(object sender, DoWorkEventArgs e)
	{
		
		while(true)
		{
			try
			{
				if (AttachedState == true)	//Do not try to use the read/write handles unless the USB device is attached and ready
				{
					if( Connected == false )
					{
						Connected = true;
						Connect();
					}
					
					Work();
					
					
				}
				
				else
				{
					if( Connected == true )
					{
						Connected = false;
						Disconnect();
					}
					
					Thread.Sleep(5);	//Add a small delay.  Otherwise, this while(true) loop can execute very fast and cause 
										//high CPU utilization, with no particular benefit to the application.
				}
			}
			catch
			{
				//Exceptions can occur during the read or write operations.  For example,
				//exceptions may occur if for instance the USB device is physically unplugged
				//from the host while the above read/write functions are executing.

				//Don't need to do anything special in this case.  The application will automatically
				//re-establish communications based on the global AttachedState boolean variable used
				//in conjunction with the WM_DEVICECHANGE messages to dyanmically respond to Plug and Play
				//USB connection events.
			}

		} //end of while(true) loop
		//-------------------------------------------------------END CUT AND PASTE BLOCK-------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
	}
	
	public bool Connected = false;
	
	protected byte[] Out = new byte[ 65 ];
	protected byte[] In  = new byte[ 65 ];
	
	protected virtual void Connect() {}
	protected virtual void Disconnect() {}
	
	protected virtual void Work() {}
	
	
	protected bool Write( int size )
	{
		for ( int i = size; i < 65; i++ )  Out[ i ] = 0xFF;
		
		uint res_size = 0;
		
		return WriteFile( WriteHandleToUSBDevice, Out, 65, ref res_size, IntPtr.Zero);	//Blocking function, unless an "overlapped" structure is used
	}
	
	protected bool Read()
	{
		uint res_size = 0;
		
		return ReadFileManagedBuffer(ReadHandleToUSBDevice, In, 65, ref res_size, IntPtr.Zero);
	}

	//--------------------------------------------------------------------------------------------------------------------------
	//FUNCTION:	ReadFileManagedBuffer()
	//PURPOSE:	Wrapper function to call ReadFile()
	//
	//INPUT:	Uses managed versions of the same input parameters as ReadFile() uses.
	//
	//OUTPUT:	Returns boolean indicating if the function call was successful or not.
	//          Also returns data in the byte[] INBuffer, and the number of bytes read. 
	//
	//Notes:    Wrapper function used to call the ReadFile() function.  ReadFile() takes a pointer to an unmanaged buffer and deposits
	//          the bytes read into the buffer.  However, can't pass a pointer to a managed buffer directly to ReadFile().
	//          This ReadFileManagedBuffer() is a wrapper function to make it so application code can call ReadFile() easier
	//          by specifying a managed buffer.
	//--------------------------------------------------------------------------------------------------------------------------
	public unsafe bool ReadFileManagedBuffer(SafeFileHandle hFile, byte[] INBuffer, uint nNumberOfBytesToRead, ref uint lpNumberOfBytesRead, IntPtr lpOverlapped)
	{
		IntPtr pINBuffer = IntPtr.Zero;

		try
		{
			pINBuffer = Marshal.AllocHGlobal((int)nNumberOfBytesToRead);    //Allocate some unmanged RAM for the receive data buffer.

			if (ReadFile(hFile, pINBuffer, nNumberOfBytesToRead, ref lpNumberOfBytesRead, lpOverlapped))
			{
				Marshal.Copy(pINBuffer, INBuffer, 0, (int)lpNumberOfBytesRead);    //Copy over the data from unmanged memory into the managed byte[] INBuffer
				Marshal.FreeHGlobal(pINBuffer);
				return true;
			}
			else
			{
				Marshal.FreeHGlobal(pINBuffer);
				return false;
			}

		}
		catch
		{
			if (pINBuffer != IntPtr.Zero)
			{
				Marshal.FreeHGlobal(pINBuffer);
			}
			return false;
		}
	}
	
}
