class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :text, null: false, index: true
      t.integer :picture_id, null: false, index: true
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
