require 'rubygems'
require 'bundler/setup'

require 'active_support'
require 'active_support/all'

LOOPS = 10000000
HEADS = 1
TAILS = 0

heads_count = 0
tails_count = 0

(0..LOOPS).each do |i|
  flip = rand(0..1)
  if flip == HEADS
    heads_count+=1
  else
    tails_count+=1
  end
end


percentage_heads = heads_count/(LOOPS * 1.0) * 100.0
percentage_tails = tails_count/(LOOPS * 1.0) * 100.0

puts "Percentage flips landed heads after #{LOOPS.to_s(:delimited)} flips: #{percentage_heads.round(2).to_s}"
puts "Percentage flips landed tails after #{LOOPS.to_s(:delimited)} flips: #{percentage_tails.round(2).to_s}"