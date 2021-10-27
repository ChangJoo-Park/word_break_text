import 'package:flutter/material.dart';
import 'package:word_break_text/word_break_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WordBreakText Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Using Text",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 4),
            const Text("헬로월드. 이것은 긴 문장입니다. 작은 화면에서 단어를 기준으로 줄바꿈이 되어야 합니다."),
            const SizedBox(height: 30),
            const Text(
              "Using WordBreakText",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 4),
            WordBreakText(
              "헬로월드. 이것은 긴 문장입니다. 작은 화면에서 단어를 기준으로 줄바꿈이 되어야 합니다.",
              spacingByWrap: true,
              spacing: 4,
            ),
            const SizedBox(height: 30),
            WordBreakText("ハローワールド。 これは長い文章です。 小さな画面で単語に基づいて改行する必要があります。"),
            const SizedBox(height: 30),
            WordBreakText(
              "你好，世界。 这是一个很长的句子。 在小屏幕上， 它应该按字换行。",
              wrapAlignment: WrapAlignment.start,
            ),
            const SizedBox(height: 30),
            WordBreakText(
              "나랏말싸미 듕귁에 달아 문자와로 서르 사맛디 아니할쎄",
              wrapAlignment: WrapAlignment.start,
              direction: Axis.vertical,
            ),
          ],
        ),
      ),
    );
  }
}
