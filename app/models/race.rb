class Race < ApplicationRecord
  mount_uploader :cover_picture, CoverPictureUploader
end
