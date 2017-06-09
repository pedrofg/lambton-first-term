package com.assignment3;

public class Woodwind extends Wind {
	@Override
	public void play() {
		System.out.println("play() Woodwind object");
	}
	@Override
	public String what() {
		String print = "what() Woodwind object";
		System.out.println(print);
		return print;
	}
}
