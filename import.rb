require 'quandl/data'
require 'quandl/fabricate/data'

def names
  ['Blake','Bob','Billy','Bean','Blair','Benjamin']
end

def generate_dataset
  o = []
  o << "#{names.sample}'s Sandbox Dataset #{Time.now}"
  o << "Date, high, low, average"
  o << Quandl::Fabricate::Data.rand(rows: rand(20)+10, columns: 4).to_csv
  o << '----'
  o.join("\n")
end

datasets = rand(5) + 5

datasets.times do |i|
  puts generate_dataset
  sleep(1)
end