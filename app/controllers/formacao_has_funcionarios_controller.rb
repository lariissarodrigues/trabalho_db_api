class FormacaoHasFuncionariosController < ApplicationController
  before_action :set_formacao_has_funcionario, only: [:show, :update, :destroy]

  # GET /formacao_has_funcionarios
  def index
    @formacao_has_funcionarios = FormacaoHasFuncionario.all

    render json: @formacao_has_funcionarios
  end

  # GET /formacao_has_funcionarios/1
  def show
    render json: @formacao_has_funcionario
  end

  # POST /formacao_has_funcionarios
  def create
    @formacao_has_funcionario = FormacaoHasFuncionario.new(formacao_has_funcionario_params)

    if @formacao_has_funcionario.save
      render json: @formacao_has_funcionario, status: :created, location: @formacao_has_funcionario
    else
      render json: @formacao_has_funcionario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formacao_has_funcionarios/1
  def update
    if @formacao_has_funcionario.update(formacao_has_funcionario_params)
      render json: @formacao_has_funcionario
    else
      render json: @formacao_has_funcionario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formacao_has_funcionarios/1
  def destroy
    @formacao_has_funcionario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formacao_has_funcionario
      @formacao_has_funcionario = FormacaoHasFuncionario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formacao_has_funcionario_params
      params.require(:formacao_has_funcionario).permit(:dataInicio, :dataFinalizacao, :referenfes)
    end
end
