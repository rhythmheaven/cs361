/**
 * 
 */
package mystack;

/**
 * @author Dean Regina
 *
 */

// Stack using generics

// Complete the provided code

public class MyStack<T> {

	private class MyNode<T1> {
		T1 val;
		MyNode<T1> next;

		MyNode(T1 v, MyNode<T1> n) {
			val = v;
			next = n;
		}
	}

	private MyNode<T> theStack = null;

	/**
	 * 
	 */
	public MyStack() {
	}

	public T pop() {
		// TODO To complete
		if(theStack != null)
		{
			T tp = theStack.val;
			theStack = theStack.next;
			return tp;
		}
		else	
		return null;
	}

	public void push(T v) {
		// TODO To complete
		theStack = new MyNode<T>(v, theStack);
	}

	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO To complete
		// Create a stack of Integer
		MyStack<Integer> staki = new MyStack<Integer>();
		// Push 1 and 2
		staki.push(1);
		staki.push(2);
		// Pop
		staki.pop();
		// Push 5
		staki.push(5);
		
		// TODO To complete
		// Create a stack of Person
		MyStack<Person> paki = new MyStack<Person>();
		// Push a person p1 with your name
		Person p1 = new Person ("Dean", "Regina");
		paki.push(p1);
		// Push a person p2 with my name
		Person p2 = new Person("Christelle", "Scharff");
		paki.push(p2);
		

}
}
