# frozen_string_literal: true

module Models
  class Question < ActiveRecord::Base
    has_many :answers, class_name: 'Models::Answer'
  end
end
