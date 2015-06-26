class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :hash,  null: false
      t.json :content, null: false
      t.st_point :lonlat, geographic: true
    end

    add_index :gists, [:hash], name: :index_gists_on_hash, using: :btree
  end
end
