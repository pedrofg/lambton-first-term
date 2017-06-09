package com.assignment3;

public class Brass extends Wind {
	@Override
	public void play() {
		System.out.println("play() Brass object");
	}

	@Override
	public String what() {
		String print = "what() Brass object";
		System.out.println(print);
		return print;
	}
}
