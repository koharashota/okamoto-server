json.direction do
  if direction
    json.category direction.category
    json.value direction.value
  else
    json.category -1
    json.value 0
    json.parts 0
  end
end
