class AddZipCodeToGuiders < ActiveRecord::Migration
  def change
    add_column :guiders, :country, :string
  end
end
