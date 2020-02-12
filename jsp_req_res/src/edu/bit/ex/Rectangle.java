package edu.bit.ex;

public class Rectangle {
	int width, height;
	
	public Rectangle(int width, int height) {
		this.width = width;
		this.height = height;
	}
	
	public int getRectangleArea() {
		return width * height;
	}
}
