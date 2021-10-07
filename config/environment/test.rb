ENV['RACK_ENV'] = 'test'

require 'simplecov'

SimpleCov.start

directories = %i[application domain infra]

directories.each do |dir|
  Dir.glob("./#{dir}/**/*.rb").each { |f| require f }
end
