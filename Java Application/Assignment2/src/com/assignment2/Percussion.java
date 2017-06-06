package com.assignment2;

public class Percussion extends Instrument {
	@Override
	void play() {
		System.out.println("play() Percussion object");
	}
	@Override
	String what() {
		String print = "what() Percussion object";
		System.out.println(print);
		return print;
	}
	@Override
	void adjust() {
		System.out.println("adjust() Percussion object");
	}
}
