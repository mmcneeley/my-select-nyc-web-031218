def my_select(collection)
  if block_given?
    array = []
    i = 0
    while i < collection.length
      if yield(collection[i])
        array << collection[i]
      end
      i += 1
    end
    array
  else
    "No Block Given"
  end
end
