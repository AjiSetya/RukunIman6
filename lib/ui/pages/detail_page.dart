part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final String text;
  final Color color;
  final int dataKind;

  const DetailPage({Key key, this.text, this.color, this.dataKind})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List data;

  PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.8);

  @override
  void initState() {
    data = kumpulanData[widget.dataKind];
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bg' + widget.text,
      child: Scaffold(
        backgroundColor: widget.color,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            widget.text,
            style: TextStyle(color: Color(0xFF25314B)),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [widget.color, Color(0xFFFB887B)])),
            ),
            PageView.builder(
                controller: _controller,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 12,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            data[index],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
