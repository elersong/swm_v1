class ProjectsController < ApplicationController
    
    def index
        @projects = Project.all
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    def new
        @project = Project.new
        @project.user_id = current_user.id
        
        respond_to do |format|
            format.html # new.html.erb
            format.xml  { render :xml => @project }
        end
    end
    
    def create
        binding.pry
        @project = Project.new(project_params)

        respond_to do |format|
          if @project.save
            format.html { redirect_to(projects_path, :notice => 'Project was successfully created.') }
            format.xml  { render :xml => @project, :status => :created, :location => @project }
          else
            format.html { render :action => "new" }
            format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
          end
        end
    end
    
    private
    
    def project_params
       p = params.require(:project).permit(:decedent, :due_date) 
       p[:user_id] = current_user.id
       p
    end
    
end
