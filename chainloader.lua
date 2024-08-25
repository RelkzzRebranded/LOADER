if not game:IsLoaded() then
	game.Loaded:Wait()
end;

local request = request or http_request

if (not request) then
  return error(`sucks to suck dude. you have no request function on your executor`)
end

local placeid = game.PlaceId
local dir

local statuslist = {
	['chain'] = {
		name = 'CHAIN',
		status = 'Undetected',
	},
};

local load = function(name)
	local game = statuslist[name];
	if (game.status ~= 'Undetected') then
		if (warn(`{game.name} is Currently Marked as {game.status}!\n\nAre You Sure You Want to Continue?`) ~= 6) then
			return;
		end;
	end;
	loadstring(request({Url=`{dir}{name}/main.lua`,Method='GET'}).Body)();
end;

if (placeid == 10204250851) then
    return load("chain")
  end
warn("THIS GAME IS UNSUPPORTED! IF INCORRECT PLEASE CONTACT ME IN OUR DISCORD! - discord.gg/4W4yFF8WpV")
