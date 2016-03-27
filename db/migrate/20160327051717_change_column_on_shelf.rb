class ChangeColumnOnShelf < ActiveRecord::Migration
  def change
    change_column_null :trip_goods, :on_shelf, default: true
  end
end
