source 'https://rubygems.org'

#gem 'pry-debugger'

gemspec

%w[rspec rspec-core rspec-expectations rspec-mocks rspec-support].each do |lib|
  gem lib, :git => "git://github.com/rspec/#{lib}.git", :branch => '3.1-maintenance'
end
