# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_category_bullets'
  s.version     = '0.0.1'
  s.summary     = 'Add sorted bullets/properties on categories.'
  s.description = 'Each category can have orederd list of properties. Those properties are displayed on all the products'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Gudata'
  s.email             = 'i.bardarov@gmail.com'
  s.homepage          = 'http://www.gudasoft.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.1.0.rc2'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'rspec-rails',  '~> 2.7'
  s.add_development_dependency 'sqlite3'
end