class AddIndexToHistoria < ActiveRecord::Migration[5.0]
  def change
    add_index :historia, :paciente_id
  end
end
