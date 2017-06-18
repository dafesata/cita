json.especialidad {
json.array!(@especialidad) do |especialidad|
  json.extract! especialidad, :especialidad_id
  json.extract! especialidad, :nombre
  json.query params[:query]
end
} 
