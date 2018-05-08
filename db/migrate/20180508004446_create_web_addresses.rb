class CreateWebAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :web_addresses do |t|
      t.string :url

      t.timestamps
    end
  end
end
