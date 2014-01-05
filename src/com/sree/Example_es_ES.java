package com.sree;

import java.util.ListResourceBundle;

public class Example_es_ES extends ListResourceBundle {

	@Override
	protected Object[][] getContents() {
		return contents;
	}
	static final Object[][] contents = {
		{"count.one", "Uno"},
		{"count.two", "Dos"},
		{"count.three", "Tres"},
	};

}
