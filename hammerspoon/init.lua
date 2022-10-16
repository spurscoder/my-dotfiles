hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W",
    function()
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 400
    f.y = max.y
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

    f.x = 0
    f.y = max.y
    f.w = max.w - f.x
    f.h = max.h
    win:setFrame(f, 0)

    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f, 0)

    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 0
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f, 0)

    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "O",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f, 0)

    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = 0
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f, 0)

    end
)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I",
    function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f, 0)

    end
)

