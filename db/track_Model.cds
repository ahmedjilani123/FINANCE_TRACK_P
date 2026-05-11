using {cuid,managed} from '@sap/cds/common';

namespace finance.db;

entity Users : cuid,managed {
    fullName : String(225);
    email    : String;
    password : String;
    transactions:Association to many Transaction on transactions.user=$self;
    category:Association to many Category on category.user=$self;
}
type TypeTran:String enum{
    Expense;
    Income;
}

entity Category : cuid,managed {
    name:String;
    text:String;
    user:Association to Users;

}
entity Transaction:managed{
    key![ID]:Integer;
    type:TypeTran;
    amount:Decimal(15, 2);
    description:String;
    category:String;
    user:Association to Users;
   


}