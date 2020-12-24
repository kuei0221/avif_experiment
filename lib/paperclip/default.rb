require 'paperclip'

module Paperclip
  class Default < Thumbnail
    def initialize(file, options = {}, attachment = nil)
      super
      @format = nil
    end
  end
end