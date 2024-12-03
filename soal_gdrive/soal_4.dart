class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);
  String get accountNumber => _accountNumber;
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposit berhasil sebesar Rp $amount. Saldo sekarang: Rp $_balance');
    } else {
      print('Jumlah deposit harus lebih besar dari 0.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdraw berhasil sebesar Rp $amount. Saldo sekarang: Rp $_balance');
    } else if (amount > _balance) {
      print('Withdraw gagal: saldo tidak mencukupi.');
    } else {
      print('Jumlah withdraw harus lebih besar dari 0.');
    }
  }
}

void main() {
  var account = BankAccount('987654321', 10000.0);

  account.deposit(5000.0);
  account.withdraw(3000.0);
  account.withdraw(20000.0);
  account.deposit(-1000.0);
}
