package com.assignment;

public class CustomQueue {

	//Class variables (attributes or properties)
	private int data[];
	private int size;
	//Pointer keeps reference to the last item in the array
	private int pointer;

	//Constructor receiving the queue size and setting it to data array length
	public CustomQueue(int size) {
		this.size = size;
		this.data = new int[this.size];
		this.pointer = -1;
	}

	public void inqueue(int number) {
		// If full do not add the number
		if (isFull()) {
			System.out.println("Queue is full, Number not added: " + number);
		} else {
			// Add data to the array bases on pointer position
			this.data[++this.pointer] = number;
		}
	}

	public int outqueue() {
		//Get the first element of the queue
		int firstArrived = this.data[0];

		shiftArray();

		// Clear actual last inserted value
		this.data[this.pointer] = 0;
		// Decrease pointer;
		--this.pointer;

		System.out.println("Number removed: " + firstArrived);
		return firstArrived;
	}

	// move all the elements to actual position -1
	private void shiftArray() {
		for (int i = 0; i < this.pointer; i++) {
			data[i] = data[i + 1];
		}
	}

	// Check if it is possible to add more items
	private boolean isFull() {
		return this.pointer == size - 1;
	}

	@Override
	public String toString() {
		//Print all the items inside the queue
		for (int i = 0; i < data.length; i++) {
			System.out.println("Position: " + i + " value: " + data[i]);
		}
		return super.toString();
	}
}
