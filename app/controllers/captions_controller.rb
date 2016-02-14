class CaptionsController < ApplicationController

  def create

  end

  private
  def caption_params
    params.require(:caption).permit(:text, :user_id, :picture_id)
  end
  

end
