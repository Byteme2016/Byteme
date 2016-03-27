class ChangeColumn < ActiveRecord::Migration
  def change
  	add_column :guiders, :qualified, :boolean, default: false, null: false
  end
end
