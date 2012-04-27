Spree Category Bullets
====================

With this extension you can attach bullets (text chunks) on the categories.
Then all the products in this category will have those bullets displayed in the single item view.

Every bullet will have sort order, active flag and description.

One special case is when you have close products in the same category which differs by some of the bullets. 
Then you can use the image_code to group the simillar bullets in the category.

To make this work you have to add a property 'image_code' in the products.

Here is an example of the most complicated usage of the bullets


Installation
------------

Add to `Gemfile`:

    gem 'spree_category_bullets', :git => 'git://github.com/gudata/spree_category_bullets.git'

Run:

    $ bundle
    $ bundle exec rails g spree_category_bullets:install


Testing
-------

No need for tests right now. 

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2012 Gudata, released under the New BSD License
