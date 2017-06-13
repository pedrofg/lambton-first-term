package com.assignment4;

import java.util.concurrent.ThreadLocalRandom;

public class SortB extends SortA implements MyApiB {

	@Override
	public void sortAcending(int numOfElms) {
		double[] doubleArray = newArray(numOfElms);
		sortAcending(doubleArray);
		printArray(doubleArray);
	}

	@Override
	public void sortDescending(int numOfElms) {
		double[] doubleArray = newArray(numOfElms);
		sortDescending(doubleArray);
		printArray(doubleArray);
	}

	private double[] newArray(int numOfElms) {
		double[] doubleArray = new double[numOfElms];
		for (int i = 0; i < numOfElms; i++) {
			doubleArray[i] = random();
		}
		return doubleArray;
	}

	private double random() {
		double number = ThreadLocalRandom.current().nextDouble(1, 20);
		number = Math.round(number * 100);
		number = number / 100;
		return number;
	}

	public void printArray(double[] array) {
		for (double d : array) {
			System.out.println(d);
		}
	}

}
