class AddZipCodeToGuiders < ActiveRecord::Migration
  def change
    add_column :guiders, :zip_code, :string
  end
end
