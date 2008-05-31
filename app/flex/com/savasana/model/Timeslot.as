// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.model {
	import com.savasana.util.XMLUtils;
	import com.savasana.util.DateUtils;
    
    public class Timeslot {
        public static const UNSAVED_ID:int = 0;
        public static const NONE_ID:int = 0;
		
        public static const NONE: Timeslot =
            new Timeslot(UNSAVED_ID, UNSAVED_ID, UNSAVED_ID, UNSAVED_ID, "", null, null);
/*
		[Bindable]
		public var id:int;*/
		
		[Bindable]
		public var id:int;
		
		[Bindable]
		public var startHour:int;
		
		[Bindable]
		public var startMinute:int;
		
		[Bindable]
		public var duration:int;
		
		[Bindable]
		public var daysOfWeek:String;
		
		[Bindable]
		public var createdAt:Date;
		
		[Bindable]
		public var updatedAt:Date;
		

        public function Timeslot(
						id:int = UNSAVED_ID,
			startHour:int = UNSAVED_ID,
			startMinute:int = UNSAVED_ID,
			duration:int = UNSAVED_ID,
			daysOfWeek:String = "",
			createdAt:String = null,
			updatedAt:String = null)
        {
            this.id = id;
			this.startHour = startHour;
			this.startMinute = startMinute;
			this.duration = duration;
			this.daysOfWeek = daysOfWeek;
			this.createdAt = DateUtils.toASDateTime(createdAt);
			this.updatedAt = DateUtils.toASDateTime(updatedAt);
			
        }

		public function toString():String {
			var s:String = "Timeslot {"
			s += "id = "+ id.toString()+' ';
			s += "startHour = "+ startHour.toString()+' ';
			s += "startMinute = "+ startMinute.toString()+' ';
			s += "duration = "+ duration.toString()+' ';
			s += "daysOfWeek = "+ daysOfWeek.toString()+' ';
			s += "createdAt = "+(createdAt != null ? createdAt.toString() : 'null') +' ';
			s += "updatedAt = "+(updatedAt != null ? updatedAt.toString() : 'null') +' ';
			return s; 
		}

		
		
        public function toUpdateObject():Object {
            var obj:Object = new Object();
			obj["timeslot[id]"] = id;
			obj["timeslot[start_hour]"] = startHour;
			obj["timeslot[start_minute]"] = startMinute;
			obj["timeslot[duration]"] = duration;
			obj["timeslot[days_of_week]"] = daysOfWeek;
			obj["timeslot[created_at]"] = createdAt;
			obj["timeslot[updated_at]"] = updatedAt;
			return obj;
        }
        
        public function toXML():XML {
            var retval:XML =
	            <timeslot>
					<id>{id}</id>
					<start_hour>{startHour}</start_hour>
					<start_minute>{startMinute}</start_minute>
					<duration>{duration}</duration>
					<days_of_week>{daysOfWeek}</days_of_week>
					<created_at>{createdAt}</created_at>
					<updated_at>{updatedAt}</updated_at>
					</timeslot>;
            return retval;
        }
        
        public static function fromXML(timeslotXML:XML):Timeslot {
            var model:SavasanaModelLocator =
                SavasanaModelLocator.getInstance();
            return new Timeslot(
                                timeslotXML.id, 
                timeslotXML.start_hour, 
                timeslotXML.start_minute, 
                timeslotXML.duration, 
                timeslotXML.days_of_week, 
                timeslotXML.created_at, 
                timeslotXML.updated_at);
        }
    }
}