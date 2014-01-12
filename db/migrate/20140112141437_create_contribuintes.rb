class CreateContribuintes < ActiveRecord::Migration
  def change
    create_table :contribuintes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
