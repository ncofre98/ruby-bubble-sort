def bubble_sort(numbers)
  numbers_sorted = numbers.dup
  sorted = false
  unsorted = 0
  
  while numbers_sorted.length > 1 && !sorted
    for i in 0..numbers_sorted.length - 2 do
      if numbers_sorted[i + 1] < numbers_sorted[i]
        numbers_sorted[i], numbers_sorted[i + 1] = numbers_sorted[i + 1], numbers_sorted[i]
        unsorted = 0
      else
        unsorted += 1
      end
    sorted = unsorted > numbers_sorted.length - 2? true : false
    end
  end
  numbers_sorted
end

def test_bubble_sort
  # Case 1: Unsorted array of numbers
  numbers = [5, 3, 8, 4, 2]
  sorted = bubble_sort(numbers)
  puts sorted == [2, 3, 4, 5, 8] ? "✔ Test 1 passed" : "❌ Test 1 failed"

  # Case 2: Already sorted array
  numbers = [1, 2, 3, 4, 5]
  sorted = bubble_sort(numbers)
  puts sorted == [1, 2, 3, 4, 5] ? "✔ Test 2 passed" : "❌ Test 2 failed"

  # Case 3: Array with a single number
  numbers = [10]
  sorted = bubble_sort(numbers)
  puts sorted == [10] ? "✔ Test 3 passed" : "❌ Test 3 failed"

  # Case 4: Array with negative numbers
  numbers = [3, -1, 4, -5, 2]
  sorted = bubble_sort(numbers)
  puts sorted == [-5, -1, 2, 3, 4] ? "✔ Test 4 passed" : "❌ Test 4 failed"

  # Case 5: Array with repeated numbers
  numbers = [2, 3, 2, 3, 2]
  sorted = bubble_sort(numbers)
  puts sorted == [2, 2, 2, 3, 3] ? "✔ Test 5 passed" : "❌ Test 5 failed"

  # Case 6: Empty array
  numbers = []
  sorted = bubble_sort(numbers)
  puts sorted == [] ? "✔ Test 6 passed" : "❌ Test 6 failed"
end

test_bubble_sort
