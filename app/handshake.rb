# frozen_string_literal: true

# Class for decrypt the message
class Handshake
  def initialize
    @handshake = ['wink', 'double wink', 'close your eyes', 'jump']
  end

  def convert(encoded_msg)
    encoded_msg.to_s(2)
  end

  def de_crypt(encoded_msg)
    bits = convert(encoded_msg).split('').reverse!
    msgs = @handshake
    decrypt = []
    bits.each_with_index do |bit, i|
      next if i > 3 || bit == '0'

      decrypt << msgs[i]
    end
    bits.length > 4 ? decrypt.reverse! : decrypt
  end
end
