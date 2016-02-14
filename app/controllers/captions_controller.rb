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

class CaptionsController < ApplicationController

  def create

  end

  private
  def caption_params
    params.require(:caption).permit(:text, :user_id, :picture_id)
  end
  

end
