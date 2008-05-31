// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.business {
    import mx.rpc.IResponder;
	import mx.controls.Alert;
    import com.savasana.model.Teacher;
    import com.savasana.util.ServiceUtils;

    public class TeacherDelegate {
        private var _responder:IResponder;
        
        public function TeacherDelegate(responder:IResponder) {
            _responder = responder;
        }
        
        public function listTeachers(data:Object = null):void {
			if(data != null) {
				var action:String = 'teachers';
				var nestedPath:String = '';
				var queryParameters:String = '';
				for each (var parameter:Object in data) {
					for (var nesting:String in parameter) {
						switch(nesting) {
							case 'page':
							case 'filter':
							case 'from':
							case 'to':
								//not happy with using query parameters for filtering
								//it is not RESTful.  TODO: fix
								if(queryParameters != '') { queryParameters += "&"; }
								queryParameters += nesting+'='+parameter[nesting];
								break;
							default:
								if(parameter[nesting] != null && parameter[nesting] != '') {
									nestedPath += '/'+nesting+'/'+parameter[nesting];
								}
								break;
						}
					}
				}
				if(queryParameters != '') { queryParameters = '?'+queryParameters; }
	            ServiceUtils.send(nestedPath+"/"+action+".xml"+queryParameters, _responder);
			} else {
	            ServiceUtils.send("/teachers.xml", _responder);
			}
        }

		
		
        public function createTeacher(teacher:Teacher):void {
/*			Alert.show(teacher.toString());*/
            ServiceUtils.send("/teachers.xml", _responder, "POST",
                teacher.toXML(), true);
        }

        public function updateTeacher(teacher:Teacher):void {
            ServiceUtils.send(
                "/teachers/" + teacher.id + ".xml", _responder, "PUT",
                teacher.toUpdateObject(), false);
        }

        public function destroyTeacher(teacher:Teacher):void {
            ServiceUtils.send(
                "/teachers/" + teacher.id + ".xml",
                _responder,
                "DELETE");
        }
		
    }
}