class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :cep, limit: 45

      t.timestamps
    end
  end
end
