// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.command {
    import com.adobe.cairngorm.commands.ICommand;
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.savasana.business.TeacherDelegate;
    import com.savasana.model.SavasanaModelLocator;
    
    import mx.controls.Alert;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    public class ListTeachersCommand implements ICommand,
    IResponder {
        public function ListTeachersCommand() {     
        }

        public function execute(event:CairngormEvent):void {
            var delegate:TeacherDelegate = new TeacherDelegate(this);
            delegate.listTeachers(event.data);
        }

        public function result(event:Object):void {
            var model:SavasanaModelLocator = SavasanaModelLocator.getInstance();
            model.setTeachers(XMLList(event.result.children()));
        }
    
        public function fault(event:Object):void {
            Savasana.debug("ListTeachersCommand#fault: " + event);
            Alert.show("Teachers could not be retrieved!");
        }
    }
}