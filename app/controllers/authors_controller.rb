class AuthorsController < ApplicationController
  before_action :draw_author, only: [ :show, :edit ]
  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to author_path(@author)
    else
      render 'new'
    end
  end

  private

  def draw_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
