class AddHistoriaidToEvolucion < ActiveRecord::Migration[5.0]
  def change    
        remove_column :historia, :scaffold
    

  end
end
