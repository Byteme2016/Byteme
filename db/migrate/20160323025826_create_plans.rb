class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :plan_name, :limit => 50
      t.integer :budget

      t.timestamps null: false
    end
  end
end
