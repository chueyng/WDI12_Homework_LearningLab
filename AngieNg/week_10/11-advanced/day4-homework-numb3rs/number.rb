# Binary based 2
# Decimal based 10

class Number
  def self.bin2dec(bin)  # class method
    dec = 0
    bin.chars.reverse.each_with_index do |bit, power|
      bit = bit.to_i
      dec += (bit * (2 ** power))
    end
   dec
  end

  def self.dec2bin(dec)
    bin = []

    while dec > 0
      r = dec % 2
      div = dec / 2
      bin.push(r.to_s)
      dec = div
    end
    bin.reverse.join
  end

  def self.hex_obj
    obj = {  "0000" => "0",
             "0001" => "1",
             "0010" => "2",
             "0011" => "3",
             "0100" => "4",
             "0101" => "5",
             "0110" => "6",
             "0111" => "7",
             "1000" => "8",
             "1001" => "9",
             "1010" => "a",
             "1011" => "b",
             "1100" => "c",
             "1101" => "d",
             "1110" => "e",
             "1111" => "f" }
  end

  def self.bin2hex(bin)
    hex = []
    result = ""

    bin.prepend('0'*(4-(bin.length)%4))

    hex = bin.chars.each_slice(4).map(&:join)
    hex.each do |bit|
      Number.hex_obj.each do |item, key|
        if bit == item
          result = result + key
        end
      end
    end
    result
  end

  def self.hex2bin(hex)
    bin = ""

    hex.chars.each do |bit|
      Number.hex_obj.each do | item, key|
        if bit == key
          bin = bin + item
        end
      end
    end
    bin
    # bin = hex.to_i(16).to_s(2)
  end
end