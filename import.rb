require 'quandl/data'
require 'quandl/fabricate/data'

puts Quandl::Fabricate::Data.rand(rows: 10, columns: 4).to_csv