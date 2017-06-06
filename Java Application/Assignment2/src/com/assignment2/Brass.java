package com.assignment2;

public class Brass extends Wind {

	@Override
	void play() {
		System.out.println("play() Brass object");
	}

	@Override
	String what() {
		String print = "what() Brass object";
		System.out.println(print);
		return print;
	}

	@Override
	void adjust() {
		System.out.println("adjust() Brass object");
	}
}
