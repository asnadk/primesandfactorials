void main() {
  int num = 11;
  List factors = [];
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      factors.add(i);
    }
  }
  print("Factors of $num: $factors");

  if (factors.length > 2) {
    print("$num is not a prime number");
  } else {
    print("$num is a prime number");
    BigInt factorial(int num) {
      if (num > 0) {
        return BigInt.from(num) * factorial(num - 1);
      } else {
        return BigInt.one;
      }
    }
    print("Factorial of $num is: ${factorial(num)}");
  }
}