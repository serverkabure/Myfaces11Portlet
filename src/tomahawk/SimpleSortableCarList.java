package tomahawk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class SimpleSortableCarList extends SortableList {
	private List<SimpleCar> _cars;

	public SimpleSortableCarList() {
		super("type");

		_cars = new ArrayList<SimpleCar>();
		_cars.add(new SimpleCar(1, "car A", "red"));
		_cars.add(new SimpleCar(1, "car B", "blue"));
		_cars.add(new SimpleCar(1, "car C", "green"));
		_cars.add(new SimpleCar(1, "car D", "yellow"));
		_cars.add(new SimpleCar(1, "car E", "orange"));
	}

	public List<SimpleCar> getCars() {
		sort(getSort(), isAscending());
		return _cars;
	}

	protected boolean isDefaultAscending(String sortColumn) {
		return true;
	}

	protected void sort(final String column, final boolean ascending) {
		Comparator<Object> comparator = new Comparator<Object>() {
			public int compare(Object o1, Object o2) {
				SimpleCar c1 = (SimpleCar) o1;
				SimpleCar c2 = (SimpleCar) o2;
				if (column == null) {
					return 0;
				}
				if (column.equals("type")) {
					return ascending ? c1.getType().compareTo(c2.getType())
							: c2.getType().compareTo(c1.getType());
				} else if (column.equals("color")) {
					return ascending ? c1.getColor().compareTo(c2.getColor())
							: c2.getColor().compareTo(c1.getColor());
				} else
					return 0;
			}
		};
		Collections.sort(_cars, comparator);
	}
}