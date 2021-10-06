ENV['RACK_ENV'] = 'development'

directories = %i[application domain infra]

directories.each do |dir|
  Dir.glob("./#{dir}/**/*.rb").each { |f| require f }
end
