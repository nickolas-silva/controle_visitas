class CreateVisitors < ActiveRecord::Migration[7.1]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :phone
      t.string :photo
      t.timestamps
    end
  end
end
