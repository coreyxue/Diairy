class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.date :start_date
      t.date :end_date
      t.references :habit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
