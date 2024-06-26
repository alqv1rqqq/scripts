local function sol.protect_gui(gui)
    if typeof(gui) == "Instance" then
        if gui:IsA("Frame") then
            local screenGui = gui.Parent
            if not screenGui or not screenGui:IsA("ScreenGui") then
                screenGui = Instance.new("ScreenGui")
                screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            end
            
            local isDragging = false
            local dragStartPos = nil

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
                if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
                    gui.Position = UDim2.new(0, input.Position.X - dragStartPos.X, 0, input.Position.Y - dragStartPos.Y)
                end
            end)

            local protected = Instance.new("StringValue")
            protected.Name = "sol_protected"
            protected.Parent = gui

            local originalName = gui.Name
            local nameChangeCoroutine = coroutine.create(function()
                while protected.Parent == gui do
                    gui.Name = tostring(math.random(10^10, 10^11 - 1))
                    wait(0.01)
                end
            end)
            coroutine.resume(nameChangeCoroutine)
        else
            error("sol.protect_gui: Expected gui to be a Frame instance.")
        end
    end
end

local function sol.unprotect_gui(gui)
    if typeof(gui) == "Instance" then
        local protected = gui:FindFirstChild("sol_protected")
        if protected then
            protected:Destroy()
            gui.Name = gui.Name
            gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        else
            error("Gui is not protected.")
        end
    end
end
