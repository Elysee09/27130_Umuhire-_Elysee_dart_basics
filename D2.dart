// by UE
int momoFee(int amount) {
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

// by UE
String maskPhone(String phone) {
  if (phone.length != 10) {
    return 'INVALID';
  }

  String middle = List.filled(5, '*').join();

  return phone.substring(0, 3) +
      middle +
      phone.substring(8);
}

// by UE
void main() {
  int D = 0;
  int T = 30;

  int totalFees = 0;
  int i = 1;

  String phone = maskPhone('0788123456');

  while (i <= D + 3) {
    int amount = i * 4000 + T * 100;

    int fee = momoFee(amount);

    totalFees += fee;

    print(
      'Receipt $i | $amount RWF | fee $fee RWF | to $phone'
    );

    i++;
  }

  print('Total fees: $totalFees RWF');
}