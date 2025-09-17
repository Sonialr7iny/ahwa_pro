import 'order.dart';

class OrderManager {
  final List<Order> _orders = [];
  void addOrder(Order o) => _orders.add(o);
  void completeOrder(Order o) => _orders.remove(o);
  List<Order> get pendingOrders => _orders;
}