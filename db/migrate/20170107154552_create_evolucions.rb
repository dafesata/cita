class CreateEvolucions < ActiveRecord::Migration[5.0]
  def change
    create_table :evolucions do |t|
      t.integer :paciente_id
      t.integer :especialidad_id
      t.integer :profesional_id
      t.decimal :peso
      t.decimal :talla
      t.string :tensionarterial
      t.date :fecha
      t.text :descripcion
      t.string :idiagnostica1
      t.string :idiagnostica2
      t.string :idiagnostica3
      t.string :idiagnostica4
      t.string :idiagnostica5
      t.string :idiagnostica6
      t.string :adiagnosticas1
      t.string :adiagnosticas2
      t.string :adiagnosticas3
      t.string :adiagnosticas4
      t.string :adiagnosticas5
      t.string :adiagnosticas6
      t.string :tratamiento1
      t.string :dosis1
      t.string :tratamiento2
      t.string :dosis2
      t.string :tratamiento3
      t.string :dosis3
      t.string :tratamiento4
      t.string :dosis4
      t.string :tratamiento5
      t.string :dosis5
      t.string :tratamiento6
      t.string :dosis6
      t.string :interconsulta1
      t.string :interconsulta2
      t.string :interconsulta3

      t.timestamps
    end
  end
end
