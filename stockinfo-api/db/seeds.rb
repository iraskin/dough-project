require 'csv'
require 'yahoo-finance'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'companylist.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
yahoo_client = YahooFinance::Client.new

csv.each do |row|
  s = Stock.new
  s.symbol = row['Symbol'].strip
  s.name = row['Name'].strip
  s.sector = row['Sector'].strip
  s.industry = row['Industry'].strip
  s.save
  puts "Saved #{s.symbol}, #{s.name}, #{s.sector}, #{s.industry}"
  begin
    data = yahoo_client.historical_quotes(s.symbol, {raw:false, period: :daily})
    data[0,30].each do |quote|
      q = Quote.new
      q.date = quote.trade_date
      q.open = quote.open
      q.high = quote.high
      q.low = quote.low
      q.close = quote.low
      q.volume = quote.volume
      q.stock_id = s.id
      q.save
      puts "Saved #{q.date}, #{q.open}, #{q.high}, #{q.low}, #{q.close}, #{q.volume}, #{q.stock_id}"
    end
  rescue Exception
  end
end
