class CreateProcpos < ActiveRecord::Migration[5.0]
  def change
    create_table :procpos do |t|
      t.string :codigo
      t.string :nombre
      t.integer :nivel
      t.text :comentario

      t.timestamps
    end
  end
end
