class Upload < ActiveRecord::Base
	belongs_to :owner, :class_name =>"User"

	#paperclip  uploaded
	has_attached_file :uploaded
	validates_attachment_presence :uploaded


end
# == Schema Information
#
# Table name: uploads
#
#  id                    :integer         not null, primary key
#  title                 :string(255)
#  owner_id              :integer
#  created_at            :datetime
#  updated_at            :datetime
#  uploaded_file_name    :string(255)
#  uploaded_content_type :string(255)
#  uploaded_file_size    :integer
#  uploaded_updated_at   :datetime
#

