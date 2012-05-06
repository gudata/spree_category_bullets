# This migration comes from spree_category_bullets (originally 20120424085004)
class CreateCategoryBullets < ActiveRecord::Migration
  def self.up
    create_table :spree_bullets do |t|
      t.references :taxon
      t.integer :image_code
      t.text :description
      t.integer :line_number
      t.integer :is_active

      t.timestamps
    end
    
    add_index :spree_bullets, [:taxon_id], :name => 'index_bullets_taxon'
    add_index :spree_bullets, [:taxon_id, :image_code], :name => 'index_bullets_taxon_image_code'
  end

  def self.down
    drop_table :spree_bullets
  end
end
