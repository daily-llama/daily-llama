# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  caption_id :integer          not null
#  voter_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
end
