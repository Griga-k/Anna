class CreateSklads < ActiveRecord::Migration[5.2]
  def change
    create_table :sklads do |t|
      t.decimal :category
      t.string :name
      t.decimal :counttt
      t.text :nottte
      t.string :image
      t.decimal :price
     t.decimal :min_count
      t.decimal :count_zakaz
      t.string :save_place
      t.string :artikul
      t.string :name_pdf
     t.string :draw_pdf
      t.string :name_dxf
      t.string :draw_dxf
     t.decimal :value_types

     t.timestamps
    end
  end
end
