def my_select(collection)
  if block_given?
    array = []
    i = 0
    while i < collection.length
      array << if yield(collection[i]) is true end
      i += 1
    end
    array
  else
    "No Block Given"
  end
end
