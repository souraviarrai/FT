class Folder < ApplicationRecord
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true

end
