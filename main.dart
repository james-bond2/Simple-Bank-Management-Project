void main(){
  Account nasim = Account(user: 'nasim', balance: 5000, userAccount: 'abc246');
  Account abdullah = Account(user: 'abdullah', balance: 6788, userAccount: '456rfv2345');
  nasim.balanceDeposite(9500);
  nasim.displayAccount();
  nasim.balanceWithdraw(7654);
  nasim.displayAccount();
  abdullah.balanceDeposite(3212);
  abdullah.displayAccount();
  abdullah.balanceWithdraw(4567);
  abdullah.displayAccount();
}

class Account{
  String user = '';
  String userAccount = '';
  double balance =0;
  static int accounts = 0;
  Account({required this.user, required this.balance, required this.userAccount}){}
  int totalAccounts(){
    return accounts;
  }
   void balanceDeposite(double amount){
     if(amount > 0){
       balance = balance + amount;
       print('New balance is $balance.');
     }else{
       print('Please put a positive value.');
     }
   }
   void balanceWithdraw(double amount){
     if(amount <= balance && amount >0){
       balance = balance - amount;
       print('New balance is $balance.');
     }else{
       print('Please put a valid amount');
     }
   }
    void displayAccount(){
      print("User Name: $user, Total Balance: $balance");
    }
}
