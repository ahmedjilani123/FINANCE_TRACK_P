import cds,{Request, service} from '@sap/cds';
import {Login} from '#cds-models/financeSrv';
export default class financeSrv extends cds.ApplicationService{
    init(){

        this.on(Login,(srv:Request)=>{
            return 'Login Successfully';
        })
        return super.init();
    }
}