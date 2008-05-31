// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.util {
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.adobe.cairngorm.control.CairngormEventDispatcher;

    public class CairngormUtils {
        public static function dispatchEvent(
            eventName:String, data:Object = null):void
        {
            var event : CairngormEvent =
                new CairngormEvent(eventName);
            event.data = data;
            event.dispatch();
        }
    }
}
