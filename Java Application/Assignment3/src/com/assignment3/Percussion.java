package com.assignment3;

public class Percussion implements Iinstrument {
	@Override
	public void play() {
		System.out.println("play() Percussion object");
	}
	@Override
	public String what() {
		String what = "what() Percussion object";
		System.out.println(what);
		return what;
	}
	@Override
	public void adjust() {
		System.out.println("adjust() Percussion object");
	}
}
