// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:word_break_text/word_break_text.dart';

void main() {
  testWidgets('Example word breaking test', (WidgetTester tester) async {
    const sentence = '헬로월드. 이것은 긴 문장입니다. 작은 화면에서 단어를 기준으로 줄바꿈이 되어야 합니다.';
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: WordBreakText(sentence))),
    );

    expect(find.wordBreakText(sentence), findsOneWidget);
  });
}
