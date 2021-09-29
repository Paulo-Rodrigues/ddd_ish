ENV['RACK_ENV'] = 'test'

Dir.glob('./src/**/*.rb').each { |f| require f }
