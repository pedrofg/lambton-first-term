package com.assignment4;

public class Sort extends SortB {

	// Method runner.
	public static void main(String[] args) {
		// Getting the first element in the args array, converting it to int to
		// be set as the size of the array.
		int numOfElms = Integer.valueOf(args[0]);
		// Instatiating Sort object because main method is static.
		Sort sort = new Sort();

		// Calling sort ascending method which will print the array in ascending
		// order. e.g. [1,2,3,4,5]
		sort.sortAcending(numOfElms);
		System.out.println("------------------------");
		// Calling sort descending method which will print the array in
		// descending
		// order. e.g. [5,4,3,2,1]
		sort.sortDescending(numOfElms);
	}
}
