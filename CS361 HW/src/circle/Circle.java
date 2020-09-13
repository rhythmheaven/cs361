/**
 * 
 */
package circle;

/**
 * @author Dean Regina
 *
 */

// TODO Complete the code

public class Circle extends GraphicObject implements Cloneable {

	// No use of encapsulation
	public double centerX, centerY;
	public double radius;
	public int windowNumber;

	/**
	 * 
	 */
	public Circle() {
	}

	// overloaded method in Circle
	// overridden method from GraphicObject
	@Override
	void draw() {
		System.out.println("Drawing a Circle...");
	}

	// overloaded method in Circle
	// Not overridden as it does follow the signature in GraphicObject
	public void draw(int color) {
		System.out.println("Drawing a Circle in color...");
	}

	public double circumference() {
		return 2.0 * 3.141529 * radius;
	}

	public double area() {
		return 3.141529 * radius * radius;
	}

	public boolean overlaps(Circle other) {
		return ((centerX - other.centerX) * (centerX - other.centerX)
				+ (centerY - other.centerY) * (centerY - other.centerY)) < ((radius + other.radius)
						* (radius + other.radius));
	}

	@Override
	void moveTo(int newX, int newY) {
	}

	// TODO To complete
	/**
	 * @return the Circle with this EXACT format Circle: centerX = ... centerY = ... radius = ...
	 */
	@Override
	public String toString() {
		
	return "Circle: centerX = " + centerX + " centerY = " + centerY + " radius = " + radius;
	//	return super.toString();
	}

	// TODO To complete
	// TODO Be sure that you understand the difference between equals and ==
	/**
	 * @return true if this and obj have the same values for
	 * centerX, centerY and radius
	 */
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Circle && this.centerX == ((Circle) obj).centerX && this.centerY == ((Circle) obj).centerY
					&& this.radius == ((Circle) obj).radius)
	       return true;
		else
	      return false;
	      
	}

	// TODO To complete
	/**
	 * @return an exact copy of the Circle that is a new instance 
	 */
	// @Override
	 protected Object clone() throws CloneNotSupportedException {
		 Circle circlone;
	      try
	      {
	         circlone = (Circle) super.clone( );
	      }
	      catch (CloneNotSupportedException e)
	      {  
	         throw new RuntimeException
	            ("This class does not implement Cloneable.");
	      }
	      return circlone;
		 // return super.clone();
	 }

}
