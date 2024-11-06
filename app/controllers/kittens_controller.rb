class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.create(params)
    if @kitten.save
      redirect_to @kitten
    else
      flash[:notice] = "Failed to save, try again"
      render new
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.update(params)
    if @kitten.
      redirect_to @kitten
    else
      flash.notice = "Failed to save, try again"
      render new
    end
  end

  def destroy
  end
end
