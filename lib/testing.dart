import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:word_break_text/word_break_text.dart';

extension WordBreakTextFinder on CommonFinders {
  Finder wordBreakText(String text) {
    return _WordBreakTextFinder(text);
  }
}

class _WordBreakTextFinder extends MatchFinder {
  _WordBreakTextFinder(this.text, {bool skipOffstage = true})
      : super(skipOffstage: skipOffstage);

  final String text;

  @override
  String get description => 'word break text "$text"';

  @override
  bool matches(Element candidate) {
    final Widget widget = candidate.widget;
    if (widget is WordBreakText) {
      return widget.data == text;
    }
    return false;
  }
}
