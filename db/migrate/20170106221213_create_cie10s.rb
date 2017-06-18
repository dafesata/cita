class CreateCie10s < ActiveRecord::Migration[5.0]
  def change
    create_table :cie10s do |t|
      t.string :codigo
      t.string :simbolo
      t.string :descripcion
      t.string :sexo
      t.integer :limiteinferior
      t.integer :limitesuperior
      t.string :noafeccionppal
      t.string :observaciones

      t.timestamps
    end
  end
end
