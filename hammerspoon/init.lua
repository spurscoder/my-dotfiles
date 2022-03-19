hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W",
    function()
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 20
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x + 20
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 400
    f.y = 0
    f.w = max.w - f.x
    f.h = max.h
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 700
    f.y = 0
    f.w = max.w - f.x
    f.h = max.h
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 20
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x + 20
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 400
    f.y = 0
    f.w = max.w - f.x
    f.h = max.h
    win:setFrame(f, 0)
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 700
    f.y = 0
    f.w = max.w - f.x
    f.h = max.h
    win:setFrame(f, 0)
    end
)
