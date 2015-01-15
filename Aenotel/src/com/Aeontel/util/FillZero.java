package com.Aeontel.util;

public class FillZero {
	public String fillZero(int count, int len ){
		String countForZeor = String.valueOf(count);
		countForZeor = "000000" + countForZeor;
		return countForZeor.substring(countForZeor.length()-len);
	}
}

