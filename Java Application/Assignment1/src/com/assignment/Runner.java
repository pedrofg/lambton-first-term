package com.assignment;

public class Runner {

	public static void main(String[] args) {
		System.out.println("Starting Queue tests:");
		// Instantiate a new queue
		int queueSize = 10;
		CustomQueue customQueue = new CustomQueue(queueSize);

		// Fill queue with data
		for (int i = 1; i <= queueSize; i++) {
			customQueue.inqueue(i);
		}

		// Print queue, Retrieve first element, print again
		customQueue.toString();
		customQueue.outqueue();
		customQueue.toString();

		System.out.println("------------------------");
		System.out.println("Starting Circle tests:");

		Circle circle = new Circle();
		circle.circumference();
		circle.area();
		circle.printAttributes();
		circle.isInside(24, 24);
		circle.isInside(7, 7);
		circle.boundingBox();
		circle.move(6, 6);
	}

}
