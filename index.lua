--ihaveamac--
-- https://github.com/ihaveamac/downgrade-check
version = "1.0"

-- 9.2 NATIVE_FIRM: 2.46-0
firmmajor, firmminor, firmrev = System.getKernel()
downgraded = false
if firmmajor <= 2 and firmminor <= 46 and firmrev <= 0 then
    downgraded = true
end

Screen.waitVblankStart()
Screen.refresh()
Screen.clear(BOTTOM_SCREEN)
c_white = Color.new(255, 255, 255)
c_grey  = Color.new(127, 127, 127)

Screen.debugPrint(5, 5, "downgrade-check", c_white, BOTTOM_SCREEN)
Screen.fillEmptyRect(6, 314, 17, 18, c_grey, BOTTOM_SCREEN)

if downgraded then
    Screen.debugPrint(5, 25, "Congratulations! You have properly", c_white, BOTTOM_SCREEN)
    Screen.debugPrint(5, 40, "downgraded your console. Enjoy!", c_white, BOTTOM_SCREEN)
else
    Screen.debugPrint(5, 25, "Unfortunately you did not seem to", c_white, BOTTOM_SCREEN)
    Screen.debugPrint(5, 40, "downgrade to 9.2 properly.", c_white, BOTTOM_SCREEN)
end

Screen.debugPrint(5, 80, "Installed NATIVE_FIRM:", c_white, BOTTOM_SCREEN)
Screen.debugPrint(221, 80, firmmajor.."."..firmminor.."-"..firmrev, c_white, BOTTOM_SCREEN)
Screen.debugPrint(5, 95, "9.2 NATIVE_FIRM:", c_white, BOTTOM_SCREEN)
Screen.debugPrint(221, 95, "2.46-0", c_white, BOTTOM_SCREEN)
Screen.debugPrint(5, 135, "A: exit", c_white, BOTTOM_SCREEN)
Screen.debugPrint(5, 150, "X: reboot", c_white, BOTTOM_SCREEN)

Screen.flip()

while true do
    local pad = Controls.read()
    if Controls.check(pad, KEY_A) then
        System.exit()
    end
    if Controls.check(pad, KEY_X) then
        Screen.waitVblankStart()
        Screen.refresh()
        Screen.clear(BOTTOM_SCREEN)
        Screen.flip()
        System.reboot()
    end
end