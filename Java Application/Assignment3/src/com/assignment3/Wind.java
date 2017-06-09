package com.assignment3;

public class Wind implements Iinstrument {
	@Override
	public String what() {
		String what = "what() Wind object";
		System.out.println(what);
		return what;
	}
	@Override
	public void play() {
		System.out.println("play() Wind object");

	}
	@Override
	public void adjust() {
		System.out.println("adjust() Wind object");

	}
}
