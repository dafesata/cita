class CreateMedpos < ActiveRecord::Migration[5.0]
  def change
    create_table :medpos do |t|
      t.string :codigo
      t.string :nombregenerico
      t.string :formafarmaceutica
      t.string :concentracion
      t.integer :res008
      t.integer :res029
      t.integer :res5521
      t.integer :res5926
      t.integer :res5592

      t.timestamps
    end
  end
end
