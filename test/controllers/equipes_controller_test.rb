require "test_helper"

class EquipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipe = equipes(:one)
  end

  test "should get index" do
    get equipes_url, as: :json
    assert_response :success
  end

  test "should create equipe" do
    assert_difference('Equipe.count') do
      post equipes_url, params: { equipe: { criacao: @equipe.criacao, idEquipe: @equipe.idEquipe, nome: @equipe.nome, setor: @equipe.setor } }, as: :json
    end

    assert_response 201
  end

  test "should show equipe" do
    get equipe_url(@equipe), as: :json
    assert_response :success
  end

  test "should update equipe" do
    patch equipe_url(@equipe), params: { equipe: { criacao: @equipe.criacao, idEquipe: @equipe.idEquipe, nome: @equipe.nome, setor: @equipe.setor } }, as: :json
    assert_response 200
  end

  test "should destroy equipe" do
    assert_difference('Equipe.count', -1) do
      delete equipe_url(@equipe), as: :json
    end

    assert_response 204
  end
end
