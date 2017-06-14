package com.assignment4;

// SortA is a class to me extended and not instantiated then this is an abstract class.
// Implements MyApiA interface and do the sort of the arrays.
public abstract class SortA implements MyApiA {

	// sortAcending receives the array, call the method to sort it passing true
	// because this is in ascending order and return the array sorted.
	@Override
	public double[] sortAcending(double[] numbers) {
		return insertionSort(true, numbers);
	}

	// sortDescending receives the array, call the method to sort it passing
	// false because this is in descending order and return the array sorted.
	@Override
	public double[] sortDescending(double[] numbers) {
		return insertionSort(false, numbers);
	}

	// Receives a boolean to know the order to be sorted if it is ascending or
	// descending and the array to be sorted.
	// Using insertion sort algorithm, it loop through the array and compares
	// the actual position and compares it with the previous positions switching
	// their values if it is bigger or lower depending if it is ascending or
	// descending order.
	private double[] insertionSort(boolean isAsc, double[] arr) {
		for (int i = 1; i < arr.length; i++) {
			double valueToSort = arr[i];
			int j = i;
			doSort(arr, j, isAsc, valueToSort);
		}

		return arr;
	}

	// Receives the array, the current position, the order to be sorted and the
	// value in the current position.
	// Loop through the array comparing the current position with the previous
	// positions to be switched depending the sort order.
	private void doSort(double[] array, int currentPosition, boolean isAsc, double valueToSort) {
		while (currentPosition > 0 && shouldSort(isAsc, array[currentPosition - 1], valueToSort)) {
			array[currentPosition] = array[currentPosition - 1];
			currentPosition--;
		}
		array[currentPosition] = valueToSort;
	}

	// Compares the number to be sorted with the previous number to know if it
	// should switch the positions or not.
	// If ascending order then the previous number should be bigger than the
	// actual to be switched.
	// If descending order then the previous number should be lower than the
	// actual to be switched.
	private boolean shouldSort(boolean isAsc, double previousNumber, double numberToSort) {
		return (isAsc && previousNumber > numberToSort) || (!isAsc && previousNumber < numberToSort);
	}

}
