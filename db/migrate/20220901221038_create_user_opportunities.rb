class CreateUserOpportunities < ActiveRecord::Migration[7.0]
  def change
    create_table :user_opportunities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :opportunity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
