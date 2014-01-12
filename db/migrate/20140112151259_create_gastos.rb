class CreateGastos < ActiveRecord::Migration
  def change
    create_table :gastos do |t|
      t.string :descricao
      t.decimal :valor, :precision => 6, :scale => 2
      t.references :contribuinte, index: true

      t.timestamps
    end
  end
end
