// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.command {
    import com.adobe.cairngorm.commands.ICommand;
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.savasana.business.TimeslotDelegate;
    import com.savasana.model.SavasanaModelLocator;
    
    import mx.controls.Alert;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    public class ListTimeslotsCommand implements ICommand,
    IResponder {
        public function ListTimeslotsCommand() {     
        }

        public function execute(event:CairngormEvent):void {
            var delegate:TimeslotDelegate = new TimeslotDelegate(this);
            delegate.listTimeslots(event.data);
        }

        public function result(event:Object):void {
            var model:SavasanaModelLocator = SavasanaModelLocator.getInstance();
            model.setTimeslots(XMLList(event.result.children()));
        }
    
        public function fault(event:Object):void {
            Savasana.debug("ListTimeslotsCommand#fault: " + event);
            Alert.show("Timeslots could not be retrieved!");
        }
    }
}