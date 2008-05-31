// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.model {
	import com.savasana.util.XMLUtils;
	import com.savasana.util.DateUtils;
    
    public class Teacher {
        public static const UNSAVED_ID:int = 0;
        public static const NONE_ID:int = 0;
		
        public static const NONE: Teacher =
            new Teacher(UNSAVED_ID, "", "", null, null);
/*
		[Bindable]
		public var id:int;*/
		
		[Bindable]
		public var id:int;
		
		[Bindable]
		public var firstName:String;
		
		[Bindable]
		public var lastName:String;
		
		[Bindable]
		public var createdAt:Date;
		
		[Bindable]
		public var updatedAt:Date;
		

        public function Teacher(
						id:int = UNSAVED_ID,
			firstName:String = "",
			lastName:String = "",
			createdAt:String = null,
			updatedAt:String = null)
        {
            this.id = id;
			this.firstName = firstName;
			this.lastName = lastName;
			this.createdAt = DateUtils.toASDateTime(createdAt);
			this.updatedAt = DateUtils.toASDateTime(updatedAt);
			
        }

		public function toString():String {
			var s:String = "Teacher {"
			s += "id = "+ id.toString()+' ';
			s += "firstName = "+ firstName.toString()+' ';
			s += "lastName = "+ lastName.toString()+' ';
			s += "createdAt = "+(createdAt != null ? createdAt.toString() : 'null') +' ';
			s += "updatedAt = "+(updatedAt != null ? updatedAt.toString() : 'null') +' ';
			return s; 
		}

		
		
        public function toUpdateObject():Object {
            var obj:Object = new Object();
			obj["teacher[id]"] = id;
			obj["teacher[first_name]"] = firstName;
			obj["teacher[last_name]"] = lastName;
			obj["teacher[created_at]"] = createdAt;
			obj["teacher[updated_at]"] = updatedAt;
			return obj;
        }
        
        public function toXML():XML {
            var retval:XML =
	            <teacher>
					<id>{id}</id>
					<first_name>{firstName}</first_name>
					<last_name>{lastName}</last_name>
					<created_at>{createdAt}</created_at>
					<updated_at>{updatedAt}</updated_at>
					</teacher>;
            return retval;
        }
        
        public static function fromXML(teacherXML:XML):Teacher {
            var model:SavasanaModelLocator =
                SavasanaModelLocator.getInstance();
            return new Teacher(
                                teacherXML.id, 
                teacherXML.first_name, 
                teacherXML.last_name, 
                teacherXML.created_at, 
                teacherXML.updated_at);
        }
    }
}