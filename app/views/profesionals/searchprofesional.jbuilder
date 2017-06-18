json.profesional {
json.array!(@profesional) do |profesional|
  json.extract! profesional, :numero_id
  json.extract! profesional, :especialidad_id
  json.especialidad profesional.especialidad
  

  json.persona do 
  	json.primer_nombre profesional.persona.primer_nombre
  	json.segundo_nombre profesional.persona.segundo_nombre
  	json.primer_apellido profesional.persona.primer_apellido
  	json.segundo_apellido profesional.persona.segundo_apellido
  end
  json.query params[:query]
end
} 
