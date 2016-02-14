# == Schema Information
#
# Table name: captions
#
#  id         :integer          not null, primary key
#  text       :string           not null
#  picture_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Caption < ActiveRecord::Base
  validates :text, presence: true
  validates :picture_id, presence: true

  belongs_to :picture,
    foreign_key: picture_id,
    primary_key: id,
    class_name: "Picture"

  belongs_to :author,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: "User"

  has_many :votes




end
