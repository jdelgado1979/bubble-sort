array = [4,3,78,2,0,2]

def bubble_sort(array)
  n = array.length

  # Outer loop to control the number of passes
  loop do
    swapped = false

    # Inner loop for each pass, limit the range to avoid out-of-bounds error
    (n-1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end

    # If no elements were swapped, the array is sorted
    break unless swapped
  end

  array
end

p bubble_sort(array)