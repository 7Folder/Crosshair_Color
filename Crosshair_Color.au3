$GWactive=  WinGetTitle("[Active Window Name Here]")
WinMove($EUactive, "",0,0)
$size=WinGetClientSize ($GWactive)

#include <Misc.au3>

Local $hDLL = DllOpen("user32.dll") ; change to appropriate DLL for desired game.

if $size[0]=xxxx and $size[1]=xxxx Then ; you will have to change xxxx's to your screen resolution.
While 1

   If _IsPressed("06", $hDLL) Then ; 06 = mouse botton MB5.  change 06 to the key you want to press to active auto fire.
	  If WinActive($GWactive) Then ; makes sure game window is active

		 $clic2 = PixelSearch(xxxx, xxx, xxxx, xxx, #xxxxxx, 3, 3) ; change color as needed for your computer, 0x6F3830 is on my screen. The numbers before it are the start and stop locations for where the color is searched.
		  If IsArray($clic2) = 1 Then
			sleep(0)
			MouseClick("left") ; Change to whichever key would shoot your gun.
			sleep(10)
		 Endif

		 sleep(10)
	  EndIf
	  sleep(10)
   EndIf
   ; sleep (10)

WEnd
EndIF

DllClose($hDLL)