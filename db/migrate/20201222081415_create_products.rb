class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :photo_resolution

      t.timestamps
    end
  end
end
