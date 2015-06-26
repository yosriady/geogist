class AddTitleToGists < ActiveRecord::Migration
  def change
    add_column :gists, :title, :string
  end
end
