json.medpo {
json.array!(@medpo) do |medpo|
  json.extract! medpo, :codigo
  json.extract! medpo, :nombregenerico
  json.(medpo, :formaconcentracion)
   

  json.query params[:query]
end
} 
