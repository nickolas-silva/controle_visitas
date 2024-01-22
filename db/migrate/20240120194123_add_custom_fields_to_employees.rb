class AddCustomFieldsToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :name, :string
    add_column :employees, :cpf, :string
    add_column :employees, :rg, :string
    add_column :employees, :cargo, :string
    add_reference :employees, :unity, null: false, foreign_key: true
  end
end
