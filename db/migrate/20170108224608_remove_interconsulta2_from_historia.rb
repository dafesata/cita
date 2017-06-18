class RemoveInterconsulta2FromHistoria < ActiveRecord::Migration[5.0]
  def change
    
    remove_column :evolucions, :interconsulta2, :string
    remove_column :evolucions, :interconsulta3, :string

  end
  
end
