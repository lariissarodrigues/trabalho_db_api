require "test_helper"

class FormacaoHasFuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formacao_has_funcionario = formacao_has_funcionarios(:one)
  end

  test "should get index" do
    get formacao_has_funcionarios_url, as: :json
    assert_response :success
  end

  test "should create formacao_has_funcionario" do
    assert_difference('FormacaoHasFuncionario.count') do
      post formacao_has_funcionarios_url, params: { formacao_has_funcionario: { dataFinalizacao: @formacao_has_funcionario.dataFinalizacao, dataInicio: @formacao_has_funcionario.dataInicio, referenfes: @formacao_has_funcionario.referenfes } }, as: :json
    end

    assert_response 201
  end

  test "should show formacao_has_funcionario" do
    get formacao_has_funcionario_url(@formacao_has_funcionario), as: :json
    assert_response :success
  end

  test "should update formacao_has_funcionario" do
    patch formacao_has_funcionario_url(@formacao_has_funcionario), params: { formacao_has_funcionario: { dataFinalizacao: @formacao_has_funcionario.dataFinalizacao, dataInicio: @formacao_has_funcionario.dataInicio, referenfes: @formacao_has_funcionario.referenfes } }, as: :json
    assert_response 200
  end

  test "should destroy formacao_has_funcionario" do
    assert_difference('FormacaoHasFuncionario.count', -1) do
      delete formacao_has_funcionario_url(@formacao_has_funcionario), as: :json
    end

    assert_response 204
  end
end
