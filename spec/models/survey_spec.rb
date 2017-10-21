# frozen_string_literal: true

require 'spec_helper'

describe Models::Survey do
  it { should have_many(:questions) }
end
