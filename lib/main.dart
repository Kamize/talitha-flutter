import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

// Talitha Nabila - 1301204516
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
      create: (context) => Cart(),
      child: MaterialApp(
        title: 'Talitha Nabila State Management Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Talitha Nabila Shopping Cart'),
      ),
      body: Column(
        children: [
          expand(),
          const CartTotal(),
          const ClearCartButton(),
        ],
      ),
    );
  }

  Expanded expand() {
    return const Expanded(
          child: ItemList(),
        );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder: (context, index) {
        final item = cart.items[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
          trailing: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => cart.addItem(item),
          ),
        );
      },
    );
  }
}

// Talitha Nabila - 1301204516
class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Total: \$${cart.totalValue.toStringAsFixed(2)}',
        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ClearCartButton extends StatelessWidget {
  const ClearCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return ElevatedButton(
      onPressed: () => cart.clearCart(),
      child: const Text('Clear Cart'),
    );
  }
}

class Cart extends ChangeNotifier {
  final List<Item> _items = [
    Item(name: 'Item 1', price: 40.0),
    Item(name: 'Item 2', price: 50.0),
    Item(name: 'Item 3', price: 60.0),
  ];

  List<Item> get items => _items;

  double get totalValue => _items.fold(0, (sum, item) => sum + item.price);

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}

class Item {
  final String name;
  final double price;

  Item({required this.name, required this.price});
}
