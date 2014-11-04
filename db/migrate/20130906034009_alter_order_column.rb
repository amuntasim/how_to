class AlterOrderColumn < ActiveRecord::Migration
  def up
    rename_column :how_to_sections, :order, :position
    rename_column :how_to_contents, :order, :position
  end

  def down
    rename_column :how_to_sections, :position, :order
    rename_column :how_to_contents, :position, :order
  end
end
