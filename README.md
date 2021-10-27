<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

### word_break_text

Text widget with word break support for CJK sentence.

![Screenshot](https://i.imgur.com/1bdtL0j.png)

## Installation

Add flutter_map to your pubspec:

```yaml
dependencies:
    word_break_text: any # or the latest version on pub.dev
```

## Usage


```dart
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          WordBreakText(
            "헬로월드. 이것은 긴 문장입니다. 작은 화면에서 단어를 기준으로 줄바꿈이 되어야 합니다.",
            spacingByWrap: true,
            spacing: 4,
          ),
          WordBreakText("ハローワールド。 これは長い文章です。 小さな画面で単語に基づいて改行する必要があります。"),
          WordBreakText(
            "你好，世界。 这是一个很长的句子。 在小屏幕上， 它应该按字换行。",
            wrapAlignment: WrapAlignment.start,
          ),
        ],
      ),
    );
  }
```

## Additional information

This widget is verbose and useless when you are using english sentence.
Flutter do not support word break with CJK at this moment. If flutter supports, this widget must be change to only Text widget.