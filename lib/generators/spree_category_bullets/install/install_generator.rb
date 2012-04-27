module SpreeCategoryBullets
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "\n//= require store/spree_category_bullets\n"
        append_file "app/assets/javascripts/admin/all.js", "\n//= require admin/spree_category_bullets\n"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css", "\n *= require store/spree_category_bullets\n", :before => /\*\//, :verbose => true
        inject_into_file "app/assets/stylesheets/admin/all.css", "\n *= require admin/spree_category_bullets\n", :before => /\*\//, :verbose => true
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_category_bullets'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'bundle exec rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end