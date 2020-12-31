part of 'models.dart';

enum TrasactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TrasactionStatus status;
  final User user;

  Transaction({
    this.id,
    this.food,
    this.quantity,
    this.total,
    this.dateTime,
    this.status,
    this.user,
  });

  Transaction copyWith({
    int id,
    Food food,
    int quantity,
    int total,
    DateTime dateTime,
    TrasactionStatus status,
    User user,
  }) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, food, quantity, total, dateTime, status, user];
}

List<Transaction> mockTrasaction = [
  Transaction(
      id: 1,
      food: mockFood[1],
      quantity: 10,
      total: (mockFood[1].price * 10 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TrasactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 2,
      food: mockFood[2],
      quantity: 5,
      total: (mockFood[1].price * 5 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TrasactionStatus.cancelled,
      user: mockUser),
  Transaction(
      id: 3,
      food: mockFood[3],
      quantity: 10,
      total: (mockFood[1].price * 10 * 1.1).round() + 5000,
      dateTime: DateTime.now(),
      status: TrasactionStatus.delivered,
      user: mockUser)
];
