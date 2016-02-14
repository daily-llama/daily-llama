# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  picture_url :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Picture < ActiveRecord::Base
  validates :picture_url, presence: true

  has_many :captions

  def caption_order
    # returns array of captions in the order of the most votes
  end

end
