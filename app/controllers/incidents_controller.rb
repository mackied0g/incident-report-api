class IncidentsController < ApplicationController
    before_action :set_incident, only: [:show, :update, :destroy]

    def index
      @incidents = Incident.all
      render json: @incidents
    end
  
    def show
      render json: @incident
    end

    def create
      @incident = Incident.create(incident_params)
      
      if @incident.save
        render json: @incident, status: :created, location: @incident
      else
        render json: @incident.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @incident.update(incident_params)
        render json: @incident
      else
        render json: @incident.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @incident.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_incident
        @incident = Incident.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def incident_params
        params(:incident).permit(:complaintant_id, :aggressor_id, :severity, :description, :datetime, :location, :witnesses)
      end
  end