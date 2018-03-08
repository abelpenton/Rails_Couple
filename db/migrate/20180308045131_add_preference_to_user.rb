class AddPreferenceToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :preference, :string
  end
end
