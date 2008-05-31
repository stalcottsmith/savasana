// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.control {
    import com.adobe.cairngorm.control.FrontController;
    import com.savasana.control.EventNames;
    import com.savasana.command.*;

    public class SavasanaController extends FrontController {
        public function SavasanaController() {
            initializeCommands();
        }
        
        private function initializeCommands():void {
			addCommand(EventNames.LIST_TEACHERS, ListTeachersCommand);
            addCommand(EventNames.LIST_TIMESLOTS, ListTimeslotsCommand);
            addCommand(EventNames.LIST_ASSIGNMENTS, ListAssignmentsCommand);
            
			addCommand(EventNames.CREATE_TEACHER, CreateTeacherCommand);
            addCommand(EventNames.CREATE_TIMESLOT, CreateTimeslotCommand);
            addCommand(EventNames.CREATE_ASSIGNMENT, CreateAssignmentCommand);
            
			addCommand(EventNames.DESTROY_TEACHER, DestroyTeacherCommand);
            addCommand(EventNames.DESTROY_TIMESLOT, DestroyTimeslotCommand);
            addCommand(EventNames.DESTROY_ASSIGNMENT, DestroyAssignmentCommand);
            
			addCommand(EventNames.UPDATE_TEACHER, UpdateTeacherCommand);
            addCommand(EventNames.UPDATE_TIMESLOT, UpdateTimeslotCommand);
            addCommand(EventNames.UPDATE_ASSIGNMENT, UpdateAssignmentCommand);
            

            
        }
    }
}