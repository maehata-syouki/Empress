class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :explain
      t.integer :user_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
