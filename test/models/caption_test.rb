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

require 'test_helper'

class CaptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
