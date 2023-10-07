import 'package:flutter/material.dart';

class MyBagPage extends StatefulWidget {
  const MyBagPage({super.key});

  @override
  _MyBagPageState createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  int itemCount = 1;
  double unitPrice = 20.0;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  void checkout() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Congratulations! Your order has been placed.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bag'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://5.imimg.com/data5/FV/GM/MY-2/stylish-ladies-bag.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: decrementItem,
              ),
              Text('$itemCount'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: incrementItem,
              ),
            ],
          ),
          Expanded(
            child: Image.network(
              'https://5.imimg.com/data5/XZ/AG/ID/SELLER-87238623/ladies-shoes-500x500.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: decrementItem,
              ),
              Text('$itemCount'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: incrementItem,
              ),
            ],
          ),
          Expanded(
            child: Image.network(
              'https://static-01.daraz.com.bd/p/9bcc175e9da0bb5eb17845db2e35f432.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: decrementItem,
              ),
              Text('$itemCount'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: incrementItem,
              ),
            ],
          ),
          Text(
            'Total Amount: \$${itemCount * unitPrice}',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: checkout,
            child: const Text('CHECK OUT'),
          ),
        ],
      ),
    );
  }
}
