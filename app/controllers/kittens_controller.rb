class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @kittens }
      format.json { render json: @kittens }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash.notice = "Success: created"
      redirect_to @kitten
    else
      flash[:notice] = "Failed to save, try again"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @kitten }
      format.json { render json: @kitten }
    end
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      flash.notice = "Success: updated"
      redirect_to @kitten
    else
      flash.notice = "Failed to save, try again"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash.notice = "Deleted a meow"
    redirect_to root_path, status: :see_other
  end

  private
    def kitten_params
      params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end
end
