// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.command {
    import com.adobe.cairngorm.commands.ICommand;
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.savasana.business.TeacherDelegate;
    import com.savasana.control.EventNames;
    import com.savasana.model.SavasanaModelLocator;
    import com.savasana.model.Teacher;
    import com.savasana.util.CairngormUtils;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    public class UpdateTeacherCommand implements ICommand, IResponder {
        public function UpdateTeacherCommand() {
        }

        public function execute(event:CairngormEvent):void {
            var delegate:TeacherDelegate = new TeacherDelegate(this);
            delegate.updateTeacher(event.data);
        }

        public function result(event:Object):void {
            var resultEvent:ResultEvent = ResultEvent(event);
            var model:SavasanaModelLocator = SavasanaModelLocator.getInstance();
			
            model.updateTeacher(Teacher.fromXML(XML(event.result)));
        	CairngormUtils.dispatchEvent(EventNames.LIST_TEACHERS);
			
        }
    
        public function fault(event:Object):void {
            Savasana.debug("UpdateTeacherCommand#fault: " + event);
        }
    }
}