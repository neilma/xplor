# frozen_string_literal: true

require 'spec_helper'

describe Models::Answer do
  it { should belong_to(:question) }
  it { should belong_to(:participant) }
end
