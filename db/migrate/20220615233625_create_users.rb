class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      #nameとageのカラムが作成できるようにする
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
