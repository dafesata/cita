class Historium < ApplicationRecord

	belongs_to :paciente, :foreign_key => "paciente_id"
	belongs_to :profesional, :foreign_key => "profesional_id"
	belongs_to :especialidad, :foreign_key => "especialidad_id"

	validates :paciente_id, uniqueness: true
	validates :paciente_id, :profesional_id, :especialidad_id, :motivo, :eactual, :afamiliar, :aginecologicos, :aobstetricos, :apatologicos, :aquirurgicos, :apsicosociales, :peso, :talla, :tensionarterial, :temp, :ageneral, :craneocabeza, :cuello, :osentidos, :torax, :seno, :cardiaco, :respiratorio, :abdomen, :ginecologico, :urinario, :osteoauricular, :neurologico, :idiagnostica1, :interconsulta1, presence: true


	def self.search(params={})	
		busq=" "	
		if params[:s_tipo]=="1"
			if !(params[:s_identificacion] == "" && params[:s_pnombre] == "" && params[:s_snombre] == "" && params[:s_papellido] == "" && params[:s_sapellido] == "")
				if (Persona.exists?(["primer_nombre LIKE ? AND segundo_nombre LIKE ? AND primer_apellido LIKE ? AND segundo_apellido LIKE ? AND numero_id = ? AND numero_type ='Paciente'", "%#{params[:s_pnombre]}%", "%#{params[:s_snombre]}%", "%#{params[:s_papellido]}%", "%#{params[:s_sapellido]}%", "#{params[:s_identificacion]}"]))
					personaid=Persona.where("primer_nombre LIKE ? AND segundo_nombre LIKE ? AND primer_apellido LIKE ? AND segundo_apellido LIKE ? AND numero_id = ? AND numero_type ='Paciente'", "%#{params[:s_pnombre]}%", "%#{params[:s_snombre]}%", "%#{params[:s_papellido]}%", "%#{params[:s_sapellido]}%", "#{params[:s_identificacion]}").first.numero_id
					busq=Paciente.where("numero_id LIKE ?", "%#{personaid}%").select(:numero_id).first.numero_id
					begin
						date=Date.parse(params[:s_fecha].to_a.sort.collect{|c| c[1]}.join("-"))
						where(["paciente_id LIKE ? AND fecha = ?","%#{busq}%","#{date}"])						
					rescue ArgumentError
						where(["paciente_id LIKE ?","%#{busq}%"])						
					end	
				else					
					where(["paciente_id LIKE ?","%#{busq}%"])					
				end
			else

				where(["paciente_id LIKE ?","%#{busq}%"])	
			end
		else
			if params[:s_tipo]=="2"
				if !(params[:s_identificacion] == "" && params[:s_pnombre] == "" && params[:s_snombre] == "" && params[:s_papellido] == "" && params[:s_sapellido] == "")
					if (Persona.exists?(["primer_nombre LIKE ? OR segundo_nombre LIKE ? OR primer_apellido LIKE ? OR segundo_apellido LIKE ? OR numero_id = ? AND numero_type ='Profesional'", "%#{params[:s_pnombre]}%", "%#{params[:s_snombre]}%", "%#{params[:s_papellido]}%", "%#{params[:s_sapellido]}%", "#{params[:s_identificacion]}"]))
					personaid=Persona.where("primer_nombre LIKE ? OR segundo_nombre LIKE ? OR primer_apellido LIKE ? OR segundo_apellido LIKE ? OR numero_id = ? AND numero_type ='Profesional'", "%#{params[:s_pnombre]}%", "%#{params[:s_snombre]}%", "%#{params[:s_papellido]}%", "%#{params[:s_sapellido]}%", "#{params[:s_identificacion]}").first.numero_id
						busq=Profesional.where("numero_id LIKE ?", "%#{personaid}%").select(:numero_id).first.numero_id
						begin
							date=Date.parse(params[:s_fecha].to_a.sort.collect{|c| c[1]}.join("-"))
							where(["profesional_id LIKE ? AND fecha = ?","%#{busq}%","#{date}"])						
						rescue ArgumentError
							where(["profesional_id LIKE ?","%#{busq}%"])						
						end
					else
						where(["profesional_id LIKE ?","%#{busq}%"])
					end
				else
					where(["profesional_id LIKE ?","%#{busq}%"])	
				end
			else				
				if params[:s_tipo]=="3"					
					if !(params[:s_especialidad] == "")
						if (Especialidad.exists?(["nombre LIKE ? AND enable = 1","%#{params[:s_especialidad]}%"]))						
							busq=Especialidad.where(["nombre LIKE ? AND enable = 1","%#{params[:s_especialidad]}%"]).select(:especialidad_id).first.especialidad_id
							begin
								date=Date.parse(params[:s_fecha].to_a.sort.collect{|c| c[1]}.join("-"))
								where(["especialidad_id LIKE ? AND fecha = ?","%#{busq}%","#{date}"])	
							rescue ArgumentError
								where(["especialidad_id LIKE ?","%#{busq}%"])	
							end
						else
							where(["especialidad_id LIKE ?","%#{busq}%"])	
						end	
					else
						where(["especialidad_id LIKE ?","%#{busq}%"])	
					end									
				else
					begin
						date=Date.parse(params[:s_fecha].to_a.sort.collect{|c| c[1]}.join("-"))
						where(:fecha => date)
					rescue ArgumentError
						where(["paciente_id LIKE ?","%#{busq}%"])
					end					
				end
			end
		end					
  	end	
	
end
