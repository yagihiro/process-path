# frozen_string_literal: true

RSpec.describe Process::Path do
  it 'has a version number' do
    expect(Process::Path::VERSION).not_to be nil
  end
end
