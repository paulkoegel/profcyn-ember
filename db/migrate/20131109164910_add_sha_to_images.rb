class AddShaToImages < ActiveRecord::Migration
  def change
    add_column :images, :sha, :string
  end
end
