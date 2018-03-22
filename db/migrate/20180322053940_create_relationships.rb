class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :sender_id
      t.integer :recive_id
      t.boolean :friend

      t.timestamps
    end
  end
end
