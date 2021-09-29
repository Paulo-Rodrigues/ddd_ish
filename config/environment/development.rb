ENV['RACK_ENV'] = 'development'

Dir.glob('./src/**/*.rb').each { |f| require f }
