class AddExplainToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :explain, :string
  end
end
