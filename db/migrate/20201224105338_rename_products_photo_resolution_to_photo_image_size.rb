class RenameProductsPhotoResolutionToPhotoImageSize < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :photo_resolution, :photo_image_size
  end
end
