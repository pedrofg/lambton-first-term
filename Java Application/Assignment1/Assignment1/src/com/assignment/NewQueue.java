package com.assignment;

public class NewQueue {

	private CustomStack stack1;
	private CustomStack stack2;
	private static final int QUEUE_SIZE = 5;

	public NewQueue() {
		this.stack1 = new CustomStack(QUEUE_SIZE);
		this.stack2 = new CustomStack(QUEUE_SIZE);
	}

	public void enqueue(int number) {
		this.stack1.push(number);
	}

	public int outqueue() {
		if (stack2.isEmpty()) {
			while (!stack1.isEmpty()) {
				stack2.push(stack1.pop());
			}
		}
		int numberRemoved = this.stack2.pop();

		System.out.println("Removed from the queue: " + numberRemoved);
		return numberRemoved;
	}

	@Override
	public String toString() {

		return super.toString();
	}
}
