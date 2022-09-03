class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :f_name_full, :string, default: "", null: false
    add_column :users, :l_name_initial, :string, default: "", null: false
  end
end
