//mine
function twoHighest(arr) {
  const count = arr.length;
  let firstHighestValue = -Infinity;
  let secondHighestValue = -Infinity;

  if (count < 1) {
    return [];
  } else if (count < 2) {
    return arr;
  } else {
    for (i = 0; i < count; i++) {
      if (arr[i] > firstHighestValue) {
        secondHighestValue = firstHighestValue;
        firstHighestValue = arr[i];
      } else if (arr[i] < firstHighestValue && arr[i] > secondHighestValue) {
        secondHighestValue = arr[i];
      }
    }
    return [firstHighestValue, secondHighestValue];
  }
}

// best practice
function twoHighest(arr) {
  return [...new Set(arr)].sort((a, b) => b - a).slice(0, 2);
}