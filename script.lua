local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local textLabel = workspace.Functional.laptop.code.SurfaceGui.TextLabel

if textLabel then
    -- Obtén el texto del TextLabel
    local contenido = textLabel.Text
    
    -- Usa una expresión regular para extraer el primer número del texto
    local numero = string.match(contenido, "%d+")
    
    if numero then
        numero = tonumber(numero)

        local Window = Rayfield:CreateWindow({
            Name = "Uranus't",
            LoadingTitle = "Script made by Uranus't",
            LoadingSubtitle = "i love the milk",
            ConfigurationSaving = {
                Enabled = true,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "idk"
            },
            Discord = {
                Enabled = false,
                Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Untitled",
                Subtitle = "Key System",
                Note = "No method of obtaining the key is provided",
                FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
                SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
                GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
                Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
            }
        })

        local Tab = Window:CreateTab("Fun", 448336245) -- Title, Image
        local Section = Tab:CreateSection("Fun ;)")
        local sound = game:GetService("SoundService"):WaitForChild("endgame"):WaitForChild("nukeRumble")
        local soundPath = "Workspace.endgame.nukeRumble"
        local part = script.Parent
        local function playSound()
            if sound then
                sound:Play()
            else
                warn("Sound not found at path: " .. soundPath)
            end
        end
        

        local Button = Tab:CreateButton({
           Name = "NUKE SOUND??",
           Callback = function()
           playSound()
           end,
        })


        local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
        local Section = Tab:CreateSection("Main")
        local Button = Tab:CreateButton({
           Name = "Collect Money",
           Callback = function()
           for i, v in pairs(game:GetService("Workspace").Money:GetChildren()) do
            	if v:FindFirstChild("ClickDetector") then
            		fireclickdetector(v.ClickDetector)
            	end
            end
           end,
        })

        local Button = Tab:CreateButton({
            Name = "Get code",
            Callback = function()
                Rayfield:Notify({
                    Title = "Code:",
                    Content = tostring(numero),
                    Duration = 6.5,
                    Image = 4483362458,
                    Actions = {
                        Ignore = {
                            Name = "Okay!",
                            Callback = function()
                            end
                        }
                    }
                })
            end
        })
    else
        print("Error.")
    end
else
    print("Error.")
end

