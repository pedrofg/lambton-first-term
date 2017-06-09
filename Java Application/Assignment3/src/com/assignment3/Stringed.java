package com.assignment3;

public class Stringed implements Iinstrument {
	@Override
	public void play() {
		System.out.println("play() Stringed object");
	}
	@Override
	public String what() {
		String what = "what() Stringed object";
		System.out.println(what);
		return what;
	}
	@Override
	public void adjust() {
		System.out.println("adjust() Stringed object");
	}
}
