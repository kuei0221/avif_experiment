class Product < ApplicationRecord
  has_attached_file :photo, styles: { avif: [:avif] }, processors: [:default, :avif], default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  before_save :floor_process_time

  private

  def floor_process_time
    return unless process_time

    self.process_time = process_time.floor(2)
  end
end
