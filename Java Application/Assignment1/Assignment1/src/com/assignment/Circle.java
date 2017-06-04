package com.assignment;

import java.text.DecimalFormat;

public class Circle {

	// Class variables (attributes or properties)
	private double x;
	private double y;
	private double radius;
	private static double MAX_RADIUS = 50;
	// Defining default values to the attributes
	private static double DEFAULT_X = 20;
	private static double DEFAULT_Y = 20;
	private static double DEFAULT_RADIUS = 6;

	// Constructor receiving as parameter the attributes values
	public Circle(double x, double y, double radius) {
		this.x = x;
		this.y = y;
		setRadius(radius);
	}

	// Default constructor implementation providing default values to the
	// attributes
	public Circle() {
		this.x = DEFAULT_X;
		this.y = DEFAULT_Y;
		setRadius(DEFAULT_RADIUS);
	}

	// return the circumference of the circle based on its formula
	public double circumference() {
		double circumference = this.radius * 2 * Math.PI;

		System.out.println("Circumference: " + roundNumber(circumference));
		return circumference;
	}

	// return the area of the circle based on its formula
	public double area() {
		double area = this.radius * this.radius * Math.PI;

		System.out.println("Area: " + roundNumber(area));
		return area;
	}

	// method to set the radius not allowing to be more than max value
	// (MAX_RADIUS)
	public void setRadius(double radius) {
		this.radius = radius > MAX_RADIUS ? MAX_RADIUS : radius;
	}

	// print attributes values to the console
	public void printAttributes() {
		System.out.println("Coordinates x: " + this.x + " y: " + this.y);
		System.out.println("Radius: " + this.radius);
	}

	// check whether the the given coordinates are part of the circle or not
	public boolean isInside(double x, double y) {
		boolean isInside = false;

		// Compare radius of circle with distance of its center from given point
		if ((x - this.x) * (x - this.x) + (y - this.y) * (y - this.y) <= this.radius * this.radius)
			isInside = true;

		System.out.println("isInside: " + isInside);
		return isInside;
	}

	// find the bounding box coordinates
	public void boundingBox() {
		double boxX = this.x - this.radius;
		double boxY = this.y - this.radius;

		System.out.println("Box top left x: " + boxX + " y: " + boxY);
	}

	// change the circle coordinates
	public void move(double x, double y) {
		this.x = x;
		this.y = y;
	}

	// method to round number to 2 decimals
	private String roundNumber(double number) {
		DecimalFormat f = new DecimalFormat("##.00");
		return f.format(number);
	}

}
