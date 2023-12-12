
# Description:

For some apps "Background/Login item Added" Notification keeps popping when MBP wakes up. Even after app uninstall. 
I was able to reproduce it installing Spotify and put mac to sleep with `pmset sleepnow`

Performing a "AXPress" on the notification parent element solves this issue

# The Fix:

- Add your terminal app to `System Settings -> Privacy & Security -> Accessibility`
- Run the script:
```shell
curl -s https://raw.githubusercontent.com/abelcha/OSX-Persistent-Notification-Remover/main/NotifRemover.scpt | osascript
```




![enter image description here](https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTh4d21wNDVvdGRtNDF0a3VrZmQ3bzgzZ2ZrMXNmNm5qdjl3amdvNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/cLuHk47tgKwEbvxZm1/giphy.gif)
