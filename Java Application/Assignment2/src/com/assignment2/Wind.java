package com.assignment2;

public class Wind extends Instrument {
	@Override
	void play() {
		System.out.println("play() Wind object");
	}

	@Override
	String what() {
		String print = "what() Wind object";
		System.out.println(print);
		return print;
	}

	@Override
	void adjust() {
		System.out.println("adjust() Wind object");
	}
}
