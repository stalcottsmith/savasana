// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.business {
    import mx.rpc.IResponder;
	import mx.controls.Alert;
    import com.savasana.model.Timeslot;
    import com.savasana.util.ServiceUtils;

    public class TimeslotDelegate {
        private var _responder:IResponder;
        
        public function TimeslotDelegate(responder:IResponder) {
            _responder = responder;
        }
        
        public function listTimeslots(data:Object = null):void {
			if(data != null) {
				var action:String = 'timeslots';
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
	            ServiceUtils.send("/timeslots.xml", _responder);
			}
        }

		
		
        public function createTimeslot(timeslot:Timeslot):void {
/*			Alert.show(timeslot.toString());*/
            ServiceUtils.send("/timeslots.xml", _responder, "POST",
                timeslot.toXML(), true);
        }

        public function updateTimeslot(timeslot:Timeslot):void {
            ServiceUtils.send(
                "/timeslots/" + timeslot.id + ".xml", _responder, "PUT",
                timeslot.toUpdateObject(), false);
        }

        public function destroyTimeslot(timeslot:Timeslot):void {
            ServiceUtils.send(
                "/timeslots/" + timeslot.id + ".xml",
                _responder,
                "DELETE");
        }
		
    }
}