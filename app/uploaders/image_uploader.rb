require_relative '../../config/initializers/shrine'

class ImageUploader < Shrine
    Attacher.validate do
      validate_mime_type %w[image/jpeg image/png image/webp]
      validate_max_size  1*3000*3000
    end
   end