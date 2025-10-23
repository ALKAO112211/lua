--====================================================
--  🩸 ia3x MENU by Ayoub - Custom Macho Lua UI
--====================================================

print("🚀 Loading ia3x custom menu...")

-- رابط الـ HTML (عدّله لو رفعت ملفك)
local menuURL = "https://raw.githubusercontent.com/ALKAO112211/lua/refs/heads/main/menu.html" 

-- إنشاء و عرض المنيو
local DuiHandle = MachoCreateDui(menuURL)
MachoShowDui(DuiHandle)
print("[ia3x] Menu loaded from: " .. menuURL)

-- مفتاح الإظهار والإخفاء (INSERT و DELETE)
MachoOnKeyDown(function(key)
    if key == 0x2D then -- INSERT
        MachoShowDui(DuiHandle)
        print("[ia3x] Menu shown")
    elseif key == 0x2E then -- DELETE
        MachoHideDui(DuiHandle)
        print("[ia3x] Menu hidden")
    end
end)

-- إرسال رسائل من Lua إلى واجهة HTML (لو حابب تتحكم بالمنيو)
function SendMenuMessage(message)
    MachoSendDuiMessage(DuiHandle, message)
end

-- مثال على تعديل سلايدر
-- SendMenuMessage('{"type":"update_slider","id":"val1","value":150}')

-- إغلاق المنيو نهائيًا
function CloseMenu()
    MachoDestroyDui(DuiHandle)
    print("[ia3x] Menu closed")
end

print("✅ ia3x Menu Ready!")
