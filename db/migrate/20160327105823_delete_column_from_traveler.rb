class DeleteColumnFromTraveler < ActiveRecord::Migration
  def change
    remove_column :travelers, :photo
  end
end
