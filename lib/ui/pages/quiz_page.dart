part of 'pages.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();

  @override
  void dispose() {
    flutterWebviewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: WebviewScaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Latihan Soal",
            style: Constans.kStyleAppBarText,
          ),
        ),
        url:
            "https://docs.google.com/forms/d/e/1FAIpQLSdvkOPAQdxMBs-Hvd1BkXmyHLpG8zaVB-R-Ek8KKZIr8E3K3g/viewform?usp=sf_link",
        clearCookies: false,
        clearCache: false,
        hidden: true,
        appCacheEnabled: true,
        supportMultipleWindows: true,
      ),
    );
  }
}
