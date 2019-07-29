require "mini_magick"

class RacesController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new
    img = params[:race][:cover_picture].tempfile.to_path
    image = MiniMagick::Image.open(img)
    @race.cover_picture = image.crop set_photo_size(params)
    @race.save
  end

  def set_photo_size(params)
    width = params[:photo][:width]
    height = params[:photo][:height]
    xoffset = params[:photo][:xoffset]
    yoffset = params[:photo][:yoffset]
    "#{width}x#{height}+#{xoffset}+#{yoffset}"
  end
end
