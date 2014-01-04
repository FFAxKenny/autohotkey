;
;   This autohotkey script switches the current 
;   default audio device. Useful if you have an 
;   external USB DAC. 
;
;   Original source:
;       http://downloadsquad.switched.com/2010/06/16/windows-7-tip-how-to-change-the-default-audio-device-with-a-hot/
;
;

#+a::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down}
ControlGet, isEnabled, Enabled,,&Set Default
if(!isEnabled)
{
      ControlSend,SysListView321,{Down 2}
}
ControlClick,&Set Default
ControlClick,OK
WinWaitClose
SoundPlay, *-1
return
