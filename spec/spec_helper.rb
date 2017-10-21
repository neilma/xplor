# frozen_string_literal: true

ENV['SURVEY_ENV'] = 'test'

require 'boot'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

    with.library :active_record
    with.library :active_model
  end
end

DatabaseCleaner.clean_with :truncation

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel)
  config.include(Shoulda::Matchers::ActiveRecord)

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end
