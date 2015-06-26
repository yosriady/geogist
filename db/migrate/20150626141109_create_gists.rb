class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :hex,  null: false
      t.json :content, null: false
      t.st_point :lonlat, geographic: true
    end

    add_index :gists, [:hex], name: :index_gists_on_hex, using: :btree
  end
end
