# perks controller
class PerksController < ApplicationController
  authorize_resource

  def show
    @perk = Perk.find(params[:id])
    @project = Project.find(params[:project_id])
  end

  def new
    @perk = Perk.new
    @project = Project.find(params[:project_id])
  end

  def create
    project = Project.find(params[:project_id])

    user_id = project.user_id

    perk = project.perks.new(perk_params(params))
    perk.user_id = user_id
    puts "Name: #{perk.name}"

    if perk.save
      redirect_to project
    else
      perk.errors.each { |n, e| puts "#{n}: #{e}" }
    end
  end

  def edit
    @perk = Perk.find(params[:id])
  end

  def update
    perk = Perk.find(params[:id])

    if perk.update(perk_params(params))
      redirect_to project_path(perk.project_id)
    else
      # errors!
      redirect_to edit
    end
  end

  def destroy
    project = Project.find(params[:project_id])
    perk = Perk.find(params[:id])

    project.perks.destroy(perk)

    redirect_to project
  end

  private
  def perk_params(params)
    params.require(:perk).permit(:name, :rewards, :minimum_amount, :amount_left)
  end
end
