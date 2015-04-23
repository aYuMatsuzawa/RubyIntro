require 'json'

# Read json of Inno-Floor Door Bot message from Kato.im
fStr = "ifBot.json"
ob = nil
open(fStr) do |io|
	ob = JSON.load(io)
end

floorStatus = nil
latestTime = 0
ob.each do |v|
#	v.each do |k,innerv| puts k end
	if v["from"] == "*Innovation Floor*"
		if v["text"].include?("**OPENED**") 
			floorStatus[v["at"]] = {"event" => "opened"
end


