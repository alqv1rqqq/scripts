local frame = {}
frame.frame={}
frame.frame.new=function(name)
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local X = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local tabs = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local Frame_2 = Instance.new("Frame")
    local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
    local Frame_3 = Instance.new("Frame")
    local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = name

    Frame.Parent = ScreenGui
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
    Frame.BorderColor3 = Color3.new(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.49795261, 0, 0.5, 0)
    Frame.Size = UDim2.new(0.539721549, 0, 0.545905709, 0)
    Frame.Active = true
    Frame.Draggable = true

    UICorner.Parent = Frame
    UICorner.CornerRadius = UDim.new(0.0500000007, 0)

    ImageLabel.Parent = Frame
    ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.ClipsDescendants = true
    ImageLabel.Position = UDim2.new(0, 0, -0.057644099, 0)
    ImageLabel.Size = UDim2.new(0.192716241, 0, 0.281818181, 0)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=17837598083"

    UIAspectRatioConstraint.Parent = ImageLabel
    UIAspectRatioConstraint.AspectRatio = 1.0240000486373901

    X.Name = "X"
    X.Parent = Frame
    X.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
    X.BackgroundTransparency = 1
    X.BorderColor3 = Color3.new(0, 0, 0)
    X.BorderSizePixel = 0
    X.Position = UDim2.new(0.926622391, 0, -0.00020668724, 0)
    X.Size = UDim2.new(0.0728376359, 0, 0.0886363611, 0)
    X.Font = Enum.Font.Nunito
    X.Text = "x"
    X.TextColor3 = Color3.new(1, 1, 1)
    X.TextScaled = true
    X.TextSize = 50
    X.TextWrapped = true

    UICorner_2.Parent = X
    UICorner_2.CornerRadius = UDim.new(0.5, 0)

    UITextSizeConstraint.Parent = X
    UITextSizeConstraint.MaxTextSize = 50

    UIAspectRatioConstraint_2.Parent = X
    UIAspectRatioConstraint_2.AspectRatio = 1.2309999465942383

    UIAspectRatioConstraint_3.Parent = Frame
    UIAspectRatioConstraint_3.AspectRatio = 1.4980000257492065

    tabs.Name = "tabs"
    tabs.Parent = Frame
    tabs.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
    tabs.BorderColor3 = Color3.new(0, 0, 0)
    tabs.BorderSizePixel = 0
    tabs.Position = UDim2.new(0, 0, 0.173758209, 0)
    tabs.Size = UDim2.new(0.174506828, 0, 0.827272713, 0)

    UICorner_3.Parent = tabs
    UICorner_3.CornerRadius = UDim.new(0.200000003, 0)

    Frame_2.Parent = tabs
    Frame_2.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
    Frame_2.BorderColor3 = Color3.new(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0.657657504, 0, -0.00206597289, 0)
    Frame_2.Size = UDim2.new(0.339130431, 0, 1, 0)

    UIAspectRatioConstraint_4.Parent = Frame_2
    UIAspectRatioConstraint_4.AspectRatio = 0.10700000077486038

    Frame_3.Parent = tabs
    Frame_3.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
    Frame_3.BorderColor3 = Color3.new(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0, 0, -0.00206597289, 0)
    Frame_3.Size = UDim2.new(1, 0, 0.0604395606, 0)

    UIAspectRatioConstraint_5.Parent = Frame_3
    UIAspectRatioConstraint_5.AspectRatio = 5.2270002365112305

    UIAspectRatioConstraint_6.Parent = tabs
    UIAspectRatioConstraint_6.AspectRatio = 0.3160000145435333

end

function tab.new(name, parent)
    local test = Instance.new("Frame")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local test_2 = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

    test.Name = name
    test.Parent = parent
    test.BackgroundColor3 = Color3.new(1, 1, 1)
    test.BackgroundTransparency = 1
    test.BorderColor3 = Color3.new(0, 0, 0)
    test.BorderSizePixel = 0
    test.Position = UDim2.new(0.168437019, 0, 0.17204909, 0)
    test.Size = UDim2.new(0.831562996, 0, 0.824999988, 0)

    UIAspectRatioConstraint.Parent = test
    UIAspectRatioConstraint.AspectRatio = 1.5099999904632568

    test_2.Name = name
    test_2.Parent = parent.tabs
    test_2.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
    test_2.BorderColor3 = Color3.new(0, 0, 0)
    test_2.BorderSizePixel = 0
    test_2.Position = UDim2.new(0.0695652142, 0, 0.0274725277, 0)
    test_2.Size = UDim2.new(0.869565189, 0, 0.112637363, 0)
    test_2.Font = Enum.Font.Nunito
    test_2.Text = name
    test_2.TextColor3 = Color3.new(1, 1, 1)
    test_2.TextScaled = true
    test_2.TextSize = 27
    test_2.TextWrapped = true

    UICorner.Parent = test_2
    UICorner.CornerRadius = UDim.new(0.200000003, 0)

    UITextSizeConstraint.Parent = test_2
    UITextSizeConstraint.MaxTextSize = 27

    UIAspectRatioConstraint_2.Parent = test_2
    UIAspectRatioConstraint_2.AspectRatio = 2.438999891281128

    test_2.MouseButton1Click:Connect(function()
        local children = parent:GetChildren()
        for _, child in ipairs(children) do
            if child:IsA("Frame") then
                child.Visible = false
            end
        end

        test.Visible = true
    end)

    return test
end
return frame
