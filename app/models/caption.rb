class Caption < ActiveRecord::Base
  validates :text, presence: true
  validates :picture_id, presence: true

  belongs_to :picture,
  foreign_key: picture_id,
  primary_key: id,
  class: "Picture"

  belongs_to :author,
    foreign_key: :user_id,
    primary_key: :id,
    class: "User"

  has_many :votes
  



end
