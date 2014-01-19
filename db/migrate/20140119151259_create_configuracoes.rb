class CreateConfiguracoes < ActiveRecord::Migration
  def change
    create_table :configuracoes do |t|
      t.string :chave
      t.string :valor
      t.timestamps
    end
  end
end
