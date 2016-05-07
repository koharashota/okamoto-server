json.direction do
  if direction
    json.category direction.category
    json.value direction.value
  else
    json.category 2
    json.value 1
    json.parts 2
  end
end
