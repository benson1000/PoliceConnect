class IncidentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  # GET /incidents
  def index
    @incidents = Incident.all
  end

  # GET /incidents/1
  def show
  end

  # GET /incidents/new
  def new
    @incident = Incident.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  def create
    @incident = current_user.incidents.build(incident_params)

    if @incident.save
      redirect_to @incident, notice: 'Incident was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /incidents/1
  def update
    if @incident.update(incident_params)
      redirect_to @incident, notice: 'Incident was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /incidents/1
  def destroy
    @incident.destroy
    redirect_to incidents_url, notice: 'Incident was successfully destroyed.'
  end

  private

  def set_incident
    @incident = Incident.find(params[:id])
  end

  def incident_params
    params.require(:incident).permit(:title, :description, :location, :media)
  end
end
