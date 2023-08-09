require "net/http"
require "json"
require_relative './Rater.rb'

puts "Welcome to the Currency Converter!"

while true do
  puts "Which currency would you like to convert from?"
  puts 'Please, type the currency code (e.g. USD, BRL, EUR)'
  from_currency = gets.chomp.upcase

  puts "Which currency would you like to convert to?"
  to_currency = gets.chomp.upcase

  rate = Rater.new
  rate.rate(from_currency, to_currency)
  puts line
  lines.push(line)

  puts "Do you like to convert another currency? (Y/N)"
  answer = gets.chomp.upcase
  while answer != 'Y' && answer != 'N'
    puts "Please, type Y or N"
    answer = gets.chomp.upcase
  end
  break if answer == 'N'
end