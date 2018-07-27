Carrierwave.configure do |config|
	config.fog_credentials = {
		:provider => 'AWS',
		:aws_access_key_id => "#{ENV["AWS"]}", 
		:aws_secret_access_key => "#{ENV['AWS_SECRET_ACESS_KEY']}",
		:region => "#{ENV['S3_REGION']}"
		:path_style => :true
	}

	config.fog_dictionary = "#{ENV['S3_BUCKET_NAME']}"
	config.cache_dir = "#{Rails.root}/tmp/uploads"
	
end