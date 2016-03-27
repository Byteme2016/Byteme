class ChangeColShelf < ActiveRecord::Migration
  def change
  	change_column :trip_goods, :on_shelf,:boolean, default: true
  end
end
