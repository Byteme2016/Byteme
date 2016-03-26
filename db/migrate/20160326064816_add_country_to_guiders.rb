class AddCountryToGuiders < ActiveRecord::Migration
  def change
    add_column :guiders, :country, :string
  end
end
