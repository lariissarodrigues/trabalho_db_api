class CreateFormacaoHasFuncionarios < ActiveRecord::Migration[6.1]
  def change
    create_table :formacao_has_funcionarios do |t|
      t.datetime :dataInicio
      t.datetime :dataFinalizacao
      t.Funcionario :referenfes

      t.timestamps
    end
  end
end
