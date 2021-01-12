class CreateSauces < ActiveRecord::Migration[6.0]
  def change
    create_table :sauces do |t|
      t.string :name
      t.string :description
      t.string :photo_url

      t.timestamps
    end
  end
end
