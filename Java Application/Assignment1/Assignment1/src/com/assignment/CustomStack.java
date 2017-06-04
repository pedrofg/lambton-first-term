package com.assignment;

public class CustomStack {

	// Class variables (attributes or properties)
	private int data[];
	private int size;
	// Pointer keeps reference to the last item in the array
	private int pointer;

	// Constructor receiving the stack size and setting it to data array length
	public CustomStack(int size) {
		this.size = size;
		this.data = new int[this.size];
		this.pointer = -1;
	}

	public void push(int number) {
		// If full do not add the number
		if (isFull()) {
			System.out.println("Stack is full, Number not added: " + number);
		} else {
			// Add data to the array bases on pointer position
			this.data[++this.pointer] = number;
		}
	}

	// Provides a way to remove the last item of the stack and behave similar to
	// a stack
	public int pop() {
		int lastArrived = 0;
		if (isEmpty()) {
			System.out.println("Your stack is empty");
		} else {

			lastArrived = this.data[this.pointer];

			this.data[pointer] = 0;

			--this.pointer;

		}
		return lastArrived;
	}

	// Check if it is possible to add more items
	public boolean isFull() {
		return this.pointer == size - 1;
	}

	// Check if it is possible to add more items
	public boolean isEmpty() {
		return this.pointer == -1;
	}

	public int getPointer() {
		return this.pointer;
	}

	@Override
	public String toString() {
		// Print all the items inside the stack
		for (int i = 0; i < data.length; i++) {
			System.out.println("Position: " + i + " value: " + data[i]);
		}
		return super.toString();
	}

}
