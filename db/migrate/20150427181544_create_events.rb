class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :domain
      t.string :event
      t.string :url
      t.string :ip_address
      t.references :application, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :applications
  end
end
