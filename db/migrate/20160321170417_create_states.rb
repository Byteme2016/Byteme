class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.stirng :name
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
