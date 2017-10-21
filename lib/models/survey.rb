# frozen_string_literal: true

module Models
  class Survey < ActiveRecord::Base
    has_many :questions, class_name: 'Models::Question'
  end
end
