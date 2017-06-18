json.procpo {
json.array!(@procpo) do |procpo|
  json.extract! procpo, :codigo
  json.extract! procpo, :nombre
  

  json.query params[:query]
end
} 
