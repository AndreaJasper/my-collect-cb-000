def my_collect(collection)
  i = 0
  list = []

  while i < collection.length
    list < yield(collection[i])
    i += 1
  end
  list
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
