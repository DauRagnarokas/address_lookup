import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterassignment/screens/address/address_screen.dart';
import 'package:flutterassignment/screens/home_screen.dart';

void main() {
  testWidgets('Navigates to AddressScreen when Add address button is tapped', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(
      home: HomeScreen(),
    ));

    // Find the Add address button
    final addButtonFinder = find.text('Add address');
    expect(addButtonFinder, findsOneWidget);

    // Tap on the Add address button
    await tester.tap(addButtonFinder);

    // Rebuild the widget after the state has changed.
    await tester.pumpAndSettle();

    // Check if AddressScreen is pushed onto the stack
    expect(find.byType(AddressScreen), findsOneWidget);
  });
}
