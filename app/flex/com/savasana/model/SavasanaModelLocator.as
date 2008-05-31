// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.model {
    import com.adobe.cairngorm.model.IModelLocator;
    import com.savasana.control.EventNames;
    import com.savasana.util.CairngormUtils;
    import com.savasana.validators.ServerErrors;
    
    import mx.collections.ArrayCollection;
    import mx.collections.ListCollectionView;
    import mx.formatters.CurrencyFormatter;

    [Bindable]
    public class SavasanaModelLocator implements IModelLocator {
				
        //
        //Public properties
        //
        

		
        public var currentTeacher:Teacher;
        public var teachers:ListCollectionView;
		public var teachersAndNone:ListCollectionView;
        public var teacherIDMap:Object;
		
        public var currentTimeslot:Timeslot;
        public var timeslots:ListCollectionView;
		public var timeslotsAndNone:ListCollectionView;
        public var timeslotIDMap:Object;
		
        public var currentAssignment:Assignment;
        public var assignments:ListCollectionView;
		public var assignmentsAndNone:ListCollectionView;
        public var assignmentIDMap:Object;
		

        // public var workflowState:int = VIEWING_SPLASH_SCREEN;

		public function resetGlobalApplicationState():void {
			
			currentTeacher = null;
			teachers = null;
			teachers = null;
			
			currentTimeslot = null;
			timeslots = null;
			timeslots = null;
			
			currentAssignment = null;
			assignments = null;
			assignments = null;
			
		}



		

		
		
        public function updateTeacher(teacher:Teacher):void {
			if(teachers != null) {
	            for (var i:int = 0; i < teachers.length; i++) {
	                var ithTeacher:Teacher = Teacher(teachers.getItemAt(i));
	                if (ithTeacher.id == teacher.id) {
	                    teachers.setItemAt(teacher, i);
	                    break;
	                }
	            }
			}
        }

        public function removeTeacher(teacher:Teacher):void {
			if(teachers == null) { return; }
            for (var i:int = 0; i < teachers.length; i++) {
                var ithTeacher:Teacher = Teacher(teachers.getItemAt(i));
                if (ithTeacher.id == teacher.id) {
					//This code needs to be fixed in the generator
					//so proper belongs_to associations can be used
                    //ithTeacher.project.removeTeacher(ithTeacher);
                    //ithTeacher.location.removeTeacher(ithTeacher);
                    teachers.removeItemAt(i);
                    break;
                }
            }
        }

		

		
	    public function setTeachers(list:XMLList):void {
            teacherIDMap = {};
            teacherIDMap[0] = Teacher.NONE;
            var teachersArray:Array = [];
            var item:XML;
            for each (item in list) {
                var teacher:Teacher = Teacher.fromXML(item);
                teachersArray.push(teacher);
                teacherIDMap[teacher.id] = teacher;
            }
			var previousFilterFunction:Function = null;
			if(teachers != null) {previousFilterFunction = teachers.filterFunction;}
            teachers = new ArrayCollection(teachersArray);
			teachers.filterFunction = previousFilterFunction;
			teachers.refresh();
			var teachersAndNoneArray:Array = teachersArray.slice(0);
			teachersAndNoneArray.splice(0, 0, Teacher.NONE);
			teachersAndNone =
			    new ArrayCollection(teachersAndNoneArray);
        }
		

		
		
        public function updateTimeslot(timeslot:Timeslot):void {
			if(timeslots != null) {
	            for (var i:int = 0; i < timeslots.length; i++) {
	                var ithTimeslot:Timeslot = Timeslot(timeslots.getItemAt(i));
	                if (ithTimeslot.id == timeslot.id) {
	                    timeslots.setItemAt(timeslot, i);
	                    break;
	                }
	            }
			}
        }

        public function removeTimeslot(timeslot:Timeslot):void {
			if(timeslots == null) { return; }
            for (var i:int = 0; i < timeslots.length; i++) {
                var ithTimeslot:Timeslot = Timeslot(timeslots.getItemAt(i));
                if (ithTimeslot.id == timeslot.id) {
					//This code needs to be fixed in the generator
					//so proper belongs_to associations can be used
                    //ithTimeslot.project.removeTimeslot(ithTimeslot);
                    //ithTimeslot.location.removeTimeslot(ithTimeslot);
                    timeslots.removeItemAt(i);
                    break;
                }
            }
        }

		

		
	    public function setTimeslots(list:XMLList):void {
            timeslotIDMap = {};
            timeslotIDMap[0] = Timeslot.NONE;
            var timeslotsArray:Array = [];
            var item:XML;
            for each (item in list) {
                var timeslot:Timeslot = Timeslot.fromXML(item);
                timeslotsArray.push(timeslot);
                timeslotIDMap[timeslot.id] = timeslot;
            }
			var previousFilterFunction:Function = null;
			if(timeslots != null) {previousFilterFunction = timeslots.filterFunction;}
            timeslots = new ArrayCollection(timeslotsArray);
			timeslots.filterFunction = previousFilterFunction;
			timeslots.refresh();
			var timeslotsAndNoneArray:Array = timeslotsArray.slice(0);
			timeslotsAndNoneArray.splice(0, 0, Timeslot.NONE);
			timeslotsAndNone =
			    new ArrayCollection(timeslotsAndNoneArray);
        }
		

		
		
        public function updateAssignment(assignment:Assignment):void {
			if(assignments != null) {
	            for (var i:int = 0; i < assignments.length; i++) {
	                var ithAssignment:Assignment = Assignment(assignments.getItemAt(i));
	                if (ithAssignment.id == assignment.id) {
	                    assignments.setItemAt(assignment, i);
	                    break;
	                }
	            }
			}
        }

        public function removeAssignment(assignment:Assignment):void {
			if(assignments == null) { return; }
            for (var i:int = 0; i < assignments.length; i++) {
                var ithAssignment:Assignment = Assignment(assignments.getItemAt(i));
                if (ithAssignment.id == assignment.id) {
					//This code needs to be fixed in the generator
					//so proper belongs_to associations can be used
                    //ithAssignment.project.removeAssignment(ithAssignment);
                    //ithAssignment.location.removeAssignment(ithAssignment);
                    assignments.removeItemAt(i);
                    break;
                }
            }
        }

		

		
	    public function setAssignments(list:XMLList):void {
            assignmentIDMap = {};
            assignmentIDMap[0] = Assignment.NONE;
            var assignmentsArray:Array = [];
            var item:XML;
            for each (item in list) {
                var assignment:Assignment = Assignment.fromXML(item);
                assignmentsArray.push(assignment);
                assignmentIDMap[assignment.id] = assignment;
            }
			var previousFilterFunction:Function = null;
			if(assignments != null) {previousFilterFunction = assignments.filterFunction;}
            assignments = new ArrayCollection(assignmentsArray);
			assignments.filterFunction = previousFilterFunction;
			assignments.refresh();
			var assignmentsAndNoneArray:Array = assignmentsArray.slice(0);
			assignmentsAndNoneArray.splice(0, 0, Assignment.NONE);
			assignmentsAndNone =
			    new ArrayCollection(assignmentsAndNoneArray);
        }
		

        //
        //Private utility functions
        //
/*		
        private function listTeachersIfMapsPresent():void {
            if () {
                CairngormUtils.dispatchEvent(
                    EventNames.LIST_TEACHERS);
            }
        }
        private function listTimeslotsIfMapsPresent():void {
            if () {
                CairngormUtils.dispatchEvent(
                    EventNames.LIST_TIMESLOTS);
            }
        }
        private function listAssignmentsIfMapsPresent():void {
            if () {
                CairngormUtils.dispatchEvent(
                    EventNames.LIST_ASSIGNMENTS);
            }
        }
*/
        //
        //Singleton stuff
        //
        private static var modelLocator:SavasanaModelLocator;

        public static function getInstance():SavasanaModelLocator{
            if (modelLocator == null) {
                modelLocator = new SavasanaModelLocator();
            }
            return modelLocator;
        }
        
        //The constructor should be private, but this is not
        //possible in ActionScript 3.0. So, throwing an Error if
        //a second SavasanaModelLocator is created is the best we
        //can do to implement the Singleton pattern.
        public function SavasanaModelLocator() {
            if (modelLocator != null) {
                throw new Error(
"Only one SavasanaModelLocator instance may be instantiated.");
            }
			
        }
    }
}