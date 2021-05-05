local function toggleApplication(name)
    local app = hs.application.find(name)
    if not app or app:isHidden() then
      hs.application.launchOrFocus(name)
    elseif hs.application.frontmostApplication() ~= app then
      app:activate()
    else
      app:hide()
    end
  end
  
  hs.hotkey.bind({"control", "shift"}, "escape", function() toggleApplication("Activity Monitor") end)
  hs.hotkey.bind(mash, "b", function() toggleApplication("Firefox") end)
  hs.hotkey.bind(mash, "e", function() toggleApplication("Visual Studio Code") end)  
  hs.hotkey.bind(mash, "f", function() toggleApplication("Finder") end)
  hs.hotkey.bind(mash, "m", function() toggleApplication("Mail") end)
  hs.hotkey.bind(mash, "p", function() toggleApplication("System Preferences") end)
  hs.hotkey.bind(mash, "s", function() toggleApplication("Spotify") end)
  hs.hotkey.bind(mash, "t", function() toggleApplication("iTerm") end)
