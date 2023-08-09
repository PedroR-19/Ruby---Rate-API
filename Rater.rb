# frozen_string_literal: true

class Rater
  def rate(from_currency, to_currency)
    key = 'Your Key'
    url = "https://v6.exchangerate-api.com/v6/#{key}/pair/#{from_currency}/#{to_currency}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response_obj = JSON.parse(response)
    rate = response_obj['conversion_rate']
    line = "The rate from #{from_currency} to #{to_currency} is #{rate}"
    puts line
  end
end