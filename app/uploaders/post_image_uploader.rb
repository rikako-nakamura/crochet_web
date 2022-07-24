class PostImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_fit: [300, 300]

  storage :file
  # storage :fog

  version :thumb do
    process resize_to_fill: [100,100]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    'sunflower.png'
  end

  def extension_allowlist
    %w(jpg jpeg gif png)
  end
end
