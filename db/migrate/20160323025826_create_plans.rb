class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.varchar{50} :plan_name
      t.int :budget

      t.timestamps null: false
    end
  end
end
