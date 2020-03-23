# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Made do
  it 'has a version number' do
    expect(Made::VERSION).not_to be nil
  end
end
