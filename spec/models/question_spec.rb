# frozen_string_literal: true

require 'spec_helper'

describe Models::Question do
  it { should have_many(:answers) }
end
