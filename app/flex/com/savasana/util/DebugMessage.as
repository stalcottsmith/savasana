// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.util {
    public class DebugMessage {
        [Bindable]
        public var time:Date;

        [Bindable]
        public var message:String;

        public function DebugMessage(message:String) {
            time = new Date();
            this.message = message;
        }

        public function toString():String {
            return "[" + time + "] " + message;
        }
    }
}