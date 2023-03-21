import 'package:car_rental_for_customer/models/enums/transaction_type.dart';
import 'package:car_rental_for_customer/models/transaction.dart';

final transactionMock = <Transaction>[
  Transaction(
    id: '1',
    userId: '1',
    driverId: '1',
    customerId: '1',
    date: DateTime(2023, 2, 2, 2, 20),
    type: TransactionType.deposit,
    amount: 1000000,
    description: 'Deposit----------------------------------------------',
  ),
  Transaction(
    id: '2',
    userId: '2',
    driverId: '2',
    customerId: '2',
    date: DateTime(2023, 2, 20, 2, 20),
    type: TransactionType.payment,
    amount: 1000000,
    description: 'Payment----------------------------------------------',
  ),
  Transaction(
    id: '3',
    userId: '3',
    driverId: '3',
    customerId: '3',
    date: DateTime(2023, 2, 30, 2, 20),
    type: TransactionType.refund,
    amount: 1000000,
    description: 'Refund----------------------------------------------',
  ),
  Transaction(
    id: '4',
    userId: '4',
    driverId: '4',
    customerId: '4',
    date: DateTime(2023, 2, 40, 2, 20),
    type: TransactionType.withdrawal,
    amount: 1000000,
    description: 'Withdrawal----------------------------------------------',
  )
];
