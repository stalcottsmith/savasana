// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.model {
	import com.savasana.util.XMLUtils;
	import com.savasana.util.DateUtils;
    
    public class Assignment {
        public static const UNSAVED_ID:int = 0;
        public static const NONE_ID:int = 0;
		
        public static const NONE: Assignment =
            new Assignment(UNSAVED_ID, UNSAVED_ID, UNSAVED_ID, null, null, null);
/*
		[Bindable]
		public var id:int;*/
		
		[Bindable]
		public var id:int;
		
		[Bindable]
		public var teacherId:int;
		
		[Bindable]
		public var timeslotId:int;
		
		[Bindable]
		public var assignedDate:Date;
		
		[Bindable]
		public var createdAt:Date;
		
		[Bindable]
		public var updatedAt:Date;
		

        public function Assignment(
						id:int = UNSAVED_ID,
			teacherId:int = UNSAVED_ID,
			timeslotId:int = UNSAVED_ID,
			assignedDate:String = null,
			createdAt:String = null,
			updatedAt:String = null)
        {
            this.id = id;
			this.teacherId = teacherId;
			this.timeslotId = timeslotId;
			this.assignedDate = DateUtils.toASDate(assignedDate);
			this.createdAt = DateUtils.toASDateTime(createdAt);
			this.updatedAt = DateUtils.toASDateTime(updatedAt);
			
        }

		public function toString():String {
			var s:String = "Assignment {"
			s += "id = "+ id.toString()+' ';
			s += "teacherId = "+ teacherId.toString()+' ';
			s += "timeslotId = "+ timeslotId.toString()+' ';
			s += "assignedDate = "+(assignedDate != null ? assignedDate.toString() : 'null') +' ';
			s += "createdAt = "+(createdAt != null ? createdAt.toString() : 'null') +' ';
			s += "updatedAt = "+(updatedAt != null ? updatedAt.toString() : 'null') +' ';
			return s; 
		}

		
		
        public function toUpdateObject():Object {
            var obj:Object = new Object();
			obj["assignment[id]"] = id;
			obj["assignment[teacher_id]"] = teacherId;
			obj["assignment[timeslot_id]"] = timeslotId;
			obj["assignment[assigned_date]"] = assignedDate;
			obj["assignment[created_at]"] = createdAt;
			obj["assignment[updated_at]"] = updatedAt;
			return obj;
        }
        
        public function toXML():XML {
            var retval:XML =
	            <assignment>
					<id>{id}</id>
					<teacher_id>{teacherId}</teacher_id>
					<timeslot_id>{timeslotId}</timeslot_id>
					<assigned_date>{assignedDate}</assigned_date>
					<created_at>{createdAt}</created_at>
					<updated_at>{updatedAt}</updated_at>
					</assignment>;
            return retval;
        }
        
        public static function fromXML(assignmentXML:XML):Assignment {
            var model:SavasanaModelLocator =
                SavasanaModelLocator.getInstance();
            return new Assignment(
                                assignmentXML.id, 
                assignmentXML.teacher_id, 
                assignmentXML.timeslot_id, 
                assignmentXML.assigned_date, 
                assignmentXML.created_at, 
                assignmentXML.updated_at);
        }
    }
}