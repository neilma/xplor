# frozen_string_literal: true

Bundler.require(:default, ENV['SURVEY_ENV'].to_sym)

Dir['./lib/**/*.rb'].each { |file| require file }
