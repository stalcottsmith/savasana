// This file generated on 2008-05-30, by steve
// using the Limber plugin via: script/generate flex_application 
package com.savasana.business {
    import mx.rpc.IResponder;
    import com.savasana.util.ServiceUtils;

    public class SessionDelegate {
        private var _responder:IResponder;
        
        public function SessionDelegate(responder:IResponder) {
            _responder = responder;
        }
        
        public function createSession(login:String, password:String):void {
            ServiceUtils.send(
                "/session.xml",
                _responder,
                "POST",
                {login: login, password: password});
        }

        public function destroySession():void {
            ServiceUtils.send(
                "/session.xml",
                _responder,
                "DELETE");
        }

    }
}