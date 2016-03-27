class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :guiders, :qualified, :boolean, default: false, null: false
  end
end
