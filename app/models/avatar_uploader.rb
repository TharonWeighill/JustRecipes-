class AvatarUploader < CarrierWave::Uploader::Base
    storage :file

    def store_dir
      "app/public/images"
    end
   
    def store_dir
      "app/public/images"
    end
    def cache_dir
      "app/public/images/tmp"
    end
    def extension_whitelist
      %w(jpg jpeg gif png)
    end
    def content_type_whitelist
      /image\//
    end
   


  end