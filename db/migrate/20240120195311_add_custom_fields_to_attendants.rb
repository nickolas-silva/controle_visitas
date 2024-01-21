class AddCustomFieldsToAttendants < ActiveRecord::Migration[7.1]
  def change
    add_column :attendants, :name, :string
    add_column :attendants, :cpf, :string
    add_reference :attendants, :unity, null: false, foreign_key: true
  end
end
