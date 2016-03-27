class AddColumnToGuiders < ActiveRecord::Migration
  def change
  	add_column :guiders, :qualified, :boolean 
  end
end
