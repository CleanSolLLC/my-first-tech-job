class CreateOpportunities < ActiveRecord::Migration[7.0]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :type
      t.string :description
      t.datetime :due

      t.timestamps
    end
  end
end
