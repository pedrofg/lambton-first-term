package com.assignment2;

public class Woodwind extends Wind {

	@Override
	void play() {
		System.out.println("play() Woodwind object");
	}

	@Override
	String what() {
		String print = "what() Woodwind object";
		System.out.println(print);
		return print;
	}
	

	@Override
	void adjust() {
		System.out.println("adjust() Woodwind object");
	}
}
