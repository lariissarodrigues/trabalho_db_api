class CreateProjetos < ActiveRecord::Migration[6.1]
  def change
    create_table :projetos do |t|
      t.integer :idProjeto
      t.datetime :dataInicio
      t.datetime :dataFinalizacao
      t.string :nome, limit: 45
      t.equipe :references

      t.timestamps
    end
  end
end
