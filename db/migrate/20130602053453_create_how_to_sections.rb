class CreateHowToSections < ActiveRecord::Migration
  def change
    create_table :how_to_sections do |t|
      t.integer :parent_id
      t.boolean :active  , default: true
      t.integer :sub_sections_count, default: 0
      t.integer :contents_count, default: 0
      t.integer :order, default: 0
      t.integer :lft
      t.integer :rgt
      t.integer :depth

      t.timestamps
    end

    create_table :how_to_section_translations do |t|
      t.integer :how_to_section_id
      t.string :locale
      t.string :name

      t.timestamps
    end
  end
end
