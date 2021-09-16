class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update, :destroy, :edit]
  skip_before_action :authenticate_user!, only: :index

  def index
    @images = Image.all
    new
  end
    
  def show
    @review = Review.new
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = "Image successfully created"
      redirect_to @image
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def edit; end  

  def update
    @image.update(image_params)
    redirect_to images_path 
  end

  def destroy
    if @image.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to images_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to images_path
    end
  end
  
  private
  
  def set_image
    @image = Image.find(params[:id])
  end
  
  # Strong parameters
  def image_params
    params.require(:image).permit(:title, :rating, :legend, :url, :photo)
  end
end
