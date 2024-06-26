local function protect_gui(gui)
    if typeof(gui) == "Instance" then
        if gui:IsA("ScreenGui") then
            local screenGui = gui.Parent
            if not screenGui or not screenGui:IsA("ScreenGui") then
                screenGui = Instance.new("ScreenGui")
                screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            end

            local isDragging = false
            local dragStartPos = nil

            local function updateDrag(input)
                if isDragging then
                    gui.Position = UDim2.new(0, input.Position.X - dragStartPos.X, 0, input.Position.Y - dragStartPos.Y)
                end
            end

            gui.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDragging = true
                    dragStartPos = input.Position - gui.Position
                    gui.Parent = screenGui
                    gui.ZIndex = gui.ZIndex + 1

                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            isDragging = false
                        end
                    end)
                end
            end)

            gui.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement then
                    updateDrag(input)
                end
            end)

            local protected = Instance.new("BoolValue")
            protected.Name = "sol_protected"
            protected.Value = true
            protected.Parent = gui
        else
            error("sol.protect_gui: Expected gui to be a ScreenGui instance.")
        end
    end
end

local function unprotect_gui(gui)
    if typeof(gui) == "Instance" then
        local protected = gui:FindFirstChild("sol_protected")
        if protected and protected:IsA("BoolValue") and protected.Value then
            protected:Destroy()
            gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        else
            error("Gui is not protected.")
        end
    end
end
