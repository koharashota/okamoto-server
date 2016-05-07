json.errors @message do |message|
  json.message message[0].to_s + ' ' + message[1][0].to_s
end
