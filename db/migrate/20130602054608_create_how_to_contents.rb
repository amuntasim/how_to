class CreateHowToContents < ActiveRecord::Migration
  def change
    create_table :how_to_contents do |t|
      t.integer :section_id
      t.integer :order , default: 0
      t.boolean :active, default: true
      t.timestamps
    end

    create_table :how_to_content_translations do |t|
      t.integer :how_to_content_id
      t.string :locale
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
