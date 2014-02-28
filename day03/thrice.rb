def thrice
  yield
end

thrice do
  puts "Hello World"
end
