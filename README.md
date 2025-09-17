#  Drink Order Management System ahwa 

[![Language](https://img.shields.io/badge/Language-Dart-blue.svg)](https://dart.dev/) 
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A simple **Dart-based drink ordering system** demonstrating **OOP concepts** like abstraction, inheritance, and composition.  
This project allows creating drinks, managing orders, and generating simple reports.

---

## 📝 Table of Contents

- [Features](#-features)  
- [Classes Overview](#-classes-overview)
- [Installation](#-installation)   
- [Usage](#-usage)  
- [Key Concepts](#-key-concepts)    

---

## 🌟 Features

- Abstract `Drink` class supporting multiple drink types.  
- Order creation and management with `Order` and `OrderManager`.  
- Simple reporting via `ReportGenerator`.  
- Demonstrates basic object-oriented programming principles.

---

## 📚 Classes Overview

### `Drink` (abstract)
- Represents a generic drink.
- **Properties:** `name` – Name of the drink.
- **Methods:** `prepare()` – Abstract method to define preparation steps.

### `Shai` (extends `Drink`)
- A concrete drink implementation.
- **Behavior:** Prepares "Shai" with mint.

### `Order`
- Represents a customer’s order.
- **Properties:**  
  - `customer`: Customer's name  
  - `drink`: The ordered drink  

### `OrderManager`
- Manages orders.
- **Methods:**  
  - `addOrder(Order o)` – Add a new order  
  - `completeOrder(Order o)` – Remove an order from pending  
  - `pendingOrders` – Get current pending orders  

### `ReportGenerator`
- Generates simple reports.
- **Methods:**  
  - `generateReport(List<Order> orders)` – Prints total number of orders  

---

## ⚡ Installation

1. Install [Dart SDK](https://dart.dev/get-dart)  
2. Clone this repository:
   ```bash
   git clone https://github.com/YourUsername/drink-order-system.git
   cd drink-order-system


## Usage Example:
<pre> ```dart
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
``` </pre>
------------

## Key Concepts

**Abstract classes & inheritance**

**Composition (Order contains a Drink)**

**List management for orders**

**Simple reporting**
