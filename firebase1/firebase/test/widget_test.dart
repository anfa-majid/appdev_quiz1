import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alchemist/alchemist.dart';
import 'package:firebase/screens/item_detail.dart';

void main() {
  group('item detail Golden Test', () {
    goldenTest(
      'renders on iPhone 13',
      fileName: 'ui_sc_iphone13',
      builder: () => GoldenTestGroup(
        scenarioConstraints: const BoxConstraints(
          maxWidth: 390, 
          maxHeight: 844, 
        ),
        children: [
          GoldenTestScenario(
            name: 'item details - iPhone 13',
            child: const MaterialApp(
              home: ItemDetailsScreen(),
              debugShowCheckedModeBanner: false,
            ),
          ),
        ],
      ),
    );
  });
}
