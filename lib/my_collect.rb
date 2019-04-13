
def my_collect(arr)
  counter = 0
  list = []
  while counter <arr.length
    list << yield(arr[counter])
    counter += 1
  end
list
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
