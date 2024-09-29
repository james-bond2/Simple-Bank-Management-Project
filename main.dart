void main(){
  Account nasim = Account(user: 'nasim', userAccount: 'abc246');
  Account abdullah = Account(user: 'abdullah',  userAccount: '456rfv2345');
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
  double _balance =500;
  static int _accounts = 0;
  Account({required this.user, required this.userAccount}){
    _accounts ++;
   }
getAccounts() {
  if (_accounts == 1) {
    print('There is $_accounts account.');
  } else {
    print('There are $_accounts accounts.');
  }
}
   void balanceDeposite(double amount){
     if(amount > 0){
       _balance = _balance + amount;
       print('New balance is $_balance.');
     }else{
       print('Please put a positive value.');
     }
   }
   void balanceWithdraw(double amount){
     if(amount <= _balance && amount >0){
       _balance = _balance - amount;
       print('New balance is $_balance.');
     }else{
       print('Please put a valid amount');
     }
   }
    void displayAccount(){
      print("User Name: $user, Total Balance: $_balance");
    }
}
