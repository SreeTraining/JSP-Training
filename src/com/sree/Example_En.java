package com.sree;

import java.util.ListResourceBundle;

public class Example_En extends ListResourceBundle {

	@Override
	protected Object[][] getContents() {
		return contents;
	}
	static final Object[][] contents = {
		{"count.one", "One"},
		{"count.two", "Two"},
		{"count.three", "Three"},
	};

}
