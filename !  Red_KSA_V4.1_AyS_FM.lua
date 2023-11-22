--[[
                                              .
                                              
                                              
                                                                                      

                                              .

                        d8888           .d8888b.    888  888    .d8888b.   .d8888b. 8888888888  .d8888b.  
                      d88888          d88P  Y88b   888  888   d88P  Y88b d88P  Y88b      d88P d88P  Y88b 
                     d88P888          Y88b.      888888888888 888    888 888    888     d88P         888 
                    d88P 888 888  888  "Y888b.     888  888   Y88b. d888 Y88b. d888    d88P        .d88P 
                   d88P  888 888  888     "Y88b.   888  888    "Y888P888  "Y888P888 88888888   .od888P"  
                  d88P   888 888  888       "888 888888888888        888        888  d88P     d88P"      
                 d8888888888 Y88b 888 Y88b  d88P   888  888   Y88b  d88P Y88b  d88P d88P      888"       
                d88P     888  "Y88888  "Y8888P"    888  888    "Y8888P"   "Y8888P" d88P       888888888  
                                  888                                                                    
                             Y8b d88P                                                                    
                              "Y88P"                                                                     
                                                !Dev By : AyS#9972

                                                    AyS Team

                                                 discord.gg/G7zGxH27QE

--]]
--[[
local menuPassword = "AyS" -- كلمة المرور الخاصة بك
local enteredPassword = false
local browserOpened = false

-- تابع لعرض نافذة إدخال كلمة المرور
function DisplayPasswordPrompt()
    local passEntered = nil

    AddTextEntry('FMMC_KEY_TIP1', "Enter Password:")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", "", "", "", "", 30)

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        passEntered = GetOnscreenKeyboardResult()
        Wait(500)
    else
        passEntered = nil
        Wait(500)
    end

    return passEntered
end

-- تابع لعرض نص على الشاشة بشكل دائم
Citizen.CreateThread(function()
    while not enteredPassword do
        local password = DisplayPasswordPrompt()

        if password == menuPassword then
            enteredPassword = true


            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(0)
                    -- رسالة على الشاشة تحتوي على الرابط
                    SetTextFont(0)
                    SetTextProportional(1)
                    SetTextScale(0.0, 0.5)
                    SetTextColour(255, 255, 255, 255)
                    SetTextDropshadow(0, 0, 0, 0, 255)
                    SetTextEdge(2, 0, 0, 0, 150)
                    SetTextDropShadow()
                    SetTextOutline()
                    SetTextEntry("STRING")
                    AddTextComponentString("انضم إلى Discord")
                    DrawText(0.5, 0.5)
            
                    -- فتح المتصفح بعد إدخال كلمة المرور بشكل صحيح
                    if not browserOpened then
                        browserOpened = true
                        SetNotificationTextEntry("STRING")
                        AddTextComponentString("https://www.google.com")
                        DrawNotification(false, false)
                    end
                end
            end)
        else
            ShowNotification("~r~Error: Incorrect password. Try again.")
        end
        Wait(0)
    end
end)
   --]]     

-- راح تلقى جميع الأزرار اللي تقدر تحطها تحت

menuKeybind = "F6" -- (زر فتح المنيو)


S6oHandcuffsKeybind = "F10" -- (اختصار فك الكلبشة)

S6onoclipKeybind = "=" -- ( زر اختصار الطيران)

--[[
  (;   تنبية ! : في حال كنت تبي تطفي الأختصارات اتركها فاضيه مثل كذا "" وشكرا

  في بعض الأحيان تعلق الأختصارات معك كل اللي عليك تطفي المنيو وتشغلة أو تنتقال بدون أختصارات من قائمةاللي بالمنيو
]]
--                                                           [ {الإنتقالات} ]
S6oTPKeybind = "N9" -- (اختصار الإنتقال الى نقطة)

--                                          [ {الموقع الأول} ]

TPName1 = "Mlakeya" -- (اسم الإنتقال ب المنيو في حال كنت تبي تغيره)

S6oTP1 = "N9" -- (اختصار الإنتقال الى الموقع الأول)

	            --{x,y,zاحداثيات السجن في حال كنت حاب تغيرها }
				S6oTP1X = 155.948 -- X
				S6oTP1Y = -1000.25 -- Y
				S6oTP1Z = 29.357 -- Z
--                                          [ {الموقع الثاني} ]

S6oTPKeybindSjn = "N9" -- (اختصار الإنتقال الى الموقع الثاني)

TPName2 = "Sjn" -- (اسم الإنتقال ب المنيو في حال كنت تبي تغيره)

            --{x,y,zاحداثيات السجن في حال كنت حاب تغيرها }
		    	S6oTP2X = 1980.239 -- X
		      	S6oTP2Y = 2950.373 -- Y
		    	S6oTP2Z = -84.793 -- Z
--                                          [ {الموقع الثالث} ]

TPName3 = "Mdenh1" -- (اسم الإنتقال ب المنيو في حال كنت تبي تغيره)

S6oTPKeybindM1 = "N9" -- (اختصار الإنتقال الى الموقع الثالث)

            --{x,y,zاحداثيات الموقع في حال كنت حاب تغيرها }
			S6oTP3X = 340.119 -- X
			S6oTP3Y = -1388.568 -- Y
		    S6oTP3Z = 32.509 -- Z
			

--                                          [ {الموقع الرابع} ]

TPName4 = "Mdenh2" -- (اسم الإنتقال ب المنيو في حال كنت تبي تغيره)

S6oTPKeybindM2 = "N9" -- (اختصار الإنتقال الى الموقع الرابع)

            --{x,y,zاحداثيات الموقع في حال كنت حاب تغيرها }
			S6oTP4X = 1841.468 -- X
			S6oTP4Y = 3668.885 -- Y
		    S6oTP4Z = 33.68 -- Z

--                                          [ {الموقع الخامس} ]

TPName5 = "Mdenh3" -- (اسم الإنتقال ب المنيو في حال كنت تبي تغيره)

S6oTPKeybindM3 = "N9" -- (اختصار الإنتقال الى الموقع الخامس)


            --{x,y,zاحداثيات الموقع في حال كنت حاب تغيرها }
			S6oTP5X = -234.955 -- X
			S6oTP5Y = 6317.73 -- Y
		    S6oTP5Z = 31.499 -- Z
--[[                                                                          {↷ الأزرار اللي تقدر تحطها بالإختصارات}

 Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
	["MOUSE1"] = 24
  } 



                                                                        خلك بعييييد حبك يزيد    
    ]]
AyS9 = { } AyS9.debug = false local menus = { } local keys = { up = 172, down = 173, left = 174, right = 175, select = 176, back = 177 } local optionCount = 0 local currentKey = nil local currentMenu = nil local titleHeight = 0.11 local titleXOffset = 0.5 local titleSpacing = 2 local titleYOffset = 0.03 local titleScale = 1.0 local buttonHeight = 0.038 local buttonFont = 0 local buttonScale = 0.365 local buttonTextXOffset = 0.005 local buttonTextYOffset = 0.005 local function debugPrint(text) if AyS9.debug then Citizen.Trace('[AyS9] '..tostring(text)) end end local function setMenuProperty(id, property, value) if id and menus[id] then menus[id][property] = value debugPrint(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }') end end local function isMenuVisible(id) if id and menus[id] then return menus[id].visible else return false end end local function setMenuVisible(id, visible, holdCurrent) if id and menus[id] then setMenuProperty(id, 'visible', visible) if not holdCurrent and menus[id] then setMenuProperty(id, 'currentOption', 1) end if visible then if id ~= currentMenu and isMenuVisible(currentMenu) then setMenuVisible(currentMenu, false) end currentMenu = id end end end local function drawText(text, x, y, font, color, scale, center, shadow, alignRight) SetTextColour(color.r, color.g, color.b, color.a) RegisterFontFile('A9eelsh')
        fontId = RegisterFontId('A9eelsh')
        SetTextFont(fontId) SetTextScale(scale, scale) if shadow then SetTextDropShadow(2, 2, 0, 0, 0) end if menus[currentMenu] then if center then SetTextCentre(center) elseif alignRight then SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menus[currentMenu].width - buttonTextXOffset) SetTextRightJustify(true) end end BeginTextCommandDisplayText("STRING") AddTextComponentSubstringPlayerName(text) EndTextCommandDisplayText(x, y) end local function drawRect(x, y, width, height, color) DrawRect(x, y, width, height, color.r, color.g, color.b, color.a) end local function drawTitle() if menus[currentMenu] then local x = menus[currentMenu].x + menus[currentMenu].width / 2 local xText = menus[currentMenu].x + menus[currentMenu].width * titleXOffset  local y = menus[currentMenu].y + titleHeight * 1/titleSpacing if menus[currentMenu].titleBackgroundSprite then DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0., 255, 255, 255, 255) else drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor) end drawText(menus[currentMenu].title, xText, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true) end end local function drawSubTitle() if menus[currentMenu] then local x = menus[currentMenu].x + menus[currentMenu].width / 2 local y = menus[currentMenu].y + titleHeight + buttonHeight / 2 local subTitleColor = { r = menus[currentMenu].titleBackgroundColor.r, g = menus[currentMenu].titleBackgroundColor.g, b = menus[currentMenu].titleBackgroundColor.b, a = 255 } drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor) drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false) if optionCount > menus[currentMenu].maxOptionCount then drawText(tostring(menus[currentMenu].currentOption)..' / '..tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true) end end end local function drawButton(text, subText) local x = menus[currentMenu].x + menus[currentMenu].width / 2 local multiplier = nil if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then multiplier = optionCount elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount) end if multiplier then local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2 local backgroundColor = nil local textColor = nil local subTextColor = nil local shadow = false if menus[currentMenu].currentOption == optionCount then backgroundColor = menus[currentMenu].menuFocusBackgroundColor textColor = menus[currentMenu].menuFocusTextColor subTextColor = menus[currentMenu].menuFocusTextColor else backgroundColor = menus[currentMenu].menuBackgroundColor textColor = menus[currentMenu].menuTextColor subTextColor = menus[currentMenu].menuSubTextColor shadow = true end drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor) drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow) if subText then drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true) end end end function AyS9.CreateMenu(id, title) menus[id] = { } menus[id].title = title menus[id].subTitle = 'INTERACTION MENU' menus[id].visible = false menus[id].previousMenu = nil menus[id].aboutToBeClosed = false menus[id].x = 0.0175 menus[id].y = 0.025 menus[id].width = 0.23 menus[id].currentOption = 1 menus[id].maxOptionCount = 10 menus[id].titleFont = 1 menus[id].titleColor = { r = 0, g = 0, b = 0, a = 255 } menus[id].titleBackgroundColor = { r = 245, g = 127, b = 23, a = 255 } menus[id].titleBackgroundSprite = nil menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 } menus[id].menuSubTextColor = { r = 189, g = 189, b = 189, a = 255 } menus[id].menuFocusTextColor = { r = 0, g = 0, b = 0, a = 255 } menus[id].menuFocusBackgroundColor = { r = 245, g = 245, b = 245, a = 255 } menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 160 } menus[id].subTitleBackgroundColor = { r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255 } menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } debugPrint(tostring(id)..' menu created') end function AyS9.CreateSubMenu(id, parent, subTitle) if menus[parent] then AyS9.CreateMenu(id, menus[parent].title) if subTitle then setMenuProperty(id, 'subTitle', string.upper(subTitle)) else setMenuProperty(id, 'subTitle', string.upper(menus[parent].subTitle)) end setMenuProperty(id, 'previousMenu', parent) setMenuProperty(id, 'x', menus[parent].x) setMenuProperty(id, 'y', menus[parent].y) setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount) setMenuProperty(id, 'titleFont', menus[parent].titleFont) setMenuProperty(id, 'titleColor', menus[parent].titleColor) setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor) setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite) setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor) setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor) setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor) setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor) setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor) setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor) else debugPrint('Failed to create '..tostring(id)..' submenu: '..tostring(parent)..' parent menu doesn\'t exist') end end function AyS9.CurrentMenu() return currentMenu end function AyS9.OpenMenu(id) if id and menus[id] then PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) setMenuVisible(id, true) debugPrint(tostring(id)..' menu opened') else debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist') end end function AyS9.IsMenuOpened(id) return isMenuVisible(id) end function AyS9.IsAnyMenuOpened() for id, _ in pairs(menus) do if isMenuVisible(id) then return true end end return false end function AyS9.IsMenuAboutToBeClosed() if menus[currentMenu] then return menus[currentMenu].aboutToBeClosed else return false end end function AyS9.CloseMenu() if menus[currentMenu] then if menus[currentMenu].aboutToBeClosed then menus[currentMenu].aboutToBeClosed = false setMenuVisible(currentMenu, false) debugPrint(tostring(currentMenu)..' menu closed') PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) optionCount = 0 currentMenu = nil currentKey = nil else menus[currentMenu].aboutToBeClosed = true debugPrint(tostring(currentMenu)..' menu about to be closed') end end end function AyS9.Button(text, subText) local buttonText = text if subText then buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }' end if menus[currentMenu] then optionCount = optionCount + 1 local isCurrent = menus[currentMenu].currentOption == optionCount drawButton(text, subText) if isCurrent then if currentKey == keys.select then PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true) debugPrint(buttonText..' button pressed') return true elseif currentKey == keys.left or currentKey == keys.right then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) end end return false else debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist') return false end end function AyS9.MenuButton(text, id) if menus[id] then if AyS9.Button(text) then setMenuVisible(currentMenu, false) setMenuVisible(id, true, true) return true end else debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist') end return false end function AyS9.CheckBox(text, checked, callback) if AyS9.Button(text, checked and 'On' or 'Off') then checked = not checked debugPrint(tostring(text)..' checkbox changed to '..tostring(checked)) if callback then callback(checked) end return true end return false end function AyS9.ComboBox(text, items, currentIndex, selectedIndex, callback) local itemsCount = #items local selectedItem = items[currentIndex] local isCurrent = menus[currentMenu].currentOption == (optionCount + 1) if itemsCount > 1 and isCurrent then selectedItem = tostring(selectedItem) end if AyS9.Button(text, selectedItem) then selectedIndex = currentIndex callback(currentIndex, selectedIndex) return true elseif isCurrent then if currentKey == keys.left then if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end elseif currentKey == keys.right then if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end end else currentIndex = selectedIndex end callback(currentIndex, selectedIndex) return false end function AyS9.Display() if isMenuVisible(currentMenu) then if menus[currentMenu].aboutToBeClosed then AyS9.CloseMenu() else ClearAllHelpMessages() drawTitle() drawSubTitle() currentKey = nil if IsControlJustReleased(1, keys.down) then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) if menus[currentMenu].currentOption < optionCount then menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1 else menus[currentMenu].currentOption = 1 end elseif IsControlJustReleased(1, keys.up) then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) if menus[currentMenu].currentOption > 1 then menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1 else menus[currentMenu].currentOption = optionCount end elseif IsControlJustReleased(1, keys.left) then currentKey = keys.left elseif IsControlJustReleased(1, keys.right) then currentKey = keys.right elseif IsControlJustReleased(1, keys.select) then currentKey = keys.select elseif IsControlJustReleased(1, keys.back) then if menus[menus[currentMenu].previousMenu] then PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) setMenuVisible(menus[currentMenu].previousMenu, true) else AyS9.CloseMenu() end end optionCount = 0 end end end function AyS9.SetMenuWidth(id, width) setMenuProperty(id, 'width', width) end function AyS9.SetMenuX(id, x) setMenuProperty(id, 'x', x) end function AyS9.SetMenuY(id, y) setMenuProperty(id, 'y', y) end function AyS9.SetMenuMaxOptionCountOnScreen(id, count) setMenuProperty(id, 'maxOptionCount', count) end function AyS9.SetTitle(id, title) setMenuProperty(id, 'title', title) end function AyS9.SetTitleColor(id, r, g, b, a) setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a }) end function AyS9.SetTitleBackgroundColor(id, r, g, b, a) setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a }) end function AyS9.SetTitleBackgroundSprite(id, textureDict, textureName) RequestStreamedTextureDict(textureDict) setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName }) end function AyS9.SetSubTitle(id, text) setMenuProperty(id, 'subTitle', string.upper(text)) end function AyS9.SetMenuBackgroundColor(id, r, g, b, a) setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a }) end function AyS9.SetMenuTextColor(id, r, g, b, a) setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a }) end function AyS9.SetMenuSubTextColor(id, r, g, b, a) setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a }) end function AyS9.SetMenuFocusColor(id, r, g, b, a) setMenuProperty(id, 'menuFocusColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a }) end function AyS9.SetMenuButtonPressedSound(id, name, set) setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set }) end Tools = {} local IDGenerator = {} function Tools.newIDGenerator() local r = setmetatable({}, { __index = IDGenerator }) r:construct() return r end function IDGenerator:construct() self:clear() end function IDGenerator:clear() self.max = 0 self.ids = {} end function IDGenerator:gen() if #self.ids > 0 then return table.remove(self.ids) else local r = self.max self.max = self.max+1 return r end end function IDGenerator:free(id) table.insert(self.ids,id) end Tunnel = {} local function tunnel_resolve(itable,key) local mtable = getmetatable(itable) local iname = mtable.name local ids = mtable.tunnel_ids local callbacks = mtable.tunnel_callbacks local identifier = mtable.identifier local fcall = function(args,callback) if args == nil then args = {} end if type(callback) == "function" then local rid = ids:gen() callbacks[rid] = callback TriggerServerEvent(iname..":tunnel_req",key,args,identifier,rid) else TriggerServerEvent(iname..":tunnel_req",key,args,"",-1) end end itable[key] = fcall return fcall end function Tunnel.bindInterface(name,interface) RegisterNetEvent(name..":tunnel_req") AddEventHandler(name..":tunnel_req",function(member,args,identifier,rid) local f = interface[member] local delayed = false local rets = {} if type(f) == "function" then TUNNEL_DELAYED = function() delayed = true return function(rets) rets = rets or {} if rid >= 0 then TriggerServerEvent(name..":"..identifier..":tunnel_res",rid,rets) end end end rets = {f(table.unpack(args))} end if not delayed and rid >= 0 then TriggerServerEvent(name..":"..identifier..":tunnel_res",rid,rets) end end) end function Tunnel.getInterface(name,identifier) local ids = Tools.newIDGenerator() local callbacks = {} local r = setmetatable({},{ __index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier }) RegisterNetEvent(name..":"..identifier..":tunnel_res") AddEventHandler(name..":"..identifier..":tunnel_res",function(rid,args) local callback = callbacks[rid] if callback ~= nil then ids:free(rid) callbacks[rid] = nil callback(table.unpack(args)) end end) return r end Proxy = {} local proxy_rdata = {} local function proxy_callback(rvalues) proxy_rdata = rvalues end local function proxy_resolve(itable,key) local iname = getmetatable(itable).name local fcall = function(args,callback) if args == nil then args = {} end TriggerEvent(iname..":proxy",key,args,proxy_callback) return table.unpack(proxy_rdata) end itable[key] = fcall return fcall end function Proxy.addInterface(name, itable) AddEventHandler(name..":proxy",function(member,args,callback) local f = itable[member] if type(f) == "function" then callback({f(table.unpack(args))}) else end end) end function Proxy.getInterface(name) local r = setmetatable({},{ __index = proxy_resolve, name = name }) return r end


version = "93"
S6oxmenuName = "                            KSA Mini Menu" -- (╪º╪│┘à ╪º┘ä┘à┘å┘è┘ê ┘ü┘è ╪¡╪º┘ä ┘â┘å╪¬ ╪¬╪¿┘è ╪¬╪║┘è╪▒╪⌐)
theme = "infamous"
themes = {"infamous", "basic", "dark", "skid"}
mpMessage = false
startMessage = "~v~ﻮﻴﻨﻤﻟﺍ ﻲﻓ ﻙﺎﻴﺣ~b~ "..GetPlayerName(PlayerId())..""
subMessage = "~n~ ~w~ﻂﻐﺿﺍ ~b~"..menuKeybind.."~w~ ﺔﻤﺋﺎﻘﻟﺍ ﺢﺘﻔﻟ"
motd = "~r~! Dev By : ~b~dis : ays9 ~n~ ~b~Discord.gg/***"

-- Add any new menus to this list (for theme changer/textures)
menulist = {

-- MAIN SUBMENUS
'skid',
'misc',
'custom',
'Dev',
'teleport',
-- MISC SUBMENUS
'credits',

-- CUSTOM SUBMENUS
'Money',
'Items',
'esx',
'vrp',
'Otherx',
"Skins",
'Cars',
'other'

}

local Keys = {
        ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
        ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
        ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
        ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
        ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
        ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
        ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
        ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
        ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
        ["MOUSE1"] = 24
  }
-- END CONFIG


-- Noclip Speed Options
NoclipSpeedOps = {1, 5, 10, 20, 30}
-- Default Noclip Speed
NoclipSpeed = 1
oldSpeed = nil

-- Forcefield Radius Options
ForcefieldRadiusOps = {5.0, 10.0, 15.0, 20.0, 50.0}
-- Default Forcefield Radius
ForcefieldRadius = 5.0

-- Object Rotation Options
RotationOps = {0, 45, 90, 135, 180}
-- Default Rotation
ObjRotation = 90

-- Gravity options
GravityOps = {0.0, 5.0, 50.0, 100.0, 200.0, 500.0, 1000.0, 9999.9}
-- Default
GravAmount = 50.0

-- Clothing Slots
ClothingSlots = {1, 2, 3, 4, 5}

-- Ped Attack Types
PedAttackOps = {"All Weapons", "Melee Weapons", "Pistols", "Heavy Weapons"}
--Default
PedAttackType = 1

-- Objects to spawn
-- https://cdn.rage.mp/public/odb/index.html

-- END VEHICLES LISTS

-- Get ESX shared object
ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent("esx:getSharedObject", function(c) ESX = c end)
        Citizen.Wait(1000)
    end
end)

-- Get vRP object
vRP = {}
vRP = Proxy.getInterface("vRP")

-- Adapted from Force Mod by Ideo - https://www.gta5-mods.com/scripts/force-mod
local function ForceMod()
        ForceTog = not ForceTog

        if ForceTog then

        Citizen.CreateThread(function()
        ShowInfo("Force ~g~ENABLED ~r~\nPress E to use")

        local ForceKey = Keys["E"]
        local Force = 0.5
        local KeyPressed = false
        local KeyTimer = 0
        local KeyDelay = 15
        local ForceEnabled = false
        local StartPush = false

        function forcetick()

        if (KeyPressed) then
                KeyTimer = KeyTimer + 1
                if(KeyTimer >= KeyDelay) then
                        KeyTimer = 0
                        KeyPressed = false
                end
        end

    FiveM.SetVehicleProperties = function(vehicle, props)
        SetVehicleModKit(vehicle, 0)

        if props.plate ~= nil then SetVehicleNumberPlateText(vehicle, props.plate) end

        if props.plateIndex ~= nil then SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex) end
        end
        function MaxOut(veh)
                SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5)
        end
        function engine1(veh)
                SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5)
        end
        if IsControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                KeyPressed = true
                ForceEnabled = true
        end

        if (StartPush) then

                StartPush = false
                local pid = PlayerPedId()
                local CamRot = GetGameplayCamRot(2)

                local force = 5

                local Fx = -( math.sin(math.rad(CamRot.z)) * force*10 )
                local Fy = ( math.cos(math.rad(CamRot.z)) * force*10 )
                local Fz = force * (CamRot.x*0.2)

                local PlayerVeh = GetVehiclePedIsIn(pid, false)

                for k in EnumerateVehicles() do
                        SetEntityInvincible(k, false)
                        if IsEntityOnScreen(k) and k ~= PlayerVeh then
                                ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, true, false, true, true, true, true)
                        end
                end

                for k in EnumeratePeds() do
                        if IsEntityOnScreen(k) and k ~= pid then
                                ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, true, false, true, true, true, true)
                        end
                end

        end


        if IsControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                KeyPressed = true
                StartPush = true
                ForceEnabled = false
        end

        if (ForceEnabled) then
                local pid = PlayerPedId()
                local PlayerVeh = GetVehiclePedIsIn(pid, false)

                Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

                DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, false, true, 2, nil, nil, false)

                for k in EnumerateVehicles() do
                        SetEntityInvincible(k, true)
                        if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                                RequestControlOnce(k)
                                FreezeEntityPosition(k, false)
                                Oscillate(k, Markerloc, 0.5, 0.3)
                        end
                end

                for k in EnumeratePeds() do
                        if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                                RequestControlOnce(k)
                                SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
                                FreezeEntityPosition(k, false)
                                Oscillate(k, Markerloc, 0.5, 0.3)
                        end
                end

        end

        end

        while ForceTog do forcetick() Wait(0) end
end)
else ShowInfo("Force ~r~Disabled") end

end

-- Some functions adapted from MenyooSP (Massive Headache) - https://github.com/MAFINS/MenyooSP
-- MENYOO/CAMERA FUNCTIONS
function GetSeatPedIsIn(ped)
        if not IsPedInAnyVehicle(ped, false) then return
        else
                veh = GetVehiclePedIsIn(ped)
                for i=0, GetVehicleMaxNumberOfPassengers(veh) do
                        if GetPedInVehicleSeat(veh) then return i end
                end
        end
end

function GetCamDirFromScreenCenter()
        local pos = GetGameplayCamCoord()
        local world = ScreenToWorld(0, 0)
        local ret = SubVectors(world, pos)
        return ret
end

function ScreenToWorld(screenCoord)
        local camRot = GetGameplayCamRot(2)
        local camPos = GetGameplayCamCoord()

        local vect2x = 0.0
        local vect2y = 0.0
        local vect21y = 0.0
        local vect21x = 0.0
        local direction = RotationToDirection(camRot)
        local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
        local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
        local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)

        local direction1 = RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32)
        local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31)
        local radians = -(math.rad(camRot.y))

        vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
        vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))

        local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34)
        if not case1 then
                vect2x = x1
                vect2y = y1
                return camPos + (direction * 10.0)
        end

        local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0))
        if not case2 then
                vect21x = x2
                vect21y = y2
                return camPos + (direction * 10.0)
        end

        if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
                return camPos + (direction * 10.0)
        end

        local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
        local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
        return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)

end

function WorldToScreenRel(worldCoords)
        local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z)
        if not check then
                return false
        end

        screenCoordsx = (x - 0.5) * 2.0
        screenCoordsy = (y - 0.5) * 2.0
        return true, screenCoordsx, screenCoordsy
end

function RotationToDirection(rotation)
        local retz = math.rad(rotation.z)
        local retx = math.rad(rotation.x)
        local absx = math.abs(math.cos(retx))
        return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

local function GetCamDirection()
  local heading = GetGameplayCamRelativeHeading()+GetEntityHeading(GetPlayerPed(-1))
  local pitch = GetGameplayCamRelativePitch()

  local x = -math.sin(heading*math.pi/180.0)
  local y = math.cos(heading*math.pi/180.0)
  local z = math.sin(pitch*math.pi/180.0)

  local len = math.sqrt(x*x+y*y+z*z)
  if len ~= 0 then
    x = x/len
    y = y/len
    z = z/len
  end

  return x,y,z
end

function DrawTxt(text, x, y, scale, size)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(scale, size)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

local function GetKeyboardInput(text)
        if not text then text = "Input" end
    DisplayOnscreenKeyboard(0, "", "", "", "", "", "", 30)
    while (UpdateOnscreenKeyboard() == 0) do
                DrawTxt(text, 0.32, 0.403, 0.0, 0.4)
        DisableAllControlActions(0)

        if IsDisabledControlPressed(0, Keys["ESC"]) then
                        ShowInfo("~r~Error : ~w~Operation Canceled~n~If the menu is closed, re-inject the menu")
                        return "" end
        Wait(0)
    end
    if (GetOnscreenKeyboardResult()) then
        local result = GetOnscreenKeyboardResult()
        Wait(0)
        return result
    end
end

-- Teleport
function TeleportToCoords()
    local x = GetKeyboardInput("Enter X Coordinates", "", 100)
    local y = GetKeyboardInput("Enter Y Coordinates", "", 100)
    local z = GetKeyboardInput("Enter Z Coordinates", "", 100)
    local entity
    if x ~= "" and y ~= "" and z ~= "" then
        if IsPedInAnyVehicle(GetPlayerPed(-1),0) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1),0),-1)==GetPlayerPed(-1) then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1),0)
        else
            entity = PlayerPedId()
        end
        if entity then
            SetEntityCoords(entity, x + 0.5, y + 0.5, z + 0.5, 1,0,0,1)
        end
    else
        ShowInfo("~r~Invalid Coordinates!")
    end
end


local function Mlakeya()
        local MlakeyaX = S6oTP1X -- X
        local MlakeyaY = S6oTP1Y -- Y
        local MlakeyaZ = S6oTP1Z -- Z
    if MlakeyaX ~= '' and MlakeyaY ~= '' and MlakeyaZ ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, MlakeyaX + 0.5, MlakeyaY + 0.5, MlakeyaZ + 0.5, 1, 0, 0, 1)
        end
    end

end

local function sjn()
        local sjnX = S6oTP2X -- X
        local sjnY = S6oTP2Y -- Y
        local sjnZ = S6oTP2Z -- Z
    if sjnX ~= '' and sjnY ~= '' and sjnZ ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, sjnX + 0.5, sjnY + 0.5, sjnZ + 0.5, 1, 0, 0, 1)
        end
    end

end

local function Mdenh1()
        local Mdenh1X = S6oTP3X -- X
        local Mdenh1Y = S6oTP3Y -- Y
        local Mdenh1Z = S6oTP3Z -- Z
    if Mdenh1X ~= '' and Mdenh1Y ~= '' and Mdenh1Z ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, Mdenh1X + 0.5, Mdenh1Y + 0.5, Mdenh1Z + 0.5, 1, 0, 0, 1)
        end
    end

end

local function Mdenh2()
        local Mdenh2X = S6oTP4X -- X
        local Mdenh2Y = S6oTP4Y -- Y
        local Mdenh2Z = S6oTP4Z -- Z
    if Mdenh2X ~= '' and Mdenh2Y ~= '' and Mdenh2Z ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, Mdenh2X + 0.5, Mdenh2Y + 0.5, Mdenh2Z + 0.5, 1, 0, 0, 1)
        end
    end

end

local function Mdenh3()
        local Mdenh3X = S6oTP5X -- X
        local Mdenh3Y = S6oTP5Y -- Y
        local Mdenh3Z = S6oTP5Z -- Z
    if Mdenh3X ~= '' and Mdenh3Y ~= '' and Mdenh3Z ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, Mdenh3X + 0.5, Mdenh3Y + 0.5, Mdenh3Z + 0.5, 1, 0, 0, 1)
        end
    end

end

-- MENYOO/ENTITY FUNCTIONS

function ApplyForce(entity, direction)
        ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
end

function RequestControlOnce(entity)
        if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
                return true
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
        return NetworkRequestControlOfEntity(entity)
end

function RequestControl(entity)
        Citizen.CreateThread(function()
        local tick = 0
        while not RequestControlOnce(entity) and tick <= 12 do
                tick = tick+1
                Wait(0)
        end
        return tick <= 12
        end)
end

function Oscillate(entity, position, angleFreq, dampRatio)
        local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq*angleFreq))
        local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
        local targetPos = SubVectors(pos1, pos2)

        ApplyForce(entity, targetPos)
end

-- END MENYOO/ENTITY FUNCTIONS

-- DRAWING FUNCTIONS

function ShowMPMessage(message, subtitle, ms)
        Citizen.CreateThread(function()
                Citizen.Wait(0)
                function Initialize(scaleform)
                                local scaleform = RequestScaleformMovie(scaleform)
                                while not HasScaleformMovieLoaded(scaleform) do
                                                Citizen.Wait(0)
                                end
                                PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
                                PushScaleformMovieFunctionParameterString(message)
                                PushScaleformMovieFunctionParameterString(subtitle)
                                PopScaleformMovieFunctionVoid()
                                Citizen.SetTimeout(6500, function()
                                                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                                                PushScaleformMovieFunctionParameterInt(1)
                                                PushScaleformMovieFunctionParameterFloat(0.33)
                                                PopScaleformMovieFunctionVoid()
                                                Citizen.SetTimeout(3000, function() EndScaleformMovieMethod() end)
                                end)
                                return scaleform
                end

                scaleform = Initialize("mp_big_message_freemode")

                while true do
                        Citizen.Wait(0)
                        DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 150, 0)
                end
        end)
end

function ShowInfo(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(true, false)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

-- END DRAWING FUNCTIONS

-- UTILITY FUNCTIONS

local entityEnumerator = {
  __gc = function(enum)
    if enum.destructor and enum.handle then
      enum.destructor(enum.handle)
    end
    enum.destructor = nil
    enum.handle = nil
  end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
  return coroutine.wrap(function()
    local iter, id = initFunc()
    if not id or id == 0 then
      disposeFunc(iter)
      return
    end

    local enum = {handle = iter, destructor = disposeFunc}
    setmetatable(enum, entityEnumerator)

    local next = true
    repeat
      coroutine.yield(id)
      next, id = moveFunc(iter)
    until not next

    enum.destructor, enum.handle = nil, nil
    disposeFunc(iter)
  end)
end

function EnumerateObjects()
  return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
  return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
  return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
  return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

function AddVectors(vect1, vect2)
        return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
end

function SubVectors(vect1, vect2)
        return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
end

function ScaleVector(vect, mult)
        return vector3(vect.x*mult, vect.y*mult, vect.z*mult)
end

-- END UTILITY FUNCTIONS

-- MENU FUNCTIONS

local function SpectatePlayer(id)
        spectating = not spectating
        local player = GetPlayerPed(id)
        if spectating then
                RequestCollisionAtCoord(GetEntityCoords(player))
                NetworkSetInSpectatorMode(true, player)
        else
                RequestCollisionAtCoord(GetEntityCoords(player))
                NetworkSetInSpectatorMode(false, player)
        end
end

local function ExplodePlayer(target)
        local ped = GetPlayerPed(target)
        local coords = GetEntityCoords(ped)
        AddExplosion(coords.x+1, coords.y+1, coords.z+1, 4, 100.0, true, false, 0.0)
end

local function ExplodeAll(self)
        local plist = GetActivePlayers()
        for i=0, #plist do
                if not self and i == PlayerId() then i=i+1 end
                ExplodePlayer(i)
        end
end

-- Thanks to Fallen#0811 for the idea
local function PedAttack(target, attackType)
        local coords = GetEntityCoords(GetPlayerPed(target))

        if attackType == 1 then weparray = allweapons
        elseif attackType == 2 then weparray = meleeweapons
        elseif attackType == 3 then weparray = pistolweapons
        elseif attackType == 4 then weparray = heavyweapons
        end

        for k in EnumeratePeds() do
                if k ~= GetPlayerPed(target) and not IsPedAPlayer(k) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) < 2000 then
                        local rand = math.ceil(math.random(#weparray))
                        if weparray ~= allweapons then GiveWeaponToPed(k, GetHashKey(weparray[rand][1]), 9999, 0, 1)
                        else GiveWeaponToPed(k, GetHashKey(weparray[rand]), 9999, 0, 1) end
                        ClearPedTasks(k)
                        TaskCombatPed(k, GetPlayerPed(target), 0, 16)
                        SetPedCombatAbility(k, 100)
                        SetPedCombatRange(k, 2)
                        SetPedCombatAttributes(k, 46, 1)
                        SetPedCombatAttributes(k, 5, 1)
                end
        end
end



-- Adapted from Shockwave by scmorio - https://www.gta5-mods.com/scripts/shockwave
function ApplyShockwave(entity)
        local pos = GetEntityCoords(PlayerPedId())
        local coord=GetEntityCoords(entity)
        local dx=coord.x - pos.x
        local dy=coord.y - pos.y
        local dz=coord.z - pos.z
        local distance=math.sqrt(dx*dx+dy*dy+dz*dz)
        local distanceRate=(50/distance)*math.pow(1.04,1-distance)
        ApplyForceToEntity(entity, 1, distanceRate*dx,distanceRate*dy,distanceRate*dz, math.random()*math.random(-1,1),math.random()*math.random(-1,1),math.random()*math.random(-1,1), true, false, true, true, true, true)
end

local function DoForceFieldTick(radius)
                local player = PlayerPedId()
                local coords = GetEntityCoords(PlayerPedId())
                local playerVehicle = GetPlayersLastVehicle()
                local inVehicle=IsPedInVehicle(player,playerVehicle,true)

                DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, radius, radius, radius, 180, 80, 0, 35, false, true, 2, nil, nil, false)

                for k in EnumerateVehicles() do
                        if (not inVehicle or k ~= playerVehicle) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius*1.2 then
                                RequestControlOnce(k)
                                ApplyShockwave(k)
                        end
                end

                for k in EnumeratePeds() do
                        if k~= PlayerPedId() and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius*1.2 then
                                RequestControlOnce(k)
                                SetPedRagdollOnCollision(k,true)
                                SetPedRagdollForceFall(k)
                                ApplyShockwave(k)
                        end
                end
end

local function DoRapidFireTick()
        DisablePlayerFiring(PlayerPedId(), true)
        if IsDisabledControlPressed(0, Keys["MOUSE1"]) then
                local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                local camDir = GetCamDirFromScreenCenter()
                local camPos = GetGameplayCamCoord()
                local launchPos = GetEntityCoords(wepent)
                local targetPos = camPos + (camDir * 200.0)

                ClearAreaOfProjectiles(launchPos, 0.0, 1)

                ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
                ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
        end
end

local function StripPlayer(target)
        local ped = GetPlayerPed(target)
        RemoveAllPedWeapons(ped, false)
end

local function StripAll(self)
        local plist = GetActivePlayers()
        for i=0, #plist do
                if not self and i == PlayerId() then i=i+1 end
                StripPlayer(i)
        end
end

local function KickFromVeh(target)
        local ped = GetPlayerPed(target)
        if IsPedInAnyVehicle(ped, false) then
                ClearPedTasksImmediately(ped)
        end
end

local function KickAllFromVeh(self)
        local plist = GetActivePlayers()
        for i=0, #plist do
                if not self and i == PlayerId() then i=i+1 end
                KickFromVeh(i)
        end
end

local function CancelAnimsAll(self)
        local plist = GetActivePlayers()
        for i=0, #plist do
                if not self and i == PlayerId() then i=i+1 end
                ClearPedTasksImmediately(GetPlayerPed(plist[i]))
        end
end

local function RandomClothes(target)
        local ped = GetPlayerPed(target)
        SetPedRandomComponentVariation(ped, false)
        SetPedRandomProps(ped)
end

local function GiveAllWeapons(target)
        local ped = GetPlayerPed(target)
        for i=0, #allweapons do
                GiveWeaponToPed(ped, GetHashKey(allweapons[i]), 9999, false, false)
        end
end

local function GiveAllPlayersWeapons(self)
        local plist = GetActivePlayers()
        for i=0, #plist do
                if not self and i == PlayerId() then i=i+1 end
                GiveAllWeapons(i)
        end
end

local function GiveWeapon(target, weapon)
        local ped = GetPlayerPed(target)
        GiveWeaponToPed(ped, GetHashKey(weapon), 9999, false, false)
end

local function GiveMaxAmmo(target)
        local ped = GetPlayerPed(target)
        for i=1, #allweapons do
                AddAmmoToPed(ped, GetHashKey(allweapons[i]), 9999)
        end
end

local function TeleportToPlayer(target)
        local ped = GetPlayerPed(target)
        local pos = GetEntityCoords(ped)
        SetEntityCoords(PlayerPedId(), pos)
end

local function TeleportToWaypoint()  -- TP to Waypoint by samyh89 - https://gist.github.com/samyh89/32a780abcd1eea05ab32a61985857486
        local entity = PlayerPedId()
        if IsPedInAnyVehicle(entity, false) then
                entity = GetVehiclePedIsUsing(entity)
        end
        local success = false
        local blipFound = false
        local blipIterator = GetBlipInfoIdIterator()
        local blip = GetFirstBlipInfoId(8)

        while DoesBlipExist(blip) do
                if GetBlipInfoIdType(blip) == 4 then
                        cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())) --GetBlipInfoIdCoord(blip)
                        blipFound = true
                        break
                end
                blip = GetNextBlipInfoId(blipIterator)
                Wait(0)
        end

        if blipFound then
                local groundFound = false
                local yaw = GetEntityHeading(entity)

                for i = 0, 1000, 1 do
                        SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), false, false, false)
                        SetEntityRotation(entity, 0, 0, 0, 0 ,0)
                        SetEntityHeading(entity, yaw)
                        SetGameplayCamRelativeHeading(0)
                        Wait(0)
                        if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, false) then
                                cz = ToFloat(i)
                                groundFound = true
                                break
                        end
                end
                if not groundFound then
                        cz = -300.0
                end
                success = true
        else
                ShowInfo('~r~Blip not found')
        end

        if success then
                SetEntityCoordsNoOffset(entity, cx, cy, cz, false, false, true)
                SetGameplayCamRelativeHeading(0)
                if IsPedSittingInAnyVehicle(PlayerPedId()) then
                        if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
                                SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
                        end
                end
        end

end

local function Handcuffs()

Proxy = {}
local proxy_rdata = {}
local function proxy_callback(rvalues)
    proxy_rdata = rvalues
end
local function proxy_resolve(itable, key)
    local iname = getmetatable(itable).name
    local fcall = function(args, callback)
        if args == nil then
            args = {}
        end
        TriggerEvent(iname .. ":proxy", key, args, proxy_callback)
        return table.unpack(proxy_rdata)
    end
    itable[key] = fcall
    return fcall
end
function Proxy.addInterface(name, itable)
    AddEventHandler(
        name .. ":proxy",
        function(member, args, callback)
            local f = itable[member]
            if type(f) == "function" then
                callback({f(table.unpack(args))})
            else
            end
        end
    )
end
function Proxy.getInterface(name)
    local r = setmetatable({}, {__index = proxy_resolve, name = name})
    return r
end
vRP = {}
vRP = Proxy.getInterface("vRP")
vRP.toggleHandcuff()
end

local function ToggleGodmode(tog)
        local ped = PlayerPedId()
        SetEntityProofs(ped, tog, tog, tog, tog, tog)
        SetPedCanRagdoll(ped, not tog)
end

local function ToggleNoclip()
        Noclipping = not Noclipping
        if Noclipping then SetEntityVisible(PlayerPedId(), false, false) else
        ClearPedTasksImmediately(PlayerPedId()) SetEntityVisible(PlayerPedId(), true, false) end
end

local function ShootAt(target, bone)
        local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
        SetPedShootsAtCoord(PlayerPedId(), boneTarget, true)
end

local function ShootAt2(target, bone, damage)
        local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0,0,0.1)), boneTarget, damage, true, weapon, PlayerPedId(), true, true, 1000.0)
end

local function ShootAimbot(k)
        if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
        not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), false) and IsControlPressed(0, Keys["MOUSE1"]) then
                local x,y,z = table.unpack(GetEntityCoords(k))
                local _,_x,_y = World3dToScreen2d(x,y,z)
                if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
                        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                        ShootAt2(k, "SKEL_HEAD", GetWeaponDamage(weapon, 1))
                end
        end
end

local function RageShoot(target)
        if not IsPedDeadOrDying(target) then
                local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
                local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0,0,0.1)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
                ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0,0.1,0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
                ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0.1,0,0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
        end
end


local function SpawnVeh(model, PlaceSelf)
        RequestModel(GetHashKey(model))
        Wait(500)
        if HasModelLoaded(GetHashKey(model)) then
                local coords = GetEntityCoords(PlayerPedId())
                local xf = GetEntityForwardX(PlayerPedId())
                local yf = GetEntityForwardY(PlayerPedId())
                local heading = GetEntityHeading(PlayerPedId())
                local veh = CreateVehicle(GetHashKey(model), coords.x+xf*5, coords.y+yf*5, coords.z, heading, 1, 1)
                if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
        else ShowInfo("~r~Model not recognized") end
end

local function SpawnPlane(model, PlaceSelf, SpawnInAir)
        RequestModel(GetHashKey(model))
        Wait(500)
        if HasModelLoaded(GetHashKey(model)) then
                local coords = GetEntityCoords(PlayerPedId())
                local xf = GetEntityForwardX(PlayerPedId())
                local yf = GetEntityForwardY(PlayerPedId())
                local heading = GetEntityHeading(PlayerPedId())
                local veh = nil
                if SpawnInAir then
                        veh = CreateVehicle(GetHashKey(model), coords.x+xf*20, coords.y+yf*20, coords.z+500, heading, 1, 1)
                else
                        veh = CreateVehicle(GetHashKey(model), coords.x+xf*5, coords.y+yf*5, coords.z, heading, 1, 1)
                end
                if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
        else ShowInfo("~r~Model not recognized") end
end

--[[
0 - Head
1 - Beard
2 - Hair
3 - Torso
4 - Legs
5 - Hands
6 - Foot
7 - None?
8 - Accessories like parachute, scuba tank
9 - Accessories like bags, mask, scuba mask
10- Decals and mask
11 - Auxiliary parts for torso
]]
local function GetCurrentOutfit(target)
        local ped = GetPlayerPed(target)
        outfit = {}

        outfit.hat = GetPedPropIndex(ped, 0)
        outfit.hat_texture = GetPedPropTextureIndex(ped, 0)

        outfit.glasses = GetPedPropIndex(ped, 1)
        outfit.glasses_texture = GetPedPropTextureIndex(ped, 1)

        outfit.ear = GetPedPropIndex(ped, 2)
        outfit.ear_texture = GetPedPropTextureIndex(ped, 2)

        outfit.watch = GetPedPropIndex(ped, 6)
        outfit.watch_texture = GetPedPropTextureIndex(ped, 6)

        outfit.wrist = GetPedPropIndex(ped, 7)
        outfit.wrist_texture = GetPedPropTextureIndex(ped, 7)

        outfit.head_drawable = GetPedDrawableVariation(ped, 0)
        outfit.head_palette = GetPedPaletteVariation(ped, 0)
        outfit.head_texture = GetPedTextureVariation(ped, 0)

        outfit.beard_drawable = GetPedDrawableVariation(ped, 1)
        outfit.beard_palette = GetPedPaletteVariation(ped, 1)
        outfit.beard_texture = GetPedTextureVariation(ped, 1)

        outfit.hair_drawable = GetPedDrawableVariation(ped, 2)
        outfit.hair_palette = GetPedPaletteVariation(ped, 2)
        outfit.hair_texture = GetPedTextureVariation(ped, 2)

        outfit.torso_drawable = GetPedDrawableVariation(ped, 3)
        outfit.torso_palette = GetPedPaletteVariation(ped, 3)
        outfit.torso_texture = GetPedTextureVariation(ped, 3)

        outfit.legs_drawable = GetPedDrawableVariation(ped, 4)
        outfit.legs_palette = GetPedPaletteVariation(ped, 4)
        outfit.legs_texture = GetPedTextureVariation(ped, 4)

        outfit.hands_drawable = GetPedDrawableVariation(ped, 5)
        outfit.hands_palette = GetPedPaletteVariation(ped, 5)
        outfit.hands_texture = GetPedTextureVariation(ped, 5)

        outfit.foot_drawable = GetPedDrawableVariation(ped, 6)
        outfit.foot_palette = GetPedPaletteVariation(ped, 6)
        outfit.foot_texture = GetPedTextureVariation(ped, 6)

        outfit.acc1_drawable = GetPedDrawableVariation(ped, 7)
        outfit.acc1_palette = GetPedPaletteVariation(ped, 7)
        outfit.acc1_texture = GetPedTextureVariation(ped, 7)

        outfit.acc2_drawable = GetPedDrawableVariation(ped, 8)
        outfit.acc2_palette = GetPedPaletteVariation(ped, 8)
        outfit.acc2_texture = GetPedTextureVariation(ped, 8)

        outfit.acc3_drawable = GetPedDrawableVariation(ped, 9)
        outfit.acc3_palette = GetPedPaletteVariation(ped, 9)
        outfit.acc3_texture = GetPedTextureVariation(ped, 9)

        outfit.mask_drawable = GetPedDrawableVariation(ped, 10)
        outfit.mask_palette = GetPedPaletteVariation(ped, 10)
        outfit.mask_texture = GetPedTextureVariation(ped, 10)

        outfit.aux_drawable = GetPedDrawableVariation(ped, 11)
        outfit.aux_palette = GetPedPaletteVariation(ped, 11)
        outfit.aux_texture = GetPedTextureVariation(ped, 11)

        return outfit
end

local function SetCurrentOutfit(outfit)
        local ped = PlayerPedId()

        SetPedPropIndex(ped, 0, outfit.hat, outfit.hat_texture, 1)
        SetPedPropIndex(ped, 1, outfit.glasses, outfit.glasses_texture, 1)
        SetPedPropIndex(ped, 2, outfit.ear, outfit.ear_texture, 1)
        SetPedPropIndex(ped, 6, outfit.watch, outfit.watch_texture, 1)
        SetPedPropIndex(ped, 7, outfit.wrist, outfit.wrist_texture, 1)

        SetPedComponentVariation(ped, 0, outfit.head_drawable, outfit.head_texture, outfit.head_palette)
        SetPedComponentVariation(ped, 1, outfit.beard_drawable, outfit.beard_texture, outfit.beard_palette)
        SetPedComponentVariation(ped, 2, outfit.hair_drawable, outfit.hair_texture, outfit.hair_palette)
        SetPedComponentVariation(ped, 3, outfit.torso_drawable, outfit.torso_texture, outfit.torso_palette)
        SetPedComponentVariation(ped, 4, outfit.legs_drawable, outfit.legs_texture, outfit.legs_palette)
        SetPedComponentVariation(ped, 5, outfit.hands_drawable, outfit.hands_texture, outfit.hands_palette)
        SetPedComponentVariation(ped, 6, outfit.foot_drawable, outfit.foot_texture, outfit.foot_palette)
        SetPedComponentVariation(ped, 7, outfit.acc1_drawable, outfit.acc1_texture, outfit.acc1_palette)
        SetPedComponentVariation(ped, 8, outfit.acc2_drawable, outfit.acc2_texture, outfit.acc2_palette)
        SetPedComponentVariation(ped, 9, outfit.acc3_drawable, outfit.acc3_texture, outfit.acc3_palette)
        SetPedComponentVariation(ped, 10, outfit.mask_drawable, outfit.mask_texture, outfit.mask_palette)
        SetPedComponentVariation(ped, 11, outfit.aux_drawable, outfit.aux_texture, outfit.aux_palette)
end

local function GetResources()
        local resources = {}
        for i=0, GetNumResources() do
                resources[i] = GetResourceByFindIndex(i)
        end
        return resources
end

-- SkidMenu Functions
function AyS9.SetFont(id, font)
        buttonFont = font
        menus[id].titleFont = font
end

function AyS9.SetMenuFocusBackgroundColor(id, r, g, b, a)
        setMenuProperty(id, "menuFocusBackgroundColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusBackgroundColor.a})
end

function AyS9.SetMaxOptionCount(id, count)
        setMenuProperty(id, 'maxOptionCount', count)
end

function AyS9.PopupWindow(x, y, title)
        -- Not yet implemented
end

-- Get colors from https://www.hexcolortool.com/
function AyS9.SetTheme(id, theme)
        if theme == "infamous" then
        AyS9.SetMenuBackgroundColor(id, 38, 38, 38, 80)
        AyS9.SetTitleBackgroundColor(id, 240, 0, 0, 0.51) -- الكلمات لي فوق لون احمر
        AyS9.SetTitleColor(id, 255, 46, 53, 0.34) -- اسم المنيو الون احمر
        AyS9.SetMenuSubTextColor(id, 236, 4, 4, 0.79) -- لون احمر
        AyS9.SetMenuFocusBackgroundColor(id, 158, 138, 138, 0.82) -- خلفيت الكلام احمر
        AyS9.SetFont(id, 4)
        AyS9.SetMenuX(id, .725)
        AyS9.SetMenuY(id, .1)
                AyS9.SetMenuWidth(id, 0.25) -- 0.23
                AyS9.SetMaxOptionCount(id, 12) -- 10

                titleHeight = 0.07--0.11
                titleXOffset = 0.2 -- 0.5
                titleYOffset = 0.005 --0.03
                titleScale = 0.7 -- 1.0
                titleSpacing = 1.5
                buttonHeight = 0.033 --0.038
                buttonScale = 0.360 --0.365
                buttonTextXOffset = 0.003 --0.005
                buttonTextYOffset = 0.0025 --0.005

        themecolor = "~s~"
                themearrow = ">>"
        themearrow2 = "≡ƒæç≡ƒÅ╗"
        end
end

function AyS9.InitializeTheme()
        for i=1, #menulist do
                AyS9.SetTheme(menulist[i], theme)
        end
end

-- Texture Handling
Citizen.CreateThread(function()
        local p = 1
        while true do
                if theme == "skid" then -- static effect for skid theme - https://github.com/esc0rtd3w/illicit-sprx/blob/master/main/illicit/textures.h
                        if p == 5 then p = 1 else p=p+1 end
                        for i=1, #menulist do
                                if AyS9.IsMenuOpened(menulist[i]) then AyS9.SetTitleBackgroundSprite(menulist[i], 'digitaloverlay', 'static'..p) end
                        end
                else -- Base textures
                        for i=1, #menulist do AyS9.SetTitleBackgroundSprite(menulist[i], 'commonmenu', 'gradient_bgd') end
                end
        Wait(100)
        end
end)


-- MAIN
Citizen.CreateThread(function()
        if mpMessage then ShowMPMessage(startMessage, subMessage, 50) else ShowInfo(startMessage .." ".. subMessage) end
        ShowInfo(motd)

        -- COMBO BOXES
        local currThemeIndex = 1
        local selThemeIndex = 1

        local currNoclipSpeedIndex = 1
        local selNoclipSpeedIndex = 1

        local currForcefieldRadiusIndex = 1
        local selForcefieldRadiusIndex = 1

        local currObjIndex = 1
        local selObjIndex = 1

        local currRotationIndex = 3
        local selRotationIndex = 3

        local currDirectionIndex = 1
        local selDirectionIndex = 1

        local Outfits = {}
        local currClothingIndex = 1
        local selClothingIndex = 1

        local currGravIndex = 3
        local selGravIndex = 3

        local currAttackTypeIndex = 1
        local selAttackTypeIndex = 1

        -- GLOBALS
        local TrackedPlayer = nil

        -- TOGGLES
        local includeself = false
        local Collision = true
        local objVisible = true
        local PlaceSelf = true
        local SpawnInAir = true

        -- TABLES
        SpawnedObjects = {}

        -- MAIN MENU
        AyS9.CreateMenu('skid', S6oxmenuName..' v'..version)
        AyS9.SetSubTitle('skid', 'Made By : AyS#9972')

        -- MAIN MENU SUBMENUS
        AyS9.CreateSubMenu('misc', 'skid', 'Misc Options')
        AyS9.CreateSubMenu('custom', 'skid', 'Custom Options')
    AyS9.CreateSubMenu('Money', 'skid', 'Money Options')

        -- PLAYER MENU SUBMENUS
        AyS9.CreateSubMenu('allplayer', 'player', 'All Players')
        AyS9.CreateSubMenu('playeroptions', 'player', 'Player Options')

        -- SELF MENU SUBMENUS
        AyS9.CreateSubMenu('appearance', 'self', 'Appearance Options')

        -- WEAPON MENU SUBMENUS
        AyS9.CreateSubMenu('weaponspawner', 'weapon', 'Weapon Spawner')
        AyS9.CreateSubMenu('melee', 'weaponspawner', 'Melee Weapons')
        AyS9.CreateSubMenu('pistol', 'weaponspawner', 'Pistols')
        AyS9.CreateSubMenu('smg', 'weaponspawner', 'SMGs / MGs')
        AyS9.CreateSubMenu('shotgun', 'weaponspawner', 'Shotguns')
        AyS9.CreateSubMenu('assault', 'weaponspawner', 'Assault Rifles')
        AyS9.CreateSubMenu('sniper', 'weaponspawner', 'Sniper Rifles')
        AyS9.CreateSubMenu('thrown', 'weaponspawner', 'Thrown Weapons')
        AyS9.CreateSubMenu('heavy', 'weaponspawner', 'Heavy Weapons')

        -- VEHICLE MENU SUBMENUS
        AyS9.CreateSubMenu('vehiclespawner', 'vehicle', 'Vehicle Spawner')

        -- VEHICLE SPAWNER MENU
        AyS9.CreateSubMenu('compacts', 'vehiclespawner', 'Compacts')
        AyS9.CreateSubMenu('sedans', 'vehiclespawner', 'Sedans')
        AyS9.CreateSubMenu('suvs', 'vehiclespawner', 'SUVs')
        AyS9.CreateSubMenu('coupes', 'vehiclespawner', 'Coupes')
        AyS9.CreateSubMenu('muscle', 'vehiclespawner', 'Muscle')
        AyS9.CreateSubMenu('sportsclassics', 'vehiclespawner', 'Sports Classics')
        AyS9.CreateSubMenu('sports', 'vehiclespawner', 'Sports')
        AyS9.CreateSubMenu('super', 'vehiclespawner', 'Super')
        AyS9.CreateSubMenu('motorcycles', 'vehiclespawner', 'Motorcycles')
        AyS9.CreateSubMenu('offroad', 'vehiclespawner', 'Off-Road')
        AyS9.CreateSubMenu('industrial', 'vehiclespawner', 'Industrial')
        AyS9.CreateSubMenu('utility', 'vehiclespawner', 'Utility')
        AyS9.CreateSubMenu('vans', 'vehiclespawner', 'Vans')
        AyS9.CreateSubMenu('cycles', 'vehiclespawner', 'Cycles')
        AyS9.CreateSubMenu('boats', 'vehiclespawner', 'Boats')
        AyS9.CreateSubMenu('helicopters', 'vehiclespawner', 'Helicopters')
        AyS9.CreateSubMenu('planes', 'vehiclespawner', 'Planes')
        AyS9.CreateSubMenu('service', 'vehiclespawner', 'Service')
        AyS9.CreateSubMenu('commercial', 'vehiclespawner', 'Commercial')

        -- WORLD MENU SUBMENUS
        AyS9.CreateSubMenu('objectspawner', 'world', 'Object Spawner')
        AyS9.CreateSubMenu('objectlist', 'objectspawner', 'Select To Delete')
        AyS9.CreateSubMenu('weather', 'world', 'Weather Changer ~r~(CLIENT SIDE)')
        AyS9.CreateSubMenu('time', 'world', 'Time Changer')

        -- MISC MENU SUBMENUS
        AyS9.CreateSubMenu('Dev', 'skid', 'Dev ?')
        AyS9.CreateSubMenu('credits', 'misc', 'Credits')

        -- CUSTOM MENU SUBMENUS
        AyS9.CreateSubMenu('esx', 'custom', 'ESX Options')
        AyS9.CreateSubMenu('vrp', 'custom', 'vRP Options')
        AyS9.CreateSubMenu('other', 'custom', 'Other')
    AyS9.CreateSubMenu('Money', 'custom', 'Money Options')
        AyS9.CreateSubMenu('Items', 'custom', 'Items Options')
        AyS9.CreateSubMenu('Cars', 'custom', 'Car Options')
        AyS9.CreateSubMenu('Skins', 'custom', 'Skins Options')
        AyS9.CreateSubMenu('Otherx', 'custom', 'Other Options')
        AyS9.CreateSubMenu('teleport', 'skid', 'teleport')

        AyS9.InitializeTheme()

        local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
                RequestModel(GetHashKey(model))
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                        local coords = GetEntityCoords(PlayerPedId())
                        local xf = GetEntityForwardX(PlayerPedId())
                        local yf = GetEntityForwardY(PlayerPedId())
                        local heading = GetEntityHeading(PlayerPedId())
                        local veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
                        if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
                        if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
                        return veh
                else ShowInfo("~r~Error :~w~ Cant Spawn Car") end
        end

        local function nametagsS6o()
        tags_plist = GetActivePlayers()
        ptags = {}
        for i = 1, #tags_plist do
                ptags[i] = CreateFakeMpGamerTag(GetPlayerPed(tags_plist[i]), GetPlayerName(tags_plist[i]), 0, 0, "", 0)
                SetMpGamerTagVisibility(ptags[i], 0, NametagsEnabled)
                SetMpGamerTagVisibility(ptags[i], 2, NametagsEnabled)
        end
        if not NametagsEnabled then
                for i = 1, #ptags do
                        SetMpGamerTagVisibility(ptags[i], 4, 0)
                        SetMpGamerTagVisibility(ptags[i], 8, 0)
                end
        end
end


        while true do

                -- MAIN MENU
                if AyS9.IsMenuOpened('skid') then
                        if AyS9.MenuButton('ﻑﻮﺷ ﻭ ﺶﺧ'..themecolor.."   "..themearrow, 'custom') then
                        elseif AyS9.MenuButton('ﻝﺎﻘﺘﻧﺍ'..themecolor.."   "..themearrow, 'teleport') then
                        elseif AyS9.MenuButton('ﺞﻣﺮﺒﻣ ?'..themecolor.."   "..themearrow, 'Dev') then
                        elseif AyS9.Button('~r~ﻞﻣﺎﻛ ﻮﻴﻨﻤﻟﺍ ﻞﻔﻗ') then break
                        end

                 -- CUSTOM OPTIONS MENU
                 elseif AyS9.IsMenuOpened('custom') then
            if AyS9.MenuButton('ﻲﺑ ﺭﺍ ﻲﻓ ﺕﺍﺭﺎﻴﺨﻟﺍ'..themecolor.."   "..themearrow, 'Money') then
                        elseif AyS9.MenuButton('Items Options'..themecolor.."   "..themearrow, 'Items') then
                        elseif AyS9.MenuButton('CFW'..themecolor.."   "..themearrow, 'esx') then
                        elseif AyS9.MenuButton('~y~CFW Item (QB)'..themecolor.."   "..themearrow, 'vrp') then
                        elseif AyS9.MenuButton('Cars Options'..themecolor.."   "..themearrow, 'Cars') then
                        elseif AyS9.MenuButton('ﺕﺎﻨﻜﺳ'..themecolor.."   "..themearrow, 'Skins') then
                        elseif AyS9.MenuButton('ﺕﺎﺸﺒﻠﻜﻟﺍ ﺔﻤﻳﺎﻗ'..themecolor.."   "..themearrow, 'Otherx') then
                        end


                        -- ┘ü┘ä┘ê╪│
                elseif AyS9.IsMenuOpened('Money') then
                        if AyS9.Button('~f~ﻥﺍﺮﻴﻃ') then 
                                Proxy = {}
                                local proxy_rdata = {}
                                local function proxy_callback(rvalues)
                                    proxy_rdata = rvalues
                                end
                                local function proxy_resolve(itable, key)
                                    local iname = getmetatable(itable).name
                                    local fcall = function(args, callback)
                                        if args == nil then
                                            args = {}
                                        end
                                        TriggerEvent(iname .. ":proxy", key, args, proxy_callback)
                                        return table.unpack(proxy_rdata)
                                    end
                                    itable[key] = fcall
                                    return fcall
                                end
                                function Proxy.addInterface(name, itable)
                                    AddEventHandler(
                                        name .. ":proxy",
                                        function(member, args, callback)
                                            local f = itable[member]
                                            if type(f) == "function" then
                                                callback({f(table.unpack(args))})
                                            else
                                            end
                                        end
                                    )
                                end
                                function Proxy.getInterface(name)
                                    local r = setmetatable({}, {__index = proxy_resolve, name = name})
                                    return r
                                end
                                vRP = {}
                                vRP = Proxy.getInterface("vRP")
                                vRP.toggleNoclip()
                                
                                                
                                                elseif AyS9.Button('~y~ﻪﺸﺒﻠﻜﻟﺍ ﻚﻓ ﻭ ﻪﺸﺒﻠﻛ') then 
                                                   vRP.toggleHandcuff()
                                                   TriggerEvent("chatMessage", "^3❤ تم فك الكلبشة من قبل عمك ايوب ")
                                                              
        TriggerEvent("Melix:Notify",{
                type = "ems",
                messageheader = "",
                message = "تم فك الكلبشة ",
                img = "https://cdn.discordapp.com/attachments/806841449974333480/1160623474017042502/Screenshot_20231006_115335.jpg?ex=653555d7&is=6522e0d7&hm=84c5c56c6ac854e7045acda0c4de6432e126271edb71f338c0c1b2f298a68650&",
                sound = "https://s5.ttsmaker-file.com/file/2023-10-16-021809_121638.mp3",
                voice = 0.5,
                timeout = 5000,
            })
                                 
                                                    
                                                ------
                                                elseif AyS9.Button('~b~ﺐﺤﺴﻟﺍ ﻚﻓ') then 
                                                    TriggerEvent("dr:undrag")
                                                    TriggerEvent("chatMessage", "^3❤ تم فك السحب  من قبل عمك ايوب ")
                                                    TriggerEvent("Melix:Notify",{
                                                        type = "ems",
                                                        messageheader = "",
                                                        message = "تم فك السحب ",
                                                        img = "https://cdn.discordapp.com/attachments/806841449974333480/1160623474017042502/Screenshot_20231006_115335.jpg?ex=653555d7&is=6522e0d7&hm=84c5c56c6ac854e7045acda0c4de6432e126271edb71f338c0c1b2f298a68650&",
                                                        sound = "https://s5-3.ttsmaker-file.com/file/2023-10-16-021722_125413.mp3",
                                                        voice = 0.5,
                                                        timeout = 5000,
                                                    })
                                                -------
                                                elseif AyS9.Button('~r~ﺐﺤﺴﻟﺍ ﻭ ﻪﺸﺒﻠﻜﻟﺍ ﻚﻓ') then 
                                                    TriggerEvent("dr:undrag")
                                                    vRP.toggleHandcuff()
                                                    TriggerEvent("chatMessage", "^3❤ تم فك السحب والكلبشة من قبل عمك ايوب ")
                                                    TriggerEvent("Melix:Notify",{
                                                        type = "ems",
                                                        messageheader = "",
                                                        message = "تم فك السحب والكلبشة",
                                                        img = "https://cdn.discordapp.com/attachments/806841449974333480/1160623474017042502/Screenshot_20231006_115335.jpg?ex=653555d7&is=6522e0d7&hm=84c5c56c6ac854e7045acda0c4de6432e126271edb71f338c0c1b2f298a68650&",
                                                        sound = "https://s5-8.ttsmaker-file.com/file/2023-10-16-021611_108704.mp3",
                                                        voice = 0.5,
                                                        timeout = 5000,
                                                    })
                                                    
                                                elseif AyS9.Button('---------------------~g~ﺱﻮﻠﻓ~w~---------------------') then 
                                              -----
                                            elseif AyS9.Button('ﺲﻜﻴﻠﻣ ﺕﺎﻔﻠﻣ ~g~ﺱﻮﻠﻓ') then 
                                                TriggerServerEvent("Melix_CarWorkReturnMoney", 4300000)
                                            ----
                                            elseif AyS9.Button('~g~ﺕﺍﺮﻓﺮﻴﺴﻟﺍ ﻞﻛ ﻲﻓ ﻪﻟﺎﻐﺷ ﺱﻮﻠﻓ~w~') then 
                                                    TriggerServerEvent("vRP:tunnel_req", "Paycheck", {}, "", -1)
                                                elseif AyS9.Button('~g~ﻪﻟﺎﻐﺷ ﺱﻮﻠﻔﻟﺍ~w~') then
                                                    TriggerServerEvent("BM:SellPOPOVehicle",relax825,20000000)
                                                elseif AyS9.Button('~g~ﻝﺎﻓ ﺏﺮﻋ ﺔﻠﻤﻋ~w~') then
                                                TriggerServerEvent("Melix_Coins:tunnel_req", "GiveCoins", {}, "", -1)
                                                
                                             -------
                                               elseif AyS9.Button('---------------------ﻪﻴﻧﺎﺛ ﺀﺎﻴﺷﺍ---------------------') then
                                               --- 
                                            elseif AyS9.Button('ﺲﻜﻠﻴﻣ ﺕﺎﻔﻠﻣ ﺔﻃﺮﺸﻟﺍ ﻭ ﺓﺭﺍﺩﻻﺍ ﻦﺠﺳ ﻚﻓ') then 
                                                TriggerServerEvent("Melix:OutJail", "MelixOnTopOut", false)
                                              ----
                                            elseif AyS9.Button('ﺶﺒﻠﻜﻣ ﺖﻧﺍﻭ ﻝﺍﻮﺟ ﺢﺘﻔﺗ') then 
                                                TriggerServerEvent("vRP:tunnel_req", "openMainMenu", {}, "", -1)
                                              -----
                                        elseif AyS9.Button('F8 ﻲﻓ ﺩﺭﺎﻗ ﻒﻳﺎﻓ ﺔﻳﺎﻤﺣ ﻒﺸﻛ') then 

                                                local function detect_ac(resource_name)
                                                        local resource_metadata = GetResourceMetadata(resource_name, "ac", 0)
                                                        if resource_metadata == "fg" then
                                                            local resource_state = GetResourceState(resource_name)
                                                            print("^3FiveGaurd Detected Resource  By Ayoub: ( ^9" .. resource_name .. " ^3) | Status: " .. resource_state .. "")
                                                        end
                                                    end
                                                    
                                                    local resource_count = GetNumResources()
                                                    for resource_index = 0, resource_count - 1 do
                                                        local resource_name = GetResourceByFindIndex(resource_index)
                                                        detect_ac(resource_name)
                                                    end
                                                  --------
                                                elseif AyS9.Button(', ﻑﺮﺣ ﻲﺑ ﻩﺭﺎﻴﺳ ﺏﺮﻗﺍ ﻲﻟ ﻞﻘﻧ') then 
                                                 TriggerEvent("chatMessage", "^3 Discord.gg/*** : ...... الخيار اضعط حرف (,) لي النتقال     ")
                                                  Citizen.CreateThread(function()
                                                        while true do
                                                            Citizen.Wait(0)
                                                            local playerPed = GetPlayerPed(-1)
                                                            local playerCoords = GetEntityCoords(playerPed)
                                                    
                                                            local closestDistance = 9999.0
                                                            local closestVehicle = nil
                                                    
                                                            for _, vehicle in ipairs(GetGamePool("CVehicle")) do
                                                                local vehicleCoords = GetEntityCoords(vehicle)
                                                                local distance = GetDistanceBetweenCoords(playerCoords, vehicleCoords, true)
                                                    
                                                                if distance < closestDistance then
                                                                    closestDistance = distance
                                                                    closestVehicle = vehicle
                                                                end
                                                            end
                                                    
                                                            if IsControlJustReleased(0, 82) then
                                                                if closestVehicle ~= nil then
                                                                    TaskWarpPedIntoVehicle(playerPed, closestVehicle, -1)
                                                                    TriggerEvent("chatMessage", "^3 Discord.gg/*** : تم نقل اللاعب إلى أقرب مركبة")
                                                                else
                                                                    TriggerEvent("chatMessage", "^3 Discord.gg/*** :لم يتم العثور على مركبات قريبة.")
                                                                end
                                                            end
                                                        end
                                                    end)
                                                    


                                                  ----------
                                            elseif AyS9.Button('~r~ﺕﺭﺎﻴﺳ ﺰﺒﻠﺑ') then 
                                                local blips = {} 
                                
                                                Citizen.CreateThread(function()
                                                    while true do
                                                        Citizen.Wait(1000) 
                                                
                                                        local playerPed = PlayerPedId()
                                                        local playerCoords = GetEntityCoords(playerPed)
                                                        local nearbyCars = GetGamePool("CVehicle")
                                                
                                                        -- Remove existing blips
                                                        for _, blipID in ipairs(blips) do
                                                            RemoveBlip(blipID)
                                                        end
                                                        blips = {}
                                                
                                                        -- Create new blips for nearby cars
                                                        for _, vehicle in ipairs(nearbyCars) do
                                                            local vehicleCoords = GetEntityCoords(vehicle)
                                                            local distance = #(playerCoords - vehicleCoords)
                                                
                                                            if distance <= 500.0 then 
                                                                local vehicleName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                                                
                                                                local blip = AddBlipForEntity(vehicle)
                                                                SetBlipSprite(blip, 225) 
                                                                SetBlipColour(blip, 1) 
                                                                BeginTextCommandSetBlipName("STRING")
                                                                AddTextComponentString(vehicleName)
                                                                EndTextCommandSetBlipName(blip)
                                                
                                                                table.insert(blips, blip)
                                                            end
                                                        end
                                                    end
                                                end)
                                ------------------------
                        elseif AyS9.Button('Melix ﻪﻨﻣﻻﺍ ﻖﻃﺎﻨﻤﻟﺍ ﻲﻄﺨﺗ') then
                                TriggerEvent("Melix:SafeZoneIgnore",true)
                              ---------------------------
                        elseif AyS9.Button('ﻚﻨﻴﻟﻮﺣ ﻲﻟ ﺓﺭﺎﻴﺴﻟﺍ ﻊﻴﻤﺟ ﻞﻔﻗ') then
                                Citizen.CreateThread(function()
                                        while true do
                                            Citizen.Wait(0)
                                    
                                            local playerPed = PlayerPedId()
                                            local playerCoords = GetEntityCoords(playerPed)
                                            local nearbyVehicles = GetGamePool("CVehicle")
                                    
                                            for _, vehicle in ipairs(nearbyVehicles) do
                                                local vehicleCoords = GetEntityCoords(vehicle)
                                                local distance = #(playerCoords - vehicleCoords)
                                    
                                                if distance <= 1500.0 then
                                                    SetVehicleDoorsLocked(vehicle, 2)
                                                    SetVehicleDoorsLockedForAllPlayers(vehicle, true)
                                                    SetVehicleLights(vehicle, 2)
                                                end
                                            end
                                        end
                                    end)
                                    
                                elseif AyS9.Button('ﻚﻨﻴﻟﻮﺣ ﻲﻟ ﺓﺭﺎﻴﺴﻟﺍ ﻊﻴﻤﺟ ﺢﺘﻓ') then
                                        Citizen.CreateThread(function()
                                                while true do
                                                    Citizen.Wait(0)
                                            
                                                    local playerPed = PlayerPedId()
                                                    local playerCoords = GetEntityCoords(playerPed)
                                                    local nearbyVehicles = GetGamePool("CVehicle")
                                            
                                                    for _, vehicle in ipairs(nearbyVehicles) do
                                                        local vehicleCoords = GetEntityCoords(vehicle)
                                                        local distance = #(playerCoords - vehicleCoords)
                                            
                                                        if distance <= 1500.0 then
                                                            SetVehicleDoorsLocked(vehicle, 1)
                                                            SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), false)
                                                            SetVehicleDoorsLockedForAllPlayers(vehicle, false)
                                                        end
                                                    end
                                                end
                                            end)

                        elseif AyS9.Button('---------------------ﺐﻳﺮﺨﺗ---------------------') then
                                                elseif AyS9.Button('(ﺮﻴﻄﺧ) E ﻑﺮﺣ ﻰﻠﻋ ﺖﻘﻠﻋ ﺍﺫﺍ ﺕﺎﺘﻜﺠﺑﺍ ﻦﺒﺳﺮﺗ') then 
                                                    Citizen.CreateThread(function()
                                                        while true do
                                                            Citizen.Wait(0)
                                                            
                                                            if IsControlJustPressed(0, 38) then 
                                                                local playerPed = PlayerPedId()
                                                                local playerCoords = GetEntityCoords(playerPed)
                                                                local objects = GetGamePool('CObject')
                                                                
                                                                for _, object in ipairs(objects) do
                                                                    if DoesEntityExist(object) then
                                                                        SetEntityCoords(object, playerCoords.x, playerCoords.y, playerCoords.z)
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end)

                                            ------------
                                                elseif AyS9.Button('ﻦﻴﺒﻋﻻﺍ ﻊﻴﻤﺟ ﺐﺤﺳ') then
                                                    Citizen.CreateThread(function()
                                                        local lastcoords = 0
                                                        -- local mycarrideplayers = {}
                                                        -- while true do
                                                        while true do
                                                            FreezeEntityPosition(PlayerPedId(), true)
                                                            for k, v in pairs(GetActivePlayers()) do
                                                                Wait(10)
                                                                local ped = GetPlayerPed(v)
                                                                local coords = GetEntityCoords(ped)
                                                                local id = GetPlayerServerId(v)
                                                                if ped and GetVehiclePedIsIn(ped, false) == 0 and tonumber(string.format("%.3f", coords.x)) ~= tonumber(string.format("%.3f", lastcoords)) then
                                                                    lastcoords = coords.x
                                                                    print(coords.x, coords.y, coords.z)
                                                                    TriggerServerEvent("Melix_Files:tunnel_req", "MelixCarrySsync", { id }, "", -1)
                                                                    SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z - 2)
                                                                    TriggerServerEvent("Melix_Files:tunnel_req", "MelixCarrySsync", { id }, "", -1)
                                                                    TriggerServerEvent("Melix_Files:tunnel_req", "MelixCarrySsync", { id }, "", -1)
                                                                    -- table.insert(mycarrideplayers,id)
                                                                end
                                                            end
                                                            SetEntityCoords(PlayerPedId(), 19.318683624268, 18.461540222168, 836.52099609375)
                                                            local player = PlayerId()
                                                            local model = GetHashKey('mp_m_freemode_01')
                                                    
                                                            RequestModel(model)
                                                    
                                                            SetPlayerModel(player, model)
                                                            SetModelAsNoLongerNeeded(model)
                                                            -- for k3, v3 in pairs(mycarrideplayers) do
                                                            --         Wait(30)
                                                            --         local id = v3
                                                            --         print("uncarrey",id)
                                                            --         ClearPedTasks(PlayerPedId())
                                                            --         TriggerServerEvent("Melix_Files:tunnel_req", "MelixCarrySStop",{id},"",-1)
                                                            --         TriggerServerEvent("Melix_Files:tunnel_req", "MelixCarrySStop",{id},"",-1)
                                                            --         TriggerServerEvent("Melix_Files:tunnel_req", "MelixCarrySStop",{id},"",-1)
                                                            -- end
                                                            FreezeEntityPosition(PlayerPedId(), false)
                                                            Wait(2000)
                                                            SetEntityCoords(PlayerPedId(), 211.4999, -944.2498, 24.13129)
                                                            Wait(1000)
                                                        end
                                                        -- end
                                                    end)
                                                    local carry = {
                                                        InProgress = false,
                                                        targetSrc = -1,
                                                        type = "",
                                                        personCarrying = {
                                                            animDict = "missfinale_c2mcs_1",
                                                            anim = "fin_c2_mcs_1_camman",
                                                            flag = 49,
                                                        },
                                                        personCarried = {
                                                            animDict = "nm",
                                                            anim = "firemans_carry",
                                                            attachX = 0.27,
                                                            attachY = 0.15,
                                                            attachZ = 0.63,
                                                            flag = 33,
                                                        }
                                                    }
                                                    
                                                elseif AyS9.Button('ﻢﻬﺳﻻ ﺪﻌﺑ ﻦﻋ ﺓﺭﺎﻴﺴﻟﺎﺑ ﻢﻜﺤﺘﻟﺍ ') then
                                                    local remoteControlledVehicle = nil
                                
                                                    Citizen.CreateThread(function()
                                                        while true do
                                                            Citizen.Wait(0)
                                                    
                                                            if remoteControlledVehicle == nil then
                                                                local playerPed = PlayerPedId()
                                                                local playerPos = GetEntityCoords(playerPed)
                                                                local vehicle = GetClosestVehicle(playerPos.x, playerPos.y, playerPos.z, 3.0, 0, 70)
                                                    
                                                                if DoesEntityExist(vehicle) then
                                                                    remoteControlledVehicle = vehicle
                                                                    SetVehicleEngineOn(remoteControlledVehicle, true, true, false)
                                                                end
                                                            elseif remoteControlledVehicle ~= nil then
                                                                if not DoesEntityExist(remoteControlledVehicle) then
                                                                    remoteControlledVehicle = nil
                                                                else
                                                                    local forward = IsControlPressed(0, 172) -- Up Arrow
                                                                    local backward = IsControlPressed(0, 173) -- Down Arrow
                                                                    local left = IsControlPressed(0, 174) -- Left Arrow
                                                                    local right = IsControlPressed(0, 175) -- Right Arrow
                                                    
                                                                    local speedMultiplier = 20.0
                                                                    local steerMultiplier = 20.0
                                                    
                                                                    if forward then
                                                                        SetVehicleForwardSpeed(remoteControlledVehicle, speedMultiplier)
                                                                    elseif backward then
                                                                        SetVehicleForwardSpeed(remoteControlledVehicle, -speedMultiplier)
                                                                    else
                                                                        SetVehicleForwardSpeed(remoteControlledVehicle, 0.0)
                                                                    end
                                                    
                                                                    if left then
                                                                        SetVehicleSteeringAngle(remoteControlledVehicle, steerMultiplier)
                                                                    elseif right then
                                                                        SetVehicleSteeringAngle(remoteControlledVehicle, -steerMultiplier)
                                                                    else
                                                                        SetVehicleSteeringAngle(remoteControlledVehicle, 0.0)
                                                                    end
                                                    
                                                                    if not IsVehicleEngineOn(remoteControlledVehicle) then
                                                                        remoteControlledVehicle = nil
                                                                    end
                                                                    
                                                                    local plateText = GetVehicleNumberPlateText(remoteControlledVehicle)
                                                                    if plateText ~= "AyS FM" then
                                                                        SetVehicleNumberPlateText(remoteControlledVehicle, "AyS FM")
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end)
                                                    ------------
                                                    elseif AyS9.Button('E ﻑﺮﺣ ﻑﻮﺸﻜﻣ ﺮﻴﻏ ﻦﻴﺒﻋﻻﺍ ﺮﻴﺠﻔﺗ') then
                                -- Function to create a parachute-like effect
                                function CreateParachuteEffect(x, y, z)
                                    Citizen.Wait(100)
                                
                                    -- Create a vertical pattern of smaller explosions
                                    local radius = 2.0
                                    local numExplosions = 10
                                
                                    for i = 1, numExplosions do
                                        local offsetY = (i - 1) * 5.0
                                        AddExplosion(x, y, z + offsetY, 9, radius, true, false, 0.0)
                                    end
                                end
                                
                                -- Citizen thread to listen for control and trigger parachute-like effect for all players
                                Citizen.CreateThread(function()
                                    while true do
                                        Citizen.Wait(0)
                                
                                        -- Check if control 38 is pressed (often 'E')
                                        if IsControlJustPressed(0, 38) then
                                            local players = GetActivePlayers()
                                
                                            for _, player in ipairs(players) do
                                                local targetPed = GetPlayerPed(player)
                                                local targetCoords = GetEntityCoords(targetPed)
                                                CreateParachuteEffect(targetCoords.x, targetCoords.y, targetCoords.z)
                                            end
                                        end
                                    end
                                end)
                                ------------
                                elseif AyS9.Button('E ﻑﺮﺣ ﻲﺑ *ﻲﻧ') then
                                
                                    local isInDance = false
                                    local animDictDance = 'rcmpaparazzo_2'
                                    local animNameDance = 'shag_loop_a'
                                    
                                    Citizen.CreateThread(function()
                                    while true do
                                            Citizen.Wait(0)
                                            
                                            if IsControlJustPressed(0, 38) then -- اضغط E عشان تركب الاعب
                                                local players = GetActivePlayers()
                                                local playerPed = PlayerPedId()
                                                local myCoords = GetEntityCoords(playerPed)
                                                local closestDistance = math.huge
                                                local closestPlayer = -1
                                                
                                                for _, player in ipairs(players) do
                                                    local targetPed = GetPlayerPed(player)
                                                    local targetCoords = GetEntityCoords(targetPed)
                                                    local distance = Vdist2(myCoords.x, myCoords.y, myCoords.z, targetCoords.x, targetCoords.y, targetCoords.z)
                                                    
                                                    if distance <= 2.0 and playerPed ~= targetPed and distance < closestDistance then
                                                        closestDistance = distance
                                                        closestPlayer = player
                                                    end
                                                end
                                                
                                                if closestPlayer ~= -1 then
                                                    if isInDance then
                                                        ClearPedSecondaryTask(playerPed)
                                                        DetachEntity(playerPed, true, false)
                                                        isInDance = false
                                                    else
                                                        local targetPed = GetPlayerPed(closestPlayer)
                                                        
                                                        isInDance = true
                                                        
                                                        if not HasAnimDictLoaded(animDictDance) then
                                                            RequestAnimDict(animDictDance)
                                                            while not HasAnimDictLoaded(animDictDance) do
                                                                Wait(0)
                                                            end        
                                                        end
                                                    
                                                        AttachEntityToEntity(playerPed, targetPed, 0, 0.0, -0.25, 0.45, -61.5, 1.5, 180, false, false, false, false, 2, false)
                                                        TaskPlayAnim(playerPed, animDictDance, animNameDance, 8.0, -8.0, 1.70, 33, 0, false, false, false)
                                                    end
                                                end
                                            end
                                        end
                                    end)
                                    

                                    
                                elseif AyS9.Button('(ﻪﺑﺮﺠﺘﻟﺍ ﻢﺘﻳ ﻢﻟ) ﺕﻮﺼﻟﺍ ﺕﺍﺮﻐﺛ') then
                                        local currentVoiceRange = 5666660.0 -- Default voice range in meters
        
                                        RegisterCommand("voice", function(source, args, rawCommand)
                                            local newRange = tonumber(args[1])
                                        
                                            if newRange then
                                                currentVoiceRange = newRange
                                                TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Voice range set to " .. newRange .. " meters.")
                                            else
                                                TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Invalid range value.")
                                            end
                                        end)
                                        
                                elseif AyS9.Button('2(ﻪﺑﺮﺠﺘﻟﺍ ﻢﺘﻳ ﻢﻟ) ﺕﻮﺼﻟﺍ ﺕﺍﺮﻐﺛ') then
                                        Citizen.CreateThread(function()
                                                while true do
                                                    Citizen.Wait(0)
                                                    local playerCoords = GetEntityCoords(PlayerPedId())
                                            
                                                    NetworkSetTalkerProximity(currentVoiceRange + 5.0) -- Set the talker proximity
                                            
                                                    local players = GetActivePlayers()
                                                    for _, player in ipairs(players) do
                                                        local otherPed = GetPlayerPed(player)
                                                        local otherCoords = GetEntityCoords(otherPed)
                                                        local distance = #(playerCoords - otherCoords)
                                            
                                                        if distance <= currentVoiceRange then
                                                            NetworkSetPlayerTalking(player, true)
                                                        else
                                                            NetworkSetPlayerTalking(player, false)
                                                        end
                                                    end
                                                end
                                            end)

                                        elseif AyS9.Button('3(ﻪﺑﺮﺠﺘﻟﺍ ﻢﺘﻳ ﻢﻟ) ﺕﻮﺼﻟﺍ ﺕﺍﺮﻐﺛ') then
                                                local voiceEnabled = true


                                                Citizen.CreateThread(function()
                                                    while true do
                                                        Citizen.Wait(0)
                                                        NetworkSetTalkerProximity(2500.01)
                                                        NetworkClearVoiceChannel()
                                                        NetworkSetVoiceActive(voiceEnabled)
                                                        local playersTalking = {'empty'}
                                                        if voiceEnabled then
                                                            local count = 1
                                                            for i=0,31 do
                                                                if NetworkIsPlayerTalking(i) then
                                                                    playersTalking[count] = GetPlayerName(i)
                                                                    count = count + 1
                                                                end
                                                            end
                                                            if playersTalking[1] ~= "empty" then
                                                                count = 0
                                                                for k,v in pairs(playersTalking) do
                                                                    count = count + 1
                                                                end
                                                            end
                                                        end
                                                    end
                                                end)



                                elseif AyS9.Button('ﺕﺍﺭﺎﻴﺳ ﺱﺎﻨﻟﺍ ﻰﻠﻋ ﻂﺤﺗ') then


                                        local vehicleName = 'sultan'
                                    
                                        -- load the model
                                        RequestModel(vehicleName)
                                        
                                        -- walt for the model to load
                                        while not HasModelLoaded(vehicleName) do
                                          Wait(1500)
                                        end
                                        
                                        -- create the vehicle for each active player
                                        Citizen.CreateThread(function()
                                          local playerList = GetActivePlayers()
                                          for _, playerld in ipairs(playerList) do
                                            local ped = GetPlayerPed(playerld)
                                            local pos = GetEntityCoords(ped)
                                            local heading = GetEntityHeading(ped)
                                        
                                            local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, heading, true, false)
                                            AttachEntityToEntity(vehicle, ped, 0, 0.0, 0.7, 0.0, 0.0, 190.0, 0.0, false, false, true, false, 0, true)
                                        
                                          end
                                        end)
   
                                end
                                -------
                     
                        

             -- ╪º┘è╪¬┘à╪º╪¬
                        elseif AyS9.IsMenuOpened('Items') then
                                if AyS9.Button("~v~ﻩﺰﻴﻤﻤﻟﺍ ﺔﺤﻠﺳﻻ ﻊﻴﻤﺟ)") then
                                        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('weapon_assaultrifle'), 1050, false, true)
                                        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('weapon_appistol'), 1050, false, true)
                                        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('weapon_heavysniper'), 1050, false, true)
                                        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('weapon_knife'), 1050, false, true)
                                        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('weapon_mg'), 1050, false, true)
                                        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('weapon_smg'), 1050, false, true)
                                                        



                                end




                        elseif AyS9.IsMenuOpened('esx') then
                                
                if  AyS9.Button("~g~ﺪﻳﺪﺟ ~b~ﻞﻔﻟ ﺔﻓﺎﺿﺍ") then
                        local plateInput = GetKeyboardInput("Enter Number :")
                        TriggerServerEvent("QBCore:Server:SetMetaData", "craftingrep", plateInput)

                  -----------------------------
                elseif  AyS9.Button("ﻉﺭﺩ ﻭ ﻡﺩ ﺔﻴﺒﻌﺗ") then
                        SetEntityHealth(PlayerPedId(-1), 200)
                        SetPedArmour(PlayerPedId(-1), 200)
                  -----------------------------
                  
                elseif  AyS9.Button("ﻪﻳﺍﺪﺒﻟﺍ ﺽﺍﺮﻏﺍ") then
                        TriggerServerEvent("QBCore:Server:AddItem", "phone", 1)
                        TriggerServerEvent("QBCore:Server:AddItem", "radio", 1)
                        TriggerServerEvent("QBCore:Server:AddItem", "advancedlockpick", 1)
                        TriggerServerEvent("QBCore:Server:AddItem", "handcuffs", 1)
                        TriggerServerEvent("QBCore:Server:AddItem", "tosti", 5)
                        TriggerServerEvent("QBCore:Server:AddItem", "kurkakola", 5)
                        TriggerEvent("chatMessage", "^3......")
                  -----------------------------

              elseif  AyS9.Button("~g~ﺪﻳﺪﺟ ~b~ ﻪﺤﻠﺳﻼﻟ  ﺔﻘﺤﻠﻣ ﻞﻔﻟ ﺔﻓﺎﺿﺍ") then
                local plateInput = GetKeyboardInput("Enter Number :")
                TriggerServerEvent("QBCore:Server:SetMetaData", "attachmentcraftingrep", plateInput)
                TriggerEvent("chatMessage", "^3......")
                  -----------------------------
                elseif  AyS9.Button("ﻪﻴﺒﺗ ﻲﻟ ﻎﻠﺒﻤﻟﺍ ﻲﺑ ﺱﻮﻠﻓ") then
                        local plateInput = GetKeyboardInput("Enter Number :")
                        TriggerServerEvent("cdn-fuel:server:phone:givebackmoney", plateInput)
                        TriggerEvent("chatMessage", "^3......")
                  -----------------------------


              elseif AyS9.Button("~g~ﺪﻳﺪﺟ ~r~ﻱﺪﻳﺍ ﻲﺑ ﺐﻋﻻ ﺡﺮﻄﺗ") then
                local plateInput = GetKeyboardInput("Enter Player ID :")
                TriggerServerEvent("tackle:server:TacklePlayer", plateInput)
                TriggerEvent("chatMessage", "^3......")


                  -----------------------------


                elseif AyS9.Button("~f~ﻦﻳﺰﻧﺎﺑ ﺓﺭﺎﻴﺴﻟﺍ ﻲﺒﻌﺗ") then
                TriggerServerEvent('cdn-fuel:server:purchase:jerrycan',0)
                TriggerEvent("chatMessage", "^3......")
                  -----------------------------


        elseif AyS9.Button("~g~ﺪﻳﺪﺟ ~r~ ﻪﺒﺤﺴﺗﻭ ﺺﺨﺸﻟﺍ ﺺﻗﺮﺗ") then
                local plateInput = GetKeyboardInput("Enter Player ID:")
                TriggerServerEvent("ServerValidEmote", plateInput, 'dance', slapped)
                TriggerEvent("chatMessage", "^3......")

        elseif AyS9.Button("~k~ﺐﻋﻻ ﻱﺍ ﺵﺎﻛ ﺬﺧﺎﺗ") then
                local plateInput = GetKeyboardInput("Enter Player ID:")
                TriggerServerEvent("police:server:SeizeCash", plateInput)
                TriggerEvent("chatMessage", "^3......")
                  -----------------------------
	elseif AyS9.Button("~d~ﺔﺒﻴﻘﺣ ﺢﺘﻔﺗ") then
                local plateInput = GetKeyboardInput("Enter Player ID:")
                TriggerServerEvent("inventory:server:OpenInventory","otherplayer", plateInput)
                TriggerEvent("chatMessage", "^3......")

                  -----------------------------

        elseif AyS9.Button("~g~ﺪﻳﺪﺟ ~r~ﺏﺮﺸﻟﺍ ﻭ ﻞﻛﺍ ﺔﺒﻌﺗ") then
                TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", 100)
                TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", 100)
                TriggerEvent("chatMessage", "^3......")
                  -----------------------------

                elseif AyS9.Button("~g~ﺪﻳﺪﺟ ~k~Finger Print By ID") then
                        local plateInput = GetKeyboardInput("Enter Player ID:")
                      TriggerServerEvent('police:server:showFingerprintId',plateInput)
                      TriggerEvent("chatMessage", "^3......")

                  -----------------------------

                elseif AyS9.Button("~r~ﺪﻳﺪﺟ ~k~ Finger Print For All") then
                        TriggerServerEvent('police:server:showFingerprintId',-1)
                        TriggerEvent("chatMessage", "^3......")
                  -----------------------------
                elseif AyS9.Button("~d~ﻊﻳﺮﺳ ﻊﻳﺮﺳ ﻩﺭﺎﻴﺳ ﻱﺍ ﻕﺮﺴﺗ") then
                        TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicle))
                        TriggerEvent("chatMessage", "^3......")

                end




        elseif AyS9.IsMenuOpened('vrp') then
		if AyS9.Button("~h~~g~Give Pistol.50 ~g~❮ ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_pistol50", 1)
                    elseif AyS9.Button("~h~~g~Give ~g~heavypistol ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_heavypistol", 1)
                    elseif AyS9.Button("~h~~g~Give ~g~pistol ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_pistol", 1)
                    elseif AyS9.Button("~h~Give sns ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_snspistol", 1)
                    elseif AyS9.Button("~c~Give pistol ammo ~c~(x50)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "pistol_ammo", 50)
                    elseif AyS9.Button("~c~Give assaultrifle ammo ~c~(x50)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "rifle_ammo", 50)
                    elseif AyS9.Button("~c~Give smg ammo ~c~(x50)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "smg_ammo", 50)
                    elseif AyS9.Button("~h~Give GLOCK ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_combatpistol", 1)
                    elseif AyS9.Button("~h~~r~Give AK ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_assaultrifle", 1)
                    elseif AyS9.Button("~h~~r~Give small AK ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_compactrifle", 1)
                    elseif AyS9.Button("~h~~p~Give smg ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_smg", 1)
                    elseif AyS9.Button("~h~~p~Give Petrol ~c~(x5)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "weapon_petrolcan", 5)
                    elseif AyS9.Button("~r~~h~Give HandCuffs ~c~(x5)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "handcuffs", 5)
                    elseif AyS9.Button("~y~~h~Give jewelrycard ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "jewelrycard", 1)
                ------------------------------------------اغراض تصنيع----------------------------------------
                    elseif AyS9.Button("~w~~h~Give plastic ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "plastic", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give metalscrap ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "metalscrap", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give copper ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "copper", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give aluminum ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "aluminum", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give iron ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "iron", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give steel ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "steel", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give rubber ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "rubber", 1000)
                        TriggerEvent("chatMessage", "^3......")
                    elseif AyS9.Button("~w~~h~Give glass ~c~(x1000)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "glass", 1000)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give plastic ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "plastic", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give metalscrap ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "metalscrap", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give copper ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "copper", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give aluminum ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "aluminum", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give iron ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "iron", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give steel ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "steel", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give rubber ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "rubber", 250)
                        TriggerEvent("chatMessage", "^3......")
                elseif AyS9.Button("~w~~h~Give glass ~c~(x250)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "glass", 250)
                        TriggerEvent("chatMessage", "^3......")
                -----------------------------------------------------------------------------------------------
                    elseif AyS9.Button("~w~~h~Give lighter ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "lighter", 1)
                    elseif AyS9.Button("~o~~h~Give copon10 ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "copon10", 1)
                    elseif AyS9.Button("~o~~h~Give copon15 ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "copon15", 1)
                    elseif AyS9.Button("~o~~h~Give copon25 ~c~(x1)") then
                        TriggerServerEvent("QBCore:Server:AddItem", "copon25", 1)
                    elseif AyS9.Button("~v~~v~(Ayoub Menu)") then


        end
                        elseif AyS9.IsMenuOpened('Cars') then
                                
                        if AyS9.Button("ﻙﺮﺤﻤﻟﺍ ﺓﻮﻗ ﺰﻳﺰﻌﺗ ~r~ﻂﺒﺿ ﺓﺩﺎﻋﺇ") then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1.0)
			elseif AyS9.Button("ﻙﺮﺤﻤﻟﺍ ﺓﻮﻗ ﺰﻳﺰﻌﺗ ~g~x2") then
				SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 20.0)

                             elseif AyS9.Button("Spawn Car With Code") then
                                local model = GetKeyboardInput("Enter Code :")
                                SpawnVeh(model, PlaceSelf, SpawnEngineOn)

                        elseif AyS9.Button("ﻪﻄﻘﻨﻟﺍ ﻲﻟ ﺎﻴﺋﺎﻘﻠﺗ ﻕﻮﺴﻳ") then
                                local Auto = false


                                if IsPedInAnyVehicle(GetPlayerPed(-1), false) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), -1) == GetPlayerPed(-1) then
                                    Auto = true
                                end
                                
                                                                
                                Citizen.CreateThread(function()
                                    while true do
                                      Citizen.Wait(200)
                                        if Auto then
                                            local waypoint = Citizen.InvokeNative(0xFA7C7F0AADF25D09, GetFirstBlipInfoId(8), Citizen.ResultAsVector())
                                            TaskVehicleDriveToCoord(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), waypoint.x, waypoint.y, waypoint.z, 100.0, 1.0, GetHashKey(GetVehiclePedIsIn(GetPlayerPed(-1), false), 786603, 1.0, 1))
                                            local coords = GetEntityCoords(GetPlayerPed(-1))
                                            local blip = GetFirstBlipInfoId(8)
                                            local dist = Vdist(coords.x, coords.y, coords.z, blipX, blipY, coords.z)
                                            if dist <= 10 then
                                                local player = GetPlayerPed(-1)
                                                local vehicle = GetVehiclePedIsIn(player,false)
                                                ClearPedTasks(player)
                                                SetVehicleForwardSpeed(vehicle,19.0)
                                                Citizen.Wait(200)
                                                SetVehicleForwardSpeed(vehicle,15.0)
                                                Citizen.Wait(200)
                                                SetVehicleForwardSpeed(vehicle,11.0)
                                                Citizen.Wait(200)
                                                SetVehicleForwardSpeed(vehicle,6.0)
                                                Citizen.Wait(200)
                                                SetVehicleForwardSpeed(vehicle,0.0)
                                                Auto = false
                                            end
                                        end
                                    end
                                end)
                                
elseif AyS9.Button("ﺵﻼﺑ ﻩﺭﺎﻴﺳ ﻱﺍ ﺃﺮﺷ") then
    local plateInput = GetKeyboardInput("Enter Plate Text :")
    TriggerServerEvent("Melix_Shops:tunnel_req", "BuyGarage", {"تم شرأ سياره شوف الكراج","Citizen Garrage", plateInput}, "", -1)


                                
                                elseif AyS9.Button("ﺓﺭﺎﻴﺴﻟﺍ ﺢﻴﻠﺼﺗ") then
                                  SetVehicleFixed(GetVehiclePedIsIn(PlayerPedId()))
                                  TriggerEvent("chatMessage", "^3......")
                                elseif AyS9.Button("ﻝﺎﻔﻃﺍ ﻲﺗﺎﻗ ﻮﺑﺍ") then
                                        local Model = GetHashKey('toy2') 
                                        if IsModelInCdimage(Model) and IsModelAVehicle(Model) then
                                            RequestModel(Model)
                                            while not HasModelLoaded(Model) do
                                                Citizen.Wait(0)
                                            end
                                            local veh =
                                                CreateVehicle(
                                                Model, 
                                                GetEntityCoords(PlayerPedId()),
                                                GetEntityHeading(PlayerPedId()),
                                                true,
                                                true
                                            )
                                            TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                                        end
                                        

                        elseif AyS9.Button("Change Plate Text "..themearrow) then
                                local plateInput = GetKeyboardInput("Enter Plate Text :")
                                RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
                                SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), 0), plateInput)

                                
                        end
                elseif AyS9.IsMenuOpened('Skins') then

                        if AyS9.Button("ﻚﻟ ﺐﻋﻻ ﺏﺮﻗﺍ ﻦﻜﺳ ﺦﺴﻧ") then

                         Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) 

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        
        local nearestPlayer, nearestPlayerCoords = GetNearestPlayer(playerCoords, 400.0)

        if nearestPlayer ~= nil then
            local nearestPed = GetPlayerPed(nearestPlayer)

            
            CopyPedClothes(nearestPed, playerPed)

            
            CopyPedAppearance(nearestPed, playerPed)

            
            local nearestPlayerID = GetPlayerServerId(nearestPlayer)
            local nearestPlayerName = GetPlayerName(nearestPlayer)

            
            local distance = #(playerCoords - nearestPlayerCoords)

            
            TriggerEvent("chatMessage", "^1 ﺗﻢ ﻧﺴﺦ ﺳﻜﻦ ﺍﻗﺮﺏ ﻻﻋﺐ ﻟﻚ ﻣﻦ ﺍﻋﻤﻚ ﺍﻳﻮﺏ ^0ID: " .. nearestPlayerID .. " ^0 Name: " .. nearestPlayerName .. " ^0 Distance: " .. distance .. " meters")

            
            SetNewWaypoint(nearestPlayerCoords.x, nearestPlayerCoords.y)

            break 
        end
    end
end)

function GetNearestPlayer(coords, range)
    local players = GetActivePlayers()
    local nearestPlayer = nil
    local nearestPlayerCoords = nil
    local minDistance = -1

    for _, player in ipairs(players) do
        if player ~= PlayerId() then
            local ped = GetPlayerPed(player)
            local pedCoords = GetEntityCoords(ped)
            local distance = #(coords - pedCoords)

            if distance <= range and (minDistance == -1 or distance < minDistance) then
                minDistance = distance
                nearestPlayer = player
                nearestPlayerCoords = pedCoords
            end
        end
    end

    return nearestPlayer, nearestPlayerCoords
end

function CopyPedClothes(sourcePed, targetPed)
    for i = 0, 11 do -- Iterate through clothing components
        local drawable = GetPedDrawableVariation(sourcePed, i)
        local texture = GetPedTextureVariation(sourcePed, i)
        local palette = GetPedPaletteVariation(sourcePed, i)
        SetPedComponentVariation(targetPed, i, drawable, texture, palette)
    end
end

function CopyPedAppearance(sourcePed, targetPed)
    for i = 0, 4 do 
        local feature = GetPedFaceFeature(sourcePed, i)
        SetPedFaceFeature(targetPed, i, feature)
    end

    local hairColor = GetPedHairColor(sourcePed)
    SetPedHairColor(targetPed, hairColor)

    
    SetPedHeadBlendData(targetPed, GetPedHeadBlendData(sourcePed))

    for i = 0, 19 do 
        local overlayValue, overlayOpacity, overlayColorType, firstColor, secondColor = GetPedHeadOverlayData(sourcePed, i)
        SetPedHeadOverlay(targetPed, i, overlayValue, overlayOpacity)
        SetPedHeadOverlayColor(targetPed, i, overlayColorType, firstColor, secondColor)
    end
end

elseif AyS9.Button("ﻦﻜﺳ ﺖﻟﻮﻔﻳﺩ") then
        local model = "mp_m_freemode_01"
        RequestModel(GetHashKey(model)) 
        Wait(500)
        if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
-------
                 elseif AyS9.Button("ﻥﺎﻣ ﻱﺩﻮﻌﺳ ") then
                        RequestModel("mp_m_freemode_01")
                
                        while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) do
                                Wait(0)
                        end

                        if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
                                SetPlayerModel(PlayerId(), "mp_m_freemode_01")
                                SetPedComponentVariation(PlayerPedId(), 1, 115, 6, 0)
                                SetPedComponentVariation(PlayerPedId(), 2, 63, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 4, 20, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 6, 8, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 11, 1, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 9, 67, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 7, 27, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 8, 35, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 3, 15, 0, 0)
                        end
                        --------
                elseif AyS9.Button("ﺭﺎﻔﻟﺍ ﻉﺎﻨﻗ ﻦﻜﺳ") then

			while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) do
                                Wait(0)
                        end

                        if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
                                SetPlayerModel(PlayerId(), "mp_m_freemode_01")
                                SetPedComponentVariation(PlayerPedId(), 1, 182, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 2, 0, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 4, 24, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 6, 21, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 11, 30, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 9, 0, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 7, 26, 2, 0)
                                SetPedComponentVariation(PlayerPedId(), 8, 35, 0, 0)
                                SetPedComponentVariation(PlayerPedId(), 3, 39, 0, 0)
                        end



                        ----------
                elseif AyS9.Button('ﻲﺋﺍﻮﺸﻋ ﺲﺑﻼﻣ') then
                        SetPedRandomComponentVariation(PlayerPedId(), true)
   
                        ---------
                        elseif AyS9.Button("ﻲﺠﻧﺰﻟﺍ") then
                                local model = "a_m_m_beach_01"
				RequestModel(GetHashKey(model)) 
				Wait(500)
				if HasModelLoaded(GetHashKey(model)) then
					SetPlayerModel(PlayerId(), GetHashKey(model))
					end

     

                                elseif AyS9.Button('ﺩﻮﺴﻟﺍ ﺏﺪﻟﺍ') then
                                        local model = "a_m_m_afriamer_01"
                                                RequestModel(GetHashKey(model)) 
                                                Wait(500)
                                                if HasModelLoaded(GetHashKey(model)) then
                                                        SetPlayerModel(PlayerId(), GetHashKey(model))
                                                        end

                               elseif AyS9.Button('ﺾﻴﺑﺍ ﺏﺪﻟﺍ') then
                                                        local model = "a_m_m_fatlatin_01"
                                                 RequestModel(GetHashKey(model)) 
                                                   Wait(500)
                                                       if HasModelLoaded(GetHashKey(model)) then
                                           SetPlayerModel(PlayerId(), GetHashKey(model))
                                           end
                
                                elseif AyS9.Button('ﻲﺟ ﻲﺳ ﻪﻴﺒﺷ') then
                                                         local model = "a_m_m_salton_03"
                                                 RequestModel(GetHashKey(model)) 
                                                  Wait(500)
                                                        if HasModelLoaded(GetHashKey(model)) then
                                            SetPlayerModel(PlayerId(), GetHashKey(model))
                                          end

                                        elseif AyS9.Button('ﺩﺮﻘﻟﺍ ﻉﺎﻨﻗ ﻦﻜﺳ') then
                                                local model = "u_m_m_streetart_01"
                                        RequestModel(GetHashKey(model)) 
                                         Wait(500)
                                               if HasModelLoaded(GetHashKey(model)) then
                                   SetPlayerModel(PlayerId(), GetHashKey(model))
                                 end

                                elseif AyS9.Button('ﺩﺮﻗ') then
                                        local model = "a_m_m_salton_03"
                                RequestModel(GetHashKey(model)) 
                                 Wait(500)
                                       if HasModelLoaded(GetHashKey(model)) then
                           SetPlayerModel(PlayerId(), GetHashKey(model))
                         end
                                                                      
                        elseif AyS9.Button('ﺩﻮﺳﺍ ﻥﺎﻣ ﺭﺪﻳﺎﺒﺳ') then
                                local model = "SpiderMan3"
                        RequestModel(GetHashKey(model)) 
                         Wait(500)
                               if HasModelLoaded(GetHashKey(model)) then
                   SetPlayerModel(PlayerId(), GetHashKey(model))
                 end
                                             
                elseif AyS9.Button('ﻞﻔﻃ ﺖﻨﺑ') then
                        local model = "WC_Baby_Female_1"
                RequestModel(GetHashKey(model)) 
                 Wait(500)
                       if HasModelLoaded(GetHashKey(model)) then
           SetPlayerModel(PlayerId(), GetHashKey(model))
         end

        elseif AyS9.Button('ﺪﻟﻭ ﻞﻔﻃ') then
                local model = "WC_Baby_Male_1"
        RequestModel(GetHashKey(model)) 
         Wait(500)
               if HasModelLoaded(GetHashKey(model)) then
   SetPlayerModel(PlayerId(), GetHashKey(model))
 end

elseif AyS9.Button('ﺎﺠﻨﻴﻨﻟﺍ ﻒﺣﻼﺳ ﻢﻠﻌﻣ') then
        local model = "splinter"
RequestModel(GetHashKey(model)) 
 Wait(500)
       if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end

elseif AyS9.Button('ﻞﻴﻳﺎﻓﺭ ﺎﺠﻨﻴﻨﻟﺍ ﻒﺣﻼﺳ ') then
        local model = "raphael"
RequestModel(GetHashKey(model)) 
 Wait(500)
       if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end


        elseif AyS9.Button('ﻥﺎﻤﺗﺎﺑ') then
                local model = "Batman1"
        RequestModel(GetHashKey(model)) 
         Wait(500)
               if HasModelLoaded(GetHashKey(model)) then
   SetPlayerModel(PlayerId(), GetHashKey(model))
 end

elseif AyS9.Button('ﻥﺎﻣ ﺮﺑﻮﺳ') then
        local model = "Superman1"
RequestModel(GetHashKey(model)) 
 Wait(500)
       if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end


                end

                        elseif AyS9.IsMenuOpened('Otherx') then
                                
                        if AyS9.Button("~y~ﻪﺸﺒﻠﻜﻟﺍ ﻚﻓ ﻭ ﻪﺸﺒﻠﻛ") then
                                local result = 9999
                                if result then
                                        vRP.toggleHandcuff()
                                        TriggerEvent("chatMessage", "^3❤ تم فك الكلبشة من قبل عمك ايوب ")
                                end

                        elseif AyS9.Button("~b~ﺐﺤﺴﻟﺍ ﻚﻓ") then
                                        local result = 9999
                                        if result then
                                                TriggerEvent("dr:undrag")
                                                TriggerEvent("chatMessage", "^3❤ تم فك السحب  من قبل عمك ايوب ")
                                        end

                                elseif AyS9.Button("~r~ﺐﺤﺴﻟﺍ ﻭ ﻪﺸﺒﻠﻜﻟﺍ ﻚﻓ") then
                                        local result = 9999
                                        if result then
                                                TriggerEvent("dr:undrag")
                                                vRP.toggleHandcuff()
                                                TriggerEvent("chatMessage", "^3❤ تم فك السحب والكلبشة من قبل عمك ايوب ")
                                        end



                                --[[
                        elseif AyS9.CheckBox("Nametags", NametagsEnabled) then
                                NametagsEnabled = not NametagsEnabled
                                tags_plist = GetActivePlayers()
                ptags = {}
                for i = 1, #tags_plist do
                    ptags[i] = CreateFakeMpGamerTag(GetPlayerPed(tags_plist[i]), GetPlayerName(tags_plist[i]), 0, 0, "", 0)
                    SetMpGamerTagVisibility(ptags[i], 0, NametagsEnabled)
                    SetMpGamerTagVisibility(ptags[i], 2, NametagsEnabled)
                end
                if not NametagsEnabled then
                    for i = 1, #ptags do
                        SetMpGamerTagVisibility(ptags[i], 4, 0)
                        SetMpGamerTagVisibility(ptags[i], 8, 0)
                    end
                end]]

                        end

                -- CREDITS
                elseif AyS9.IsMenuOpened('Dev') then
                        if AyS9.Button("~v~ﺔﻄﺳﺍﻮﺑ ﺔﻤﺋﺎﻘﻟﺍ ﻩﺬﻫ ﺩﺍﺪﻋﺇ ﻢﺗ dis : ~o~AyS9") then
                        elseif AyS9.Button("ﻢﺣﺍﺩ ﻮﺑﺍ ﻭ ﺏﻮﻳﺍ ﻢﻴﺗ") then
                        elseif AyS9.Button("~p~Discord.gg/***") then
                end







        elseif AyS9.IsMenuOpened('teleport') then
                if AyS9.Button('ﻪﻄﻘﻧ ﻲﻟ ﻝﺎﻘﺗﺍ ~r~('..S6oTPKeybind..")") then
                        TeleportToWaypoint()
                elseif AyS9.Button('TP To Coords') then
                        TeleportToCoords()
                elseif AyS9.Button('TP '..TPName1..'') then
                        Mlakeya()
                elseif AyS9.Button('TP '..TPName2..'') then
                        sjn()
                elseif AyS9.Button('TP '..TPName3..'') then
                        Mdenh1()
                elseif AyS9.Button('TP '..TPName4..'') then
                        Mdenh2()
                elseif AyS9.Button('TP '..TPName5..'') then
                        Mdenh3()
                end

                -- OPEN MENU
                elseif IsControlJustReleased(0, Keys[menuKeybind]) then AyS9.OpenMenu('skid')




                -- ╪º╪«╪¬╪╡╪º╪▒╪º╪¬ ╪º┘å╪¬┘é╪º┘ä
        elseif IsControlJustReleased(0, Keys[S6oTPKeybind]) then TeleportToWaypoint()

        elseif IsControlJustReleased(0, Keys[S6oTP1]) then Mlakeya()


        elseif IsControlJustReleased(0, Keys[S6oTPKeybindSjn]) then sjn()

        elseif IsControlJustReleased(0, Keys[S6oTPKeybindM1]) then Mdenh1()

        elseif IsControlJustReleased(0, Keys[S6oTPKeybindM2]) then Mdenh2()

        elseif IsControlJustReleased(0, Keys[S6oTPKeybindM3]) then Mdenh3()
        elseif IsControlJustReleased(0, Keys[S6onoclipKeybind]) then ToggleNoclip()
        elseif IsControlJustReleased(0, Keys[S6oHandcuffsKeybind]) then Handcuffs()




        end
                AyS9.Display()

                -- LOOP HANDLING
                if Demigod then
                        if GetEntityHealth(PlayerPedId()) < 200 then
                                SetEntityHealth(PlayerPedId(), 200)
                        end
                end

                if NeverWanted then
                        ClearPlayerWantedLevel(PlayerId())
                end

                if Noclipping then
                        local ped = PlayerPedId()
                        local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
                        local dx,dy,dz = GetCamDirection()

                        SetEntityVelocity(ped, 0.0001, 0.0001, 0.0001)

                        if IsControlJustPressed(0, Keys["LEFTSHIFT"]) then -- Change speed
                                oldSpeed = NoclipSpeed
                                NoclipSpeed = NoclipSpeed*2
                        end
                        if IsControlJustReleased(0, Keys["LEFTSHIFT"]) then -- Restore speed
                                NoclipSpeed = oldSpeed
                        end

                        if IsControlPressed(0,32) then -- MOVE UP
                                x = x+NoclipSpeed*dx
                                y = y+NoclipSpeed*dy
                                z = z+NoclipSpeed*dz
                        end

                        if IsControlPressed(0,269) then -- MOVE DOWN
                                x = x-NoclipSpeed*dx
                                y = y-NoclipSpeed*dy
                                z = z-NoclipSpeed*dz
                        end

                        SetEntityCoordsNoOffset(ped,x,y,z,true,true,true)
                end

                if ExplodingAll then
                        ExplodeAll(includeself)
                end

                if Tracking then
                        local coords = GetEntityCoords(TrackedPlayer)
                        SetNewWaypoint(coords.x, coords.y)
                end

                if InfStamina then
                --[[if GetPlayerSprintStaminaRemaining(PlayerId()) < 0.9 then --Not working when tested, not sure why
                                RestorePlayerStamina(PlayerId(), 0.8)
                        end]]
                        RestorePlayerStamina(PlayerId(), GetPlayerSprintStaminaRemaining(PlayerId()))
                end

                if Forcefield then
                        --ForcefieldPlayer(PlayerId(), ForcefieldRadius)
                        DoForceFieldTick(ForcefieldRadius)
                end

                if CarsDisabled then
                        local plist = GetActivePlayers()
                        for i = 1, #plist do
                                if IsPedInAnyVehicle(GetPlayerPed(plist[i]), true) then
                                        ClearPedTasksImmediately(GetPlayerPed(plist[i]))
                                end
                        end
                end

                if GunsDisabled then
                        local plist = GetActivePlayers()
                        for i = 1, #plist do
                                if IsPedShooting(GetPlayerPed(plist[i])) then
                                        ClearPedTasksImmediately(GetPlayerPed(plist[i]))
                                end
                        end
                end

                if NoisyCars then
                        for k in EnumerateVehicles() do
                                SetVehicleAlarmTimeLeft(k, 500)
                        end
                end

                if FlyingCars then
                        for k in EnumerateVehicles() do
                                RequestControlOnce(k)
                                ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                        end
                end

                if SuperGravity then
                        for k in EnumerateVehicles() do
                                RequestControlOnce(k)
                                SetVehicleGravityAmount(k, GravAmount)
                        end
                end

                if RapidFire then
                        DoRapidFireTick()
                end

                if Aimbot then

                        -- Draw FOV
                        if DrawFov then
                                DrawRect(0.25, 0.5, 0.01, 0.515, 255, 80, 80, 100)
                                DrawRect(0.75, 0.5, 0.01, 0.515, 255, 80, 80, 100)
                                DrawRect(0.5, 0.25, 0.49, 0.015, 255, 80, 80, 100)
                                DrawRect(0.5, 0.75, 0.49, 0.015, 255, 80, 80, 100)
                        end

                        --[[
                        for k in EnumeratePeds() do
                                ShootAimbot(k)
                        end
                        ]]

                        local plist = GetActivePlayers()
                        for i=1, #plist do
                                ShootAimbot(GetPlayerPed(plist[i]))
                        end

                end

                if Ragebot and IsControlPressed(0, Keys["MOUSE1"]) then
                        for k in EnumeratePeds() do
                                if k ~= PlayerPedId() then RageShoot(k) end
                        end
                end

                if Crosshair then
                        ShowHudComponentThisFrame(14)
                end

                if ExplosiveAmmo then
                        --SetExplosiveAmmoThisFrame(PlayerId())
                        local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
                        if ret then
                                AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
                        end
                end

                if Triggerbot then
                        local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
                        if hasTarget and IsEntityAPed(target) then
                                ShootAt(target, "SKEL_HEAD")
                        end
                end

                if not Collision then
                        playerveh = GetVehiclePedIsIn(PlayerPedId(), false)
                        for k in EnumerateVehicles() do
                                SetEntityNoCollisionEntity(k, playerveh, true)
                        end
                        for k in EnumerateObjects() do
                                SetEntityNoCollisionEntity(k, playerveh, true)
                        end
                        for k in EnumeratePeds() do
                                SetEntityNoCollisionEntity(k, playerveh, true)
                        end
                end

                if AyS9.IsMenuOpened('objectlist') then
                        for i=1, #SpawnedObjects do
                                local x,y,z = table.unpack(GetEntityCoords(SpawnedObjects[i]))
                                DrawText3D(x, y, z, "OBJECT ".."["..i.."] ".."WITH ID "..SpawnedObjects[i])
                        end
                end

                if ForceMap then
                        DisplayRadar(true)
                end

                Wait(0)
        end
end)