source :rubygems

gem 'rails', '3.2.6'
gem 'jquery-rails', '2.0.2'
gem 'eventmachine', '1.0.0.rc.1'
gem 'thin', '1.3.1'

group :development do
  gem 'heroku', '2.27.3'
  gem 'annotate', '2.5.0pre1'
  gem 'guard-rspec', '0.7.3'
  gem 'guard-spork', '0.8.0'
end

group :development, :test do
  # RE: FFI -- 1.0.9 is latest win32 version but it triggers a deprecation warning in RbConfig.
  # Edit lib/ruby/gems/1.9.1/gems/ffi-1.0.9-x86-mingw32/lib/ffi/platform.rb under your ruby path
  # and replace all occurences of Config:: with RbConfig::
  gem 'ffi', '1.0.9'                    
  gem 'debugger', '1.1.4'
  gem 'sqlite3', '1.3.6'
  gem 'rspec-rails', '2.10.1'
  gem 'factory_girl_rails', '3.4.0'
end

group :test do
  gem 'shoulda-matchers', '1.2.0'
  gem 'capybara', '1.1.2'
  gem 'spork-rails', '3.2.0'
end

group :production do
  gem 'pg', '0.13.2'
end

group :assets do
  gem 'sass-rails', '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.4'
end
