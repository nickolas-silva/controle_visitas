class AddStatusToVisits < ActiveRecord::Migration[7.1]
  def change
    add_column :visits, :status, :boolean
  end
end
