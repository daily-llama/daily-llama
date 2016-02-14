class Picture < ActiveRecord::Base
  validates :picture_url, presence: true

  has_many :captions

  def caption_order
    # returns array of captions in the order of the most votes
  end

end
