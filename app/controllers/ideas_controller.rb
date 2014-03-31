class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  def index
    @ideas = Idea.all
  end

  def show
  end

  def new
    @idea = Idea.new
  end

  def edit
  end

  def create
    @idea = Idea.new(idea_params)

      if @idea.save
        redirect_to @idea, notice: 'A ideia foi criada.' 
      else
        render action: 'new'
      end
  end

  def update

      if @idea.update(idea_params)
        redirect_to @idea, notice: 'A ideia foi atualizada.'
      else
        render action: 'edit'
      end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_url
  end

  private

    def set_idea
      @idea = Idea.find(params[:id])
    end

    def idea_params
      params.require(:idea).permit(:description)
    end
end
