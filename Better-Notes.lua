Lua Code Notes

   --create variable--
word = "hello"

   --if else--
if true then
    print("1")
elseif false then
    print("2")
else
    print("3")
end 

   --while loop--
while true do
    print()
end

   --for loop--
for i = 1, 5 do
    print(i)
end

    --print--
print("Hello world!")

   --wait function--
wait(5)

   --create function--
function example()

   --function w/ param--
function send(message)
    print(message)
end
send ("hello")

   --function w/ returning--
function getMessage()
    return "hello"
end
print(getMessage())

----Roblox things----

   --change brick color--
game.Workspace.Mypart.BrickColor = BrickColor.new("Black")

   --change color through RGB--
game.Workspace.Mypart.Color = Color3.fromRGB(255, 255, 255)

   --change brick transparency--
game.Workspace.Mypart.Transparency = 1

   --get player name--
game.Players.LocalPlayer.Name

   --check if thing exists--
game.Workspace:FindFirstChild("MyPart")

  --wait for a child to be loaded before checking--
game.Workspace:WaitForChild("MyPart").CanCollide = true


  --Move brick--
script.Parent.CFrame = script.Parent.CFrame * CFrame.new(0, 0, 1)
wait()

  --get position--
game.Workspace.Mypart.Position

  --set position--
game.Workspace.MyPart.Position = Vector3.new(0, 0, 0)


  --Create new object: (type, parent)--
Instance.new("Part", game.Workspace)

  --bool check what kind of object--
game.Workspace.Part1:IsA("Part") 

  --destroy object--
game.Workspace.Part1:Destroy()

  --create clone--
part = game.Workspace.MyPart:Clone()
part.Parent = game.Workspace

  --Check if a string contains something--
if sting.match(myString, "hello") then

  --Set velocity--
clone.AssemblyLinearVelocity = Vector3.new(0,0,0)

  --User inputs--
local UserInput = game:GetService("UserInputService")

UserInput.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.W then
        print("W PRESSED")
    end
end)


----UI STUFF----

   --Hovering--
script.Parent.MouseEnter:Connect(function()
    print("Mouse is hovering above")
end)

   --leaving--
script.Parent.MouseLeave:Connect(function()
    print("Mouse is no longer hovering")
end)

  --clicking--
script.Parent.MouseButton1Click:Connect(function()
    print("Button clicked")
end)

game.StarterGui:SetCoreGuiEnabled()

Enum.CoreGuiType


local Players = game:GetService("Players")


function showPos(vector)

local player = Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	
    if script.Parent:GetTouchingParts() ~= "" then
        humanoidRootPart.Position = vector
    end
    wait()
end



   --kill brick--
script.Parent.Touched:connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        hit.Parent.Humanoid.Health = 0
    end
end)


----Other Things----


d3 moving platform 10:38



while true do
	
	for i = 1, 20 do
		script.Parent.CFrame = script.Parent.CFrame * CFrame.new(0, 0, -0.5)
		showPos(Vector3.new(0, 0, -0.5))
	end
	for i = 1, 20 do
		script.Parent.CFrame = script.Parent.CFrame * CFrame.new(0, 0.5, 0)
		showPos(Vector3.new(0, 0.5, 0))
	end
	for i = 1, 20 do
		script.Parent.CFrame = script.Parent.CFrame * CFrame.new(0, 0, 0.5)
		showPos(Vector3.new(0, 0, 0.5))
	end
	for i = 1, 20 do
		script.Parent.CFrame = script.Parent.CFrame * CFrame.new(0, -0.5, 0)
		showPos(Vector3.new(0, -0.5, 0))
	end
	
end
