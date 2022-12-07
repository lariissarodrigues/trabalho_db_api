class CreateFuncionarios < ActiveRecord::Migration[6.1]
  def change
    create_table :funcionarios do |t|
      t.string :nome, limit: 45
      t.integer :telefone
      t.string :email, limit: 45
      t.double :salario
      t.datetime :adesaoDate
      t.equipe :references
      t.endereco :references

      t.timestamps
    end
  end
end
