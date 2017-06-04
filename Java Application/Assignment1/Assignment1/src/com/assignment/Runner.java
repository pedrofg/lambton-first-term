package com.assignment;

public class Runner {

	public static void main(String[] args) {
		// System.out.println("Starting Queue tests:");
		// // Instantiate a new queue
		// int queueSize = 10;
		// CustomStackQueue customQueue = new CustomStackQueue(queueSize);
		//
		// // Fill queue with data
		// for (int i = 1; i <= queueSize; i++) {
		// customQueue.inqueue(i);
		// }
		//
		// // Print queue, Retrieve first element, print again
		// customQueue.toString();
		// customQueue.outqueue();
		// customQueue.toString();
		//
		// System.out.println("------------------------");
		// System.out.println("Starting Circle tests:");
		//
		// Circle circle = new Circle();
		// circle.circumference();
		// circle.area();
		// circle.printAttributes();
		// circle.isInside(24, 24);
		// circle.isInside(7, 7);
		// circle.boundingBox();
		// circle.move(6, 6);
		//
		// System.out.println("------------------------");
		// System.out.println("Starting Custom Stack:");
		//
		// CustomStack stack = new CustomStack(5);
		// stack.push(2);
		// stack.push(3);
		// stack.push(4);
		// stack.push(5);
		// stack.push(6);
		// stack.push(7);
		// stack.toString();
		// stack.pop();
		// stack.push(6);
		// stack.pop();
		// stack.pop();
		// stack.pop();
		// stack.pop();
		// stack.pop();
		// stack.pop();
		// stack.pop();
		// stack.toString();
		// stack.push(2);
		// stack.push(2);
		// stack.toString();

		NewQueue newQueue = new NewQueue();
		newQueue.enqueue(10);
		newQueue.enqueue(20);
		newQueue.outqueue();
		newQueue.enqueue(30);
		newQueue.outqueue();
		newQueue.outqueue();
		newQueue.toString();

	}

}
