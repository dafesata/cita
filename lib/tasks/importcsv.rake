namespace :importcsv do
  require 'csv'
  desc "TODO"
  task importeps: :environment do      
      csv_text = File.read(Rails.root.join('lib','seeds','eps.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Ep.create!(:codigo_eps=>row[0], :nombre=>row[1], :enable=>row[2])
      end
  end

  desc "TODO"
  task importserv: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','servicios.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Servicio.create!(:nombre=>row[1], :enable=>row[2])
      end
  end

  desc "TODO"
  task importesp: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','especialidades.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Especialidad.create!(:especialidad_id=>row[0], :nombre =>row[1], :servicio_id=>row[2], :enable=>row[3])
      end
  end

  desc "TODO"
  task importcon: :environment do
  end

  task importdva: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','dpa.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Divpa.create!(:cod_dpto=>row[0], :cod_muni =>row[1], :cod_cp=>row[2], :nombre_dpto=>row[3],:nombre_muni=>row[4],:nombre_cp=>row[5],:tipo=>row[6],:enable=>row[7])
      end
  end  

  task importpers: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','personas.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Persona.create!(:id=>row[0], :tipoid =>row[1], :numero_type=>row[2], :numero_id=>row[3],:primer_apellido=>row[4],:segundo_apellido=>row[5],:primer_nombre=>row[6],:segundo_nombre=>row[7], :estado_civil=>row[8],:fecha_nac=>row[9],:sexo=>row[10],:celular=>row[11])
      end
  end 

  task importprof: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','profesionales.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Profesional.create!(:numero_id=>row[0], :reg_med =>row[1], :especialidad_id=>row[2])
      end
  end  

  task importproc: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','procedimientos.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Procpo.create!(:codigo=>row[0], :nombre=>row[1], :nivel=>row[2], :comentario=>row[3])
      end
  end  

  task importmedpos: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','medicamentos.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Medpo.create!(:codigo=>row[0], :nombregenerico=>row[1], :formafarmaceutica=>row[2], :concentracion=>row[3], :unidadmedida=>row[4], :res008=>[5], :res029=>[6], :res5521=>[7], :res5926=>[8], :res5592=>[9])
      end
  end  
  
  task importcie10: :environment do
      csv_text = File.read(Rails.root.join('lib','seeds','cie10.csv'))
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        Cie10.create!(:codigo=>row[0], :simbolo=>row[1], :descripcion=>row[2], :sexo=>row[3] , :limiteinferior=>row[4],:limitesuperior=>row[5],:noafeccionppal=>row[6],:observaciones=>row[7])
      end
  end  

  
end


   