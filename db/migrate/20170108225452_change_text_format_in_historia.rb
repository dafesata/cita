class ChangeTextFormatInHistoria < ActiveRecord::Migration[5.0]
  def up
  	change_column :historia, :interconsulta1, :text
  	change_column :evolucions, :interconsulta1, :text
  end

  def down
  	change_column :historia, :interconsulta1, :string
  	change_column :evolucions, :interconsulta1, :string
  end	
end
