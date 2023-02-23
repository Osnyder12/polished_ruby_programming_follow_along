require 'pry'

def order_weight(weights_string)

    weights = weights_string.split(' ')
    weights_array = []
    weights.each do |n|
      new_weight = n.split('').map(&:to_i).sum
      weights_array << [n, new_weight]
    end

    weights_array.sort_by { |x,y| y }.map(&:first).join(' ')
end

weights_string = "2000 10003 1234000 44444444 9999 11 11 22 123"

order_weight(weights_string)