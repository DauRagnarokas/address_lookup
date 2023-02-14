import 'package:flutter/material.dart';
import 'package:flutterassignment/models/address_prop.dart';

import '../models/address.dart';
import 'home_screen.dart';


class AddressDisplayPage extends StatelessWidget {
  final Address address;

  const AddressDisplayPage({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    final List<AddressProp> props = address
        .toJson()
        .entries
        .map(
          (e) => AddressProp(name: e.key, value: e.value),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Address'),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          alignment: const Alignment(0, -0.2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              props.length,
              (index) => _buildPropRow(props[index]),
            )..add(
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      (Route<dynamic> route) => false,
                    ),
                    child: const Text('Go home'),
                  ),
                ),
              ),
          ),
        ),
      ),
    );
  }

  Widget _buildPropRow(AddressProp addressProp) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '${addressProp.nameBeautified}:',
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            addressProp.value,
          ),
        ),
      ],
    );
  }
}
