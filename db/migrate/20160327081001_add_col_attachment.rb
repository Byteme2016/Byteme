class AddColAttachment < ActiveRecord::Migration
  def change
    add_column :travelers, :attachment, :string
  end
end
