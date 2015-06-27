class AddTimeStampsToGists < ActiveRecord::Migration
  def change
    add_timestamps :gists, null: false
  end
end
