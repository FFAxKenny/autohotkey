; This script toggles power profiles in windows
; and displays a brief message box after switching
state:="power_saver"
#+b::
  if(state="power_saver"){
    Run, powercfg -s 381b4222-f694-41f0-9685-ff5bb260df2e
    state:="balanced"
    MsgBox, 0, Switched Profile, Power Mode: BALANCED, 0.6
  }
  else if (state="balanced"){

    Run, powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    state:="performance"
    MsgBox, 0, Switched Profile, Power Mode: PERFORMANCE, 0.6
  }
  else{
    Run, powercfg -s a1841308-3541-4fab-bc81-f71556f20b4a
    state:="power_saver"
    MsgBox, 0, Switched Profile, Power Mode: POWER SAVER, 0.6
  }
return
