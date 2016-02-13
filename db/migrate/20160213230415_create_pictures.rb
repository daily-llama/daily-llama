class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :picture_url, null: false, index: true

      t.timestamps null: false
    end
  end
end
