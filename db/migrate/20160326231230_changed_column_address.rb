class ChangedColumnAddress < ActiveRecord::Migration
  def change
  	rename_column :guiders, :stree_address, :street_address
  end
end
