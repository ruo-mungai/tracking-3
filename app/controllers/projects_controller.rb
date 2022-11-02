class ProjectsController < ApplicationController
    #  protect_from_forgery with: :null_session
  # before_action :authenticate_user!

  before_action :set_project, only: %i[ show update destroy ]

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    @project = Project.new(project_params)
    @project.user_id=session[:user_id]

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
  if
      @project.update(project_params)
      render json: @project
  else
      render json: @project.errors, status: :unprocessable_entity
  end
  end

  # DELETE /projects/1
   def destroy
    if @current_user.role=="admin"
    @project.destroy
    else
      render json: { error: "You are not an admin" }, status: :not_found
    end
  end

  def my_project
    @project= @current_user.projects
    render json: @project
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :category, :description,:github_link)
    end
end
