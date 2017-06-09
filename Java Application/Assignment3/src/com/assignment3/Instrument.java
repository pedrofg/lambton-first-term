package com.assignment3;

abstract class Instrument {
	abstract void play();

	public String what() {
		String instrumentText = "Instrument what()";
		System.out.println(instrumentText);
		return instrumentText;
	}

	abstract void adjust();
}
