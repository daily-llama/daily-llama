class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :caption_id, null: false, index: true
      t.integer :voter_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
