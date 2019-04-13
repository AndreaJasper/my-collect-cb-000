
def my_collect(arr)
  counter = 0
  new_list = []
  while counter <arr.length
    new_list << yield(arr[counter])
    counter += 1
  end
new_list
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
