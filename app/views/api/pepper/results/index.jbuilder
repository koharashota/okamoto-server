if result
  json.result do
    json.speech result.speech
    json.slide result.slide
    json.gesture result.gesture
  end
else
  json.result 'null'
end
