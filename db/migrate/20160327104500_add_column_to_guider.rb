class AddColumnToGuider < ActiveRecord::Migration
  def change
    add_column :guiders, :attachment, :string
  end
end
