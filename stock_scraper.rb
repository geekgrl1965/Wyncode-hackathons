require 'httparty'
require 'nokogiri'


#specify which stocks we want to see
tickers = [
	'FB',
	'GOOGL'
]

prices = []

def get_mgmt(ticker)
	ticker = "aapl"
	tag = 'table#id-magmt-table tr td.p'
    url = "https://finance.google.com/finance"
	q_string = "?q=#{ticker}"   #filters webpage based on tickers array
	response = HTTParty.get(url + q_string)  
	parsed = Nokogiri::HTML(response.body)
	person = parsed.css(tag).text.to_f
	puts "#{ticker} @ #{price}"
	h[ticker] = price
	return h
end

def get_price(ticker)
	h = Hash.new
	url = "https://finance.google.com/finance"
	q_string = "?q=#{ticker}"   #filters webpage based on tickers array
	response = HTTParty.get(url + q_string)  
	parsed = Nokogiri::HTML(response.body)
	price = parsed.css('span.pr').text.to_f
	puts "#{ticker} @ #{price}"
	h[ticker] = price
	return h
end

for stock_symbol in tickers
	prices << get_price(stock_symbol)
end

p prices