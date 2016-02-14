# == Schema Information
#
# Table name: pictures
#
#  id          :integer          not null, primary key
#  picture_url :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PicturesController < ApplicationController

  def show
    @picture = Picture.find(id: params[id])
    render :show



  end

  def index
    @pictures = Picture.all()
    render :index



  end

  def create
    @picture = new Picture()
    if @picture.save
      render :show
    else
      flash[:errors] = @pictures.errors.full_messages
      render :json
    end
  end






  private
  def picture_params
    params.require(:picture).permit();
  end


end
