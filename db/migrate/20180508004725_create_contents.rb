class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :h1
      t.string :h2
      t.string :h3
      t.string :a
      t.references :WebAddress, foreign_key: true

      t.timestamps
    end
  end
end