class MedicalProceduresController < ApplicationController
  before_action :set_medical_procedure, only: [:show, :update, :destroy]

  # GET /medical_procedures
  def index
    @medical_procedures = if index_params[:searchquery].present?
                            MedicalProcedure.title_starts_with(index_params[:searchquery]) + MedicalProcedure.title_contains(index_params[:searchquery])
                          else
                            MedicalProcedure.all
                          end

    render json: @medical_procedures.map(&:title).uniq
  end

  private
    def index_params
      params.permit(:searchquery)
    end
end
