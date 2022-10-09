script_author('Leon')
script_name('AutoParachute')
script_description('automatically opens the parachute at the specified height above the ground')
script_version('1.0')

local minHeight = 60.0 -- minimum height for opening the parachute

function main()
    while not isSampAvailable() do wait(0) end
    while true do
        wait(0)
        local height = getCharHeightAboveGround(PLAYER_PED)
        if height <= minHeight and isCurrentCharWeapon(PLAYER_PED, 46) then
            setVirtualKeyDown(0x01, true)
            wait(10)
            setVirtualKeyDown(0x01, false)
        end
    end
end