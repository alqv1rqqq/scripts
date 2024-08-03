local library = {}

-- Function to create a new GUI element
function library:createGuiElement(elementType, properties, parent)
    local guiElement = Instance.new(elementType)

    -- Split properties by '=' and apply them to the GUI element
    for _, prop in pairs(properties) do
        local key, value = prop:match("(%w+)=([^=]+)")
        if key and value then
            if key == "pos" then
                local x, y = value:match("(%d+),(%d+)")
                guiElement.Position = UDim2.new(0, tonumber(x), 0, tonumber(y))
            elseif key == "size" then
                local w, h = value:match("(%d+),(%d+)")
                guiElement.Size = UDim2.new(0, tonumber(w), 0, tonumber(h))
            elseif key == "color" then
                local r, g, b = value:match("(%d+),(%d+),(%d+)")
                guiElement.BackgroundColor3 = Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
            elseif key == "draggabletoggle" and elementType == "Frame" then
                local toggle = (value == "true")
                guiElement.Active = toggle
                guiElement.Draggable = toggle
            elseif key == "roundcorners" and elementType == "Frame" then
                local toggle = (value == "true")
                local corner = Instance.new("UICorner")
                corner.CornerRadius = UDim.new(0, 12) -- Example: 12 pixel radius
                corner.Parent = guiElement
            elseif key == "text" and elementType == "TextButton" then
                guiElement.Text = value
            end
        end
    end

    if parent then
        guiElement.Parent = parent
    end

    return guiElement
end

-- Function to create a new Frame with properties
function library:frame(name, properties)
    local parent = game.Players.LocalPlayer.PlayerGui:FindFirstChild(name)
    if not parent then
        parent = Instance.new("ScreenGui")
        parent.Name = name
        parent.Parent = game.Players.LocalPlayer.PlayerGui
    end

    return self:createGuiElement("Frame", properties, parent)
end

-- Function to create a button with a callback
function library:button(text, callback)
    local screenGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainScreenGui")
    if not screenGui then
        error("ScreenGui 'MainScreenGui' not found in PlayerGui")
    end

    local button = self:createGuiElement("TextButton", {"pos=50,50", "size=100,50", "color=0,255,0", "text=" .. text}, screenGui)
    button.MouseButton1Click:Connect(function()
        callback(button)
    end)

    return button
end

return library
