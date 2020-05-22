def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  counter = 0
  final_array = []

  while counter < src.length do
    inner_counter = 0
    min = 999
    while inner_counter < src[counter].length do
      if src[counter][inner_counter] < min
        min = src[counter][inner_counter]
      end
      inner_counter += 1
    end

    final_array.push(min)
    counter += 1
  end

  return final_array
end
