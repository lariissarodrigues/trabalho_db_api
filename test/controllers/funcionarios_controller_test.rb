require "test_helper"

class FuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get funcionarios_url, as: :json
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post funcionarios_url, params: { funcionario: { adesaoDate: @funcionario.adesaoDate, email: @funcionario.email, nome: @funcionario.nome, references: @funcionario.references, salario: @funcionario.salario, telefone: @funcionario.telefone } }, as: :json
    end

    assert_response 201
  end

  test "should show funcionario" do
    get funcionario_url(@funcionario), as: :json
    assert_response :success
  end

  test "should update funcionario" do
    patch funcionario_url(@funcionario), params: { funcionario: { adesaoDate: @funcionario.adesaoDate, email: @funcionario.email, nome: @funcionario.nome, references: @funcionario.references, salario: @funcionario.salario, telefone: @funcionario.telefone } }, as: :json
    assert_response 200
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete funcionario_url(@funcionario), as: :json
    end

    assert_response 204
  end
end
