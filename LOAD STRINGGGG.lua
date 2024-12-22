local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Player = game.Players.LocalPlayer


local Window = OrionLib:MakeWindow({Name = "Luman hub Key system", HidePremium = false, SaveConfig = true, })


_G.Key = "Sigma"
_G.KeyInput = "string"


function MakeScriptHub()

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaJetPro/Luman-Hub/refs/heads/main/Luman%20hub%20script.Lua"))()

end


local Tab = Window:MakeTab({
	Name = "Key",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Please enter your Key",
	Default = "Key",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
        _G.KeyInput = Value



	end	  
})




Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		print("button pressed")
                        if _G.KeyInput == _G.Key then

            MakeScriptHub()
            OrionLib:Destroy()
            end
  	end    
})
