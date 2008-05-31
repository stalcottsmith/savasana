// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.util {      
    public class XMLUtils {
        /**
         * Return true if the toString() is "true", false
         * otherwise. This is necessary since Boolean("false")
         * is true.
         */
        public static function xmlListToBoolean(
        xmlList:XMLList):Boolean {
            return xmlList.toString() == "true";
        }
    }
}