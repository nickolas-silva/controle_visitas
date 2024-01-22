class CreateUnities < ActiveRecord::Migration[7.1]
  def change
    create_table :unities do |t|
      t.string :name
      t.references :secretary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
