class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :url
      t.string :title
      t.text :description
      t.integer :gallery_id

      t.timestamps
    end
  end
end
