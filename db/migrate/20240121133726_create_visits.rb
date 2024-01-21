class CreateVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :visits do |t|
      t.datetime :date
      t.references :visitor, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
