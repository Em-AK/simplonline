class DefinitionsController < ApplicationController

  def index
    @definitions = Definition.by_keyword.page(params[:page]).per(40)
  end

  def new
  end

  def create
    definition = Definition.new(definition_attributes)
    definition.save!
    redirect_to action: :index, anchor: definition.keyword
  end

  def edit
    @definition = Definition.find(params[:id])
  end

  def update
    definition = Definition.find(params[:id])
    definition.update_attributes(definition_attributes)
    definition.save!
    redirect_to action: :index, anchor: definition.keyword
  end

  def destroy
    definition = Definition.find(params[:id])
    definition.delete
    redirect_to action: :index
  end

  def show
    @definition = Definition.find(params[:id])
  end


  private

  def definition_attributes
    params.require(:definition).permit(:keyword, :description, :url)
  end
end
