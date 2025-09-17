import 'drink.dart';
import 'order.dart';
import 'order_manager.dart';
import 'report.dart';
import 'shai.dart';

void main() {
  // Create a drink
  Drink myDrink = Shai();

  // Prepare the drink
  myDrink.prepare();

  // Create an order
  Order order1 = Order('Ahmed', myDrink);

  // Manage orders
  OrderManager manager = OrderManager();
  manager.addOrder(order1);

  // Add another order
  Order order2 = Order('Layla', Shai());
  manager.addOrder(order2);

  // Show pending orders
  print('Pending Orders:');
  for (var order in manager.pendingOrders) {
    print('${order.customer} ordered ${order.drink.name}');
  }

  // Generate report
  ReportGenerator report = ReportGenerator();
  report.generateReport(manager.pendingOrders);

  // Complete one order
  manager.completeOrder(order1);

  // Show updated orders
  print('\nAfter completing one order:');
  for (var order in manager.pendingOrders) {
    print('${order.customer} still waiting for ${order.drink.name}');
  }

  // Generate updated report
  report.generateReport(manager.pendingOrders);
}