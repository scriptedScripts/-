
rconsoleprint("@@LIGHT_RED@@")
Wait(0.1)

rconsoleprint([[
    //    / / /__  ___/ /__  ___/ //   ) )       //   ) )  //   ) ) \\    / / 
   //___ / /    / /       / /    //___/ /       ((        //___/ /   \\  / /  
  / ___   /    / /       / /    / ____ /          \\     / ____ /     \\/ /   
 //    / /    / /       / /    //                   ) ) //             / /    
//    / /    / /       / /    //             ((___ / / //             / /     
]])

rconsoleprint("@@LIGHT_RED@@")
rconsoleprint("Made By just a pufferfish#6969")

Wait(0.1)
rconsoleprint("@@LIGHT_BLUE@@")

rconsoleprint([[

]])
rconsoleprint("Logs:")
if not game:IsLoaded() then game.Loaded:Wait() end

  -- Organized code
  -- Fixed colors
  -- Added :GetObjects and .GetObjects hook
  -- Fixed BlockedDomains and BlockedContent overwriting 
  -- Added "api.myip.com" by request
  -- Fixed request hooking not checking the url
  -- Fixed request hooking not being able to print headers or cookies properly


local plr = game:GetService("Players").LocalPlayer
_G.BlockedDomains  = _G.BlockedDomains or {
    "discord.com/api/webhooks/", -- discord webhooks
    "webhook", -- some webhook proxies have 'webhook' in the url
    "000webhost", -- some malicious webservers use 000webhost (though there are some legit ones)
    "freehosting", -- some malicious webservers use freehosting (though there are some legit ones)
    "ident.me", -- website that gives ip info
    "ipify.org", -- website that gives ip info
    "dyndns.org", -- website that gives ip info 
    "checkip.amazonaws.com", -- website that gives ip info
    "httpbin.org/ip", -- website that gives ip info
    "ifconfig.io", -- website that gives ip info
    "ipaddress.sh", -- website that gives ip info
    "ligma.wtf", -- used with kfc obfuscator
    "library.veryverybored", -- used with kfc obfuscator
    "repl.co", -- some malicious webservers use repl.co (though there are some legit ones)
    "repl.it", -- same as repl.co
    "myip.com" -- website that gives ip info
}
_G.BlockedContent = _G.BlockedContent or {
    ["Player name"] = plr.Name,
    ["Server ID"] = game.JobId,
    ["Place ID"] = game.PlaceId,
    ["Executor name"] = (identifyexecutor or getexecutor or getexecutorname or function() return "Unknown" end)(),
}


rconsoleprint([[

]])
local g
g = hookfunction(game.HttpGet,function(self,url,...)
  rconsoleprint("HttpGet Request Sent To: "..url)
  rconsoleprint([[

]])
  return g(self,url,...)

end)

local ga
ga = hookfunction(game.HttpGetAsync,function(self,url,...)
  rconsoleprint("HttpGetAsync Request Sent To: "..url)
  return ga(self,url,...)
end)

local p
p = hookfunction(game.HttpPost,function(self,url,...)
  rconsoleprint("HttpPost Request Sent To: "..url)
  warn("Arguments: "..(...))
  return p(self,url,...)
end)

local pa
pa = hookfunction(game.HttpPostAsync,function(self,url,...)
  rconsoleprint("HttpPostAsync Request Sent To: "..url)
  warn("Arguments: "..(...))
  return pa(self,url,...)
end)