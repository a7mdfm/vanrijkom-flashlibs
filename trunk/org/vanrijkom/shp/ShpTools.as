/* ************************************************************************ */
/*																			*/
/*  SHP (ESRI ShapeFile Reader)												*/
/*  Copyright (c)2007 Edwin van Rijkom										*/
/*  http://www.vanrijkom.org												*/
/*																			*/
/* This library is free software; you can redistribute it and/or			*/
/* modify it under the terms of the GNU Lesser General Public				*/
/* License as published by the Free Software Foundation; either				*/
/* version 2.1 of the License, or (at your option) any later version.		*/
/*																			*/
/* This library is distributed in the hope that it will be useful,			*/
/* but WITHOUT ANY WARRANTY; without even the implied warranty of			*/
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU		*/
/* Lesser General Public License or the LICENSE file for more details.		*/
/*																			*/
/* ************************************************************************ */

package org.vanrijkom.shp
{

import flash.utils.ByteArray;

/**
 * The ShpTools class contains static tool methods for working with
 * ESRI Shapefiles.
 * @author Edwin van Rijkom
 * 
 */	
public class ShpTools
{
	/**
	 * Reads all available ESRI Shape records from the specified ByteArray.
	 * Reading starts at the ByteArrays current offset.
	 * 
	 * @param src ByteArray to read ESRI Shape records from.
	 * @return An Array containing zero or more ShpRecord typed values.
	 * @see ShpRecord 
	 */	
	public static function readRecords(src: ByteArray): Array {
		var record: ShpRecord;
		var records: Array = []
		while (true) {			
			try {		
				record = new ShpRecord(src);
				records.push(record);				
			} catch (e: ShpError) {
				if (e.errorID == ShpError.ERROR_NODATA)
					break;
				else	
					throw(e);				
			}			
		}
		return records;
	}	
}
} // package