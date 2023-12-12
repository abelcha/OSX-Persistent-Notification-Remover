tell application "System Events"
    tell application process "NotificationCenter"
        set firstWindow to window 1
        set windowChildren to entire contents of firstWindow
        set elementIndex to 0

        repeat with anElement in windowChildren
            set elementIndex to elementIndex + 1
            if name of anElement is "Background Items Added" ¬
                or name of anElement is "Login item Added" then
				    log "Pressing Element's parent : " & (name of anElement as string)
                    set parentElem to item (elementIndex - 1) of windowChildren
                    perform action "AXPress" of parentElem
            end if
        end repeat
    end tell
end tell
