# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../app/handshake')

Rspec.describe 'Handshake' do
  it 'correct decrypt for input: 3' do
    expected = ['wink', 'double blink']
    expect(Handshake.new.de_crypt(3)).to eq(expected)
  end
end

Rspec.describe 'Handshake' do
  it 'correct decrypt for input: 19' do
    expected = ['double blink', 'wink']
    expect(Handshake.new.de_crypt(19)).to eq(expected)
  end
end
