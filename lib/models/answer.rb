# frozen_string_literal: true

module Models
  class Answer < ActiveRecord::Base
    belongs_to :question, class_name: 'Models::Question'
    belongs_to :participant, class_name: 'Models::Participant'
  end
end
