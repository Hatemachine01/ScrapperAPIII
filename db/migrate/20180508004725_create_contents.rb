class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.text :headers
      t.text :links

      t.references :url, foreign_key: true


      t.timestamps
    end
  end
end



