class Uploader < CarrierWave::Uploader::Base
	include CarrierWave::MiniMagick
	storage :file

	version :thumb do
		process resize_to_fit: [100, 100]
	end

	version :full do
		process resize_to_limit: [400, 400]
	end

	def store_dir
		"uploads"
	end
end