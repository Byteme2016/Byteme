class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.stirng :name
      t.references :guider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
