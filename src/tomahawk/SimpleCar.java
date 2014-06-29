package tomahawk;

import java.io.Serializable;

public class SimpleCar implements Serializable {
	/**
	 * serial id for serialisation versioning
	 */
	private static final long serialVersionUID = 1L;
	private int _id;
	private String _type;
	private String _color;

	public SimpleCar(int id, String type, String color) {
		_id = id;
		_type = type;
		_color = color;
	}

	public int getId() {
		return _id;
	}

	public void setId(int id) {
		_id = id;
	}

	public String getType() {
		return _type;
	}

	public void setType(String type) {
		_type = type;
	}

	public String getColor() {
		return _color;
	}

	public void setColor(String color) {
		_color = color;
	}
}