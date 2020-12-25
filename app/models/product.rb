class Product < ApplicationRecord
  # if image resize is need, add geometry: "sizexsize>" ( i.e 100x100> ) in styles
  has_attached_file :photo, styles: { avif: { format: :avif } }, processors: [:default, :avif], default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  before_save :floor_process_time

  private

  def floor_process_time
    return unless process_time

    self.process_time = process_time.floor(2)
  end
end
