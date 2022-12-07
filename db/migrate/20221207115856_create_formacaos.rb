class CreateFormacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :formacaos do |t|
      t.string :nome, limit: 45

      t.timestamps
    end
  end
end
