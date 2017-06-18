json.cie10 {
json.array!(@cie10) do |cie10|
  json.extract! cie10, :codigo
  json.extract! cie10, :descripcion
  

  json.query params[:query]
end
} 
