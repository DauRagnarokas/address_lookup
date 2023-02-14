import 'package:flutter/material.dart';

import 'address/address_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _navigateToAddressScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AddressScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gigabank assignment'),
      ),
      body: Center(
        child: ElevatedButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16),
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: Colors.blue,
            elevation: 5,
          ),
          onPressed: _navigateToAddressScreen,
          child: const Text(
            'Add address',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
