; private function
IsMultimonitor()
{
   sysget, cnt, MonitorCount
   return cnt > 1
}

; Virtual desktop (Left Move)
>!Left::Send,#^{Left}
AppsKey & Left::Send,#^{Left}

; Virtual desktop (Right Move)
>!Right::Send,#^{Right}
AppsKey & Right::Send,#^{Right}

; Virtual desktop (Create)
>!Up::Send,#^d
AppsKey & Up::Send,#^d

; Virtual desktop (Delete)
AppsKey & Down::Send,#^{F4}
>!Down::Send,#^{F4}

; Move to next monitor (Left&Right)
>+Right::
    if IsMultimonitor()
    {
        Send,{RWin Down}{RShift Down}{Right}{RShift Up}{RWin Up}
    }
    else
    {
        Send,{LWin Down}{LCtrl Down}{LAlt Down}{Right}{LAlt Up}{LCtrl Up}{LWin Up}
    }
return

>+Left::
    if IsMultimonitor()
    {
        Send,{RWin Down}{RShift Down}{Left}{RShift Up}{RWin Up}
    }
    else
    {
        Send,{LWin Down}{LCtrl Down}{LAlt Down}{Left}{LAlt Up}{LCtrl Up}{LWin Up}
    }
return