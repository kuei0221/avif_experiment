require 'rails_helper'

RSpec.feature 'UploadPhoto' , type: :feature do

  let(:product) { Product.last }
  let(:original_photo_path) { product.photo.path }
  let(:avif_photo_path) { product.photo.path(:avif) }

  after do
    File.delete(original_photo_path)
    File.delete(avif_photo_path)
  end

  scenario 'Create New Shop with attached photo' do
    visit '/products/new'

    attach_file 'Photo', Rails.root.join('spec', 'fixtures', 'example.jpg')
    click_button 'Create Product'

    expect(page).to have_current_path "/products/#{product.id}"
    expect(File.basename(original_photo_path)).to eq 'example.jpg'
    expect(File.basename(avif_photo_path)).to eq 'example.avif'
    expect(product.process_time).not_to be nil
  end
end
