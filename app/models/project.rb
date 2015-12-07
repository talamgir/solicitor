class Project < ActiveRecord::Base
	has_many :users
	mount_uploader :attachment, AttachmentUploader
end
