package com.assignment3;

public class TestInstruments {

	public static void main(String[] args) {
		Iinstrument[] instruments = new Iinstrument[5];

		Wind wind = new Wind();
		Percussion percussion = new Percussion();
		Stringed stringed = new Stringed();
		Woodwind woodwind = new Woodwind();
		Brass brass = new Brass();

		instruments[0] = wind;
		instruments[1] = percussion;
		instruments[2] = stringed;
		instruments[3] = woodwind;
		instruments[4] = brass;

		for (Iinstrument instrument : instruments) {
			doInstrument(instrument);
		}
	}

	public static void doInstrument(Iinstrument instrument) {
		instrument.play();
		instrument.what();
		instrument.adjust();
	}
}
