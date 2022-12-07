require "test_helper"

class FormacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formacao = formacaos(:one)
  end

  test "should get index" do
    get formacaos_url, as: :json
    assert_response :success
  end

  test "should create formacao" do
    assert_difference('Formacao.count') do
      post formacaos_url, params: { formacao: { nome: @formacao.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show formacao" do
    get formacao_url(@formacao), as: :json
    assert_response :success
  end

  test "should update formacao" do
    patch formacao_url(@formacao), params: { formacao: { nome: @formacao.nome } }, as: :json
    assert_response 200
  end

  test "should destroy formacao" do
    assert_difference('Formacao.count', -1) do
      delete formacao_url(@formacao), as: :json
    end

    assert_response 204
  end
end
