class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(params[:idea])

    if @idea.save
      redirect_to action: :index
    else
      flash[:error] = @idea.errors.full_messages.to_sentence
      render action: :new
    end
  end
end
