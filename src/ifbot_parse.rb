require 'json'

# Read json of Inno-Floor Door Bot message from Kato.im
file_str = 'ifBot.json'
ob = nil
open(file_str) do |io|
  ob = JSON.load(io)
end

floor_status = nil
latest_time = ob[0]['at']
ob.each do |v|
  if v['from'] == '*Innovation Floor*'
    if v['text'].include?((event_str = '**OPENED**' || '**CLOSED**'))
      floor_status[v['at']] = { event: event_str.gsub(/¥*+/, '').downcase,
                                sinceLast: v['at'] - latest_time }
      latest_time = v['at']
    end
  end
end
