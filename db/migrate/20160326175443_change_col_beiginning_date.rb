class ChangeColBeiginningDate < ActiveRecord::Migration
  def rename
    rename_column :trip_goods, :date_begining, :beginning_date
    rename_column :trip_goods, :date_end, :end_date
  end
end
