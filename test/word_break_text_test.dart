import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:word_break_text/utils.dart';

import 'package:word_break_text/word_break_text.dart';

void main() {
  testWidgets('The width of each text is less than the max-width',
      (tester) async {
    const TextStyle textStyle = TextStyle(fontSize: 40);
    late final double maxWidth;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          maxWidth = constraints.maxWidth;
          return const WordBreakText(
            '이것은매우매우매우매우매우매우매우매우매우매우매우매우매우매우매우긴어절이고 여기는 짧은 어절입니다. 테스트용입니다.',
            style: textStyle,
          );
        }),
      ),
    ));

    final textWidgets = tester.widgetList<Text>(find.byType(Text));
    // Using the Builder for getting context.
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            for (final text in textWidgets) {
              final textWidth =
                  getTextSize(context, text.data!.trim(), textStyle).width;
              expect(textWidth <= maxWidth, isTrue);
            }
            return const SizedBox();
          },
        ),
      ),
    );
  });
}
