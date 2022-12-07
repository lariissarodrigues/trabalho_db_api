class CreateEquipes < ActiveRecord::Migration[6.1]
  def change
    create_table :equipes do |t|
      t.integer :idEquipe
      t.string :nome, limit: 45
      t.datetime :criacao
      t.string :setor, limit: 45

      t.timestamps
    end
  end
end
