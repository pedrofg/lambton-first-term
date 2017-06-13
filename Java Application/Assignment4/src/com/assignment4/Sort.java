package com.assignment4;

public class Sort extends SortB {

	public static void main(String[] args) {
		int numOfElms = Integer.valueOf(args[0]);
		Sort sort = new Sort();

		sort.sortAcending(numOfElms);
		System.out.println("------------------------");
		sort.sortDescending(numOfElms);
	}
}
