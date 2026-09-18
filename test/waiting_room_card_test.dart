import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:waiting_room_app/waiting_room_card.dart';

void main() {
  testWidgets('WaitingRoomCard displays the name correctly',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: WaitingRoomCard(name: 'Alice'),
            ),
          ),
        );

        await tester.pump();

        expect(find.text('Hello,'), findsOneWidget);
        expect(find.text('Alice'), findsOneWidget);

        await tester.pumpAndSettle(const Duration(seconds: 2));
      });
}