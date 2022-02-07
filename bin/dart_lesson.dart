import 'dart:io';

import 'dart:math';

class BankCard
{
  String owner;
  int account;
  int validityPeriod;
  int _balance = 0;
  BankCard(this.owner, this.account, this.validityPeriod);
  int get getBalance => _balance;
  set changeBalance(int tempBalance)
  {
    _balance = tempBalance;
  }
  int get yearsLeft => validityPeriod - 2022;
  void put (int money)
  {
    _balance += money;
  }
  void take (int money)
  {
    _balance -= money;
  }
  BankCard.vip ({ required this.owner, required this.account, this.validityPeriod  = 2037 , this._balance = 15000000} );
  BankCard.y10({required String owner , required int account}) : this(owner, account , 2032);
  BankCard.y5({required String owner , required int account}) : this(owner, account , 2027);
  @override
  String toString() {
    return "Onwer: $owner , personal account : $account , Balance: $_balance";
  }

}
void main()
{
  //BankCard("Zabimaru",192345, 2029);
  BankCard person = BankCard("Zabimaru",192345, 2029)
    .._balance = 100
    ..take(33);
  print(person);
}
