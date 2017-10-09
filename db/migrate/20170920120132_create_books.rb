class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :testament_id
      t.string :short_name
      t.string :english
      t.string :malayalam

      t.timestamps
    end
  end
end
