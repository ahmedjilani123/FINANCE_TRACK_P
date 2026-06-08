using {finance.db as db  } from '../db/track_Model';

service financeSrv {

    entity Users as projection on db.Users;
    entity Transactions as projection on db.Transaction;
    entity Categorys as projection on db.Category;
    
}