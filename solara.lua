function sol.protect_gui(gui)
    if typeof(gui) == "Instance" then
        local protected = Instance.new("StringValue")
        protected.Name = "sol_protected"
        protected.Parent = gui

        local originalName = gui.Name
        local protectedName = originalName
        local nameChangeCoroutine = coroutine.create(function()
            while protected.Parent == gui do
                gui.Name = math.random(10^10, 10^11 - 1)
                wait(0.01)
            end
        end)
        coroutine.resume(nameChangeCoroutine)
    end
end

function sol.unprotect_gui(gui)
    if typeof(gui) == "Instance" then
        local protected = gui:FindFirstChild("sol_protected")
        if protected then
            protected:Destroy()
            gui.Name = gui.Name
        else
            error("Gui is not protected.")
        end
    end
end
