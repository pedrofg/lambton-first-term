package com.assignment4;

public abstract class SortA implements MyApiA {

	@Override
	public double[] sortAcending(double[] numbers) {
		return insertionSort(true, numbers);
	}

	@Override
	public double[] sortDescending(double[] numbers) {
		return insertionSort(false, numbers);
	}

	private double[] insertionSort(boolean isAsc, double[] arr) {
		for (int i = 1; i < arr.length; i++) {
			double valueToSort = arr[i];
			int j = i;
			doSort(arr, j, isAsc, valueToSort);
		}

		return arr;
	}

	private void doSort(double[] array, int currentPosition, boolean isAsc, double valueToSort) {
		while (currentPosition > 0 && shouldSort(isAsc, array[currentPosition - 1], valueToSort)) {
			array[currentPosition] = array[currentPosition - 1];
			currentPosition--;
		}
		array[currentPosition] = valueToSort;
	}

	private boolean shouldSort(boolean isAsc, double previousNumber, double numberToSort) {
		return (isAsc && previousNumber > numberToSort) || (!isAsc && previousNumber < numberToSort);
	}

}
