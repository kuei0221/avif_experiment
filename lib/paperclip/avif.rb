require 'paperclip'

module Paperclip
  class Avif < Processor

    def initialize(file, options = {}, attachment = nil)
      super
      @avif_path = @file.path.gsub(/jpg|jpeg|png|y4m/, 'avif')
    end

    def make
      process_time = Benchmark.realtime { avifenc }

      if $?.success?
        @attachment.instance.process_time = process_time
        @file = File.open @avif_path
      else
        raise EncodingError
      end
    end

    private
    def avifenc
      `avifenc #{@file.path} #{@avif_path}`
    end
  end
end