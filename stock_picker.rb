def stock_picker (stocks)
  buy_sell = []
  profit=0
  stocks.each_with_index do |s, i|
    buy_sell.push([s, stocks.slice(i,stocks.length).max])
  end
  for pair in buy_sell
    if ( pair[1] > pair[0] ) && ( profit < pair[1]-pair[0] )
      profit = pair[1]-pair[0]
      result=pair
    end  
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])