class AddDescriptionToGists < ActiveRecord::Migration
  def change
    add_column :gists, :description, :text
  end
end
