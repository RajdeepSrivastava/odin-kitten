class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    render json: @kittens, status: 200
  end

  def new
    @kittens = Kitten.new 
  end

  def create
    @kittens = Kitten.new(kitten_params)
    if @kittens.save
      render json: @kittens, status: 200
    else
      render json: {error: "Not created"}
    end
  end

  def show
    @kitten = Kitten.find_by(id: params[:id])
    if @kitten
      render json: @kitten, status: 200
    else
      render json: {error: "Not Found"}
    end
  end

  def update
    @kitten = Kitten.find_by(id: params[:id])
    if @kittens.update(kitten_params)
      render json: @kitten, status: 200
    else 
      render json: @kitten, status: 200
    end
  end

  def edit
    @kitten = Kitten.find_by(id: params[:id])
  end

  def delete
    @kitten = Kitten.find_by(id: params[:id])
    if @kitten.destroy
      render json: @kitten, status: 200
    else
      render json: {error: "Can not be Deleted"}
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
