json.direction do
  if direction
    json.category direction.category
    json.value direction.value
  else
    json.category 0
    json.value 0 
  end
end
