class AddUnidadmedidaToMedpo < ActiveRecord::Migration[5.0]
  def change
    add_column :medpos, :unidadmedida, :string
  end
end
