class CreateReclamos < ActiveRecord::Migration[5.1]
  def change
    create_table :reclamos do |t|
      t.references :user, foreign_key: true
      t.references :empresa, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
