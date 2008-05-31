// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.business {
    import mx.rpc.IResponder;
	import mx.controls.Alert;
    import com.savasana.model.Assignment;
    import com.savasana.util.ServiceUtils;

    public class AssignmentDelegate {
        private var _responder:IResponder;
        
        public function AssignmentDelegate(responder:IResponder) {
            _responder = responder;
        }
        
        public function listAssignments(data:Object = null):void {
			if(data != null) {
				var action:String = 'assignments';
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
	            ServiceUtils.send("/assignments.xml", _responder);
			}
        }

		
		
        public function createAssignment(assignment:Assignment):void {
/*			Alert.show(assignment.toString());*/
            ServiceUtils.send("/assignments.xml", _responder, "POST",
                assignment.toXML(), true);
        }

        public function updateAssignment(assignment:Assignment):void {
            ServiceUtils.send(
                "/assignments/" + assignment.id + ".xml", _responder, "PUT",
                assignment.toUpdateObject(), false);
        }

        public function destroyAssignment(assignment:Assignment):void {
            ServiceUtils.send(
                "/assignments/" + assignment.id + ".xml",
                _responder,
                "DELETE");
        }
		
    }
}