class AddDateToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :year, :integer
    add_column :galleries, :month, :integer
  end
end
