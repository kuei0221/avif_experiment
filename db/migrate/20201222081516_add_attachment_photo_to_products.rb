class AddAttachmentPhotoToProducts < ActiveRecord::Migration[6.0]
  def self.up
    change_table :products do |t|
      t.attachment :photo
      t.float :process_time
    end
  end

  def self.down
    remove_attachment :products, :photo
    remove_column :products, :process_time
  end
end
