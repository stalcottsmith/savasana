// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.command {
    import com.adobe.cairngorm.commands.ICommand;
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.savasana.business.TimeslotDelegate;
    import com.savasana.control.EventNames;
    import com.savasana.model.SavasanaModelLocator;
    import com.savasana.util.CairngormUtils;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    public class CreateTimeslotCommand implements ICommand, IResponder {
        public function CreateTimeslotCommand() {}

        public function execute(event:CairngormEvent):void {
            var delegate:TimeslotDelegate = new TimeslotDelegate(this);
            delegate.createTimeslot(event.data);
        }

        public function result(event:Object):void {
            var model:SavasanaModelLocator = SavasanaModelLocator.getInstance();
			
            CairngormUtils.dispatchEvent(EventNames.LIST_TIMESLOTS);
			
        }
    
        public function fault(event:Object):void {
            Savasana.debug("CreateTimeslotCommand#fault: " + event);
        }
    }
}