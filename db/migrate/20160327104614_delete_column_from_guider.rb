class DeleteColumnFromGuider < ActiveRecord::Migration
  def change
    remove_column :guiders, :photo
  end
end
