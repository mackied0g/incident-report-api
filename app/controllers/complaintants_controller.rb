class ComplaintantsController < ApplicationController
    before_action :set_complaintant, only: [:show, :update, :destroy]
  
    # GET /complaintants
    def index
      @complaintants = Complaintant.all
  
      render json: @complaintants
    end
  
    # GET /complaintants/1
    def show
      render json: @complaintant
    end
  
    # POST /complaintants
    def create
      @complaintant = Complaintant.create(complaintant_params)
  
      if @complaintant.save
        render json: @complaintant, status: :created, location: @complaintant
      else
        render json: @complaintant.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /complaintants/1
    def update
      if @complaintant.update(complaintant_params)
        render json: @complaintant
      else
        render json: @complaintant.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /complaintants/1
    def destroy
      @complaintant.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_complaintant
        @complaintant = Complaintant.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def complaintant_params
        params.require(:complaintant).permit(:name)
      end
  end
  