# Dart OOP Assignment: Kigali Bus Card

**Name:** YOUR FULL NAME

**Student ID:** 27130

## My Numbers

- D = 30
- L = 0
- Starting balance = 1300 RWF
- Bus fare = 230 RWF
- Student discount = 10%

## Output of main.dart

```text
Error: name too short
Owner: Ama | Balance: 1300 RWF
Owner: YOUR FULL NAME | Balance: 1300 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 230 RWF
Paid 230 RWF
Owner: YOUR FULL NAME | Balance: 2840 RWF
Student discount: 23 RWF
Paid 207 RWF
Owner: YOUR FULL NAME | Balance: 1093 RWF
Student card: 10% off
```

## Part 1: Why no setter for balance?

There is no setter for balance because users should not be allowed to change the balance directly. The balance should only change through controlled methods such as topUp() and pay(). This helps prevent incorrect balance changes.

## Part 2: What does ~/ do?

The ~/ operator performs integer division. It returns a whole number instead of a decimal number.

For example:

237 * 17 / 100 = 40.29

237 * 17 ~/ 100 = 40

The / operator returns a decimal result, while ~/ returns an integer result.

## Part 4: Bug Hunt

| Bug | Problem | Correction |
|---|---|---|
| 1 | Fields were not initialized. | Initialize the fields. |
| 2 | Parent constructor was not called. | Use super(brand, battery). |
| 3 | restart() did not exist in the parent class. | Add restart() to Phone. |
| 4 | Battery setter was missing. | Add a setter accepting values from 0 to 100. |
| 5 | Getter was called as a method. | Use p.battery. |

### Not a bug

The line `new Phone('Tecno', 50);` is correct because the new keyword is optional in Dart but still valid.

## Part 5: Predict the Output

### My prediction

```text
1
5
```

### Real output

```text
1
5
```

### Was I right?

Yes. My prediction was correct because the negative value was rejected by the setter, and BigBag calls the parent add() method twice every time its add() method is called.