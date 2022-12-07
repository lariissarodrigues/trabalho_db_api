class FormacaosController < ApplicationController
  before_action :set_formacao, only: [:show, :update, :destroy]

  # GET /formacaos
  def index
    @formacaos = Formacao.all

    render json: @formacaos
  end

  # GET /formacaos/1
  def show
    render json: @formacao
  end

  # POST /formacaos
  def create
    @formacao = Formacao.new(formacao_params)

    if @formacao.save
      render json: @formacao, status: :created, location: @formacao
    else
      render json: @formacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formacaos/1
  def update
    if @formacao.update(formacao_params)
      render json: @formacao
    else
      render json: @formacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formacaos/1
  def destroy
    @formacao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formacao
      @formacao = Formacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formacao_params
      params.require(:formacao).permit(:nome)
    end
end
