#include "system.h"

#include "usb.h"
#include "usb_device_hid.h"

#include "app_device_custom_hid.h"
#include "app_led_usb_status.h"

bool ReturnToBL = false;

void Chip_Init()
{
	
}


MAIN_RETURN main(void)
{
    SYSTEM_Initialize(SYSTEM_STATE_USB_START);

    USBDeviceInit();
    USBDeviceAttach();

    while(1)
    {
        SYSTEM_Tasks();

        #if defined(USB_POLLING)
            USBDeviceTasks();
        #endif

        //Application specific tasks
        APP_DeviceCustomHIDTasks();
		
		if( ReturnToBL )
		{
			USBDeviceDetach();
			
			//TRISA = 0xFF;
			//TRISB = 0xFF;
			//TRISC = 0xFF;
			//__delay_ms( 3000 );
			
			RESET();
		}

    }//end while
}//end main

