class CreateSecretaries < ActiveRecord::Migration[7.1]
  def change
    create_table :secretaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
