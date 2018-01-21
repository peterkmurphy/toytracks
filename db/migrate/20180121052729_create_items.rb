class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.binary :photo
      t.decimal :price
      t.datetime :first_advertised_date
      t.boolean :is_advertisied
      t.references :user, index: true

      t.timestamps
    end
  end
end
