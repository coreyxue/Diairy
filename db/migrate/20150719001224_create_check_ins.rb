class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.datetime :datetime
      t.references :goal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
