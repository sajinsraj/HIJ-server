class CreateMalayalams < ActiveRecord::Migration[5.0]
  def change
    create_table :malayalams do |t|
      t.string :verse_id
      t.text :verse

      t.timestamps
    end
  end
end
