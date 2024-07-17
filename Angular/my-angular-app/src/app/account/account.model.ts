export class account{
    AccountNumber:number;
    AccountHolderName:String;
    TypeOfAccount:String;
    Amount:number;
    DOJ: String;

    constructor(AccountNumber:number,AccountHolderName:String,TypeOfAccount:String,Amount:number,DOJ: String){
        this.AccountNumber = AccountNumber;
        this.AccountHolderName = AccountHolderName;
        this.TypeOfAccount = TypeOfAccount;
        this.Amount = Amount;
        this.DOJ = DOJ;
    }
}