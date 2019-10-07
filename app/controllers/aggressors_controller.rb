class AggressorsController < ApplicationController
    before_action :set_aggressor, only: [:show, :update, :destroy]
  
    # GET /aggressors
    def index
      @aggressors = Aggressor.all
  
      render json: @aggressors
    end
  
    # GET /aggressors/1
    def show
      render json: @aggressor
    end
  
    # POST /aggressors
    def create
      @aggressor = Aggressor.create(aggressor_params)
  
      if @aggressor.save
        render json: @aggressor, status: :created, location: @aggressor
      else
        render json: @aggressor.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /aggressors/1
    def update
      if @aggressor.update(aggressor_params)
        render json: @aggressor
      else
        render json: @aggressor.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /aggressors/1
    def destroy
      @aggressor.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_aggressor
        @aggressor = Aggressor.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def aggressor_params
        params.require(:aggressor).permit(:manager_id, :issuecount, :name, :title, :gender, :age, :race, :email)
      end
  end
  