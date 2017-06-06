package com.assignment2;

public class Stringed extends Instrument {

	@Override
	void play() {
		System.out.println("play() Stringed object");
	}

	@Override
	String what() {
		String print = "what() Stringed object";
		System.out.println(print);
		return print;
	}

	@Override
	void adjust() {
		System.out.println("adjust() Stringed object");
	}

}
