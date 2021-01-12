# frozen_string_literal: true

require_relative './handshake'

puts '##############################'
puts '# The secrete handshake kata #'
puts '#                            #'
puts '##############################'
puts ''

handshake = Handshake.new

args = ARGV.map(&:to_i)
args.each do |number|
  next if number.zero?

  puts "secrete handshake for #{number}: "
  puts "#{handshake.de_crypt(number)} \n\n"
end
