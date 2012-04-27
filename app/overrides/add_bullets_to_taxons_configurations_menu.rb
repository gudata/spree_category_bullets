Deface::Override.new(:virtual_path => 'spree/admin/taxons/edit',
  :name => 'add bullet editing to taxon edit screen',
  :insert_before => "[data-hook='buttons']",
  :partial => 'spree/admin/taxons/to_bullets_index')



Deface::Override.new(:virtual_path => 'spree/products/show',
  :name => 'display_bullets',
  :insert_before => "[data-hook='product_properties']",
  :partial => 'spree/products/bullets' # spree/products/custom_bullets if you want the image_code restriction to be active
)
