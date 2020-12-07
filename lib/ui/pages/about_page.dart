part of 'pages.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Tentang",
            style: Constans.kStyleAppBarText,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 200.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "﷽",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 70.0, color: Color(0xFFFFD5BA)),
                ),
                Text(
                  "Tuntunan Rukun Iman Ke-6",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFD5BA)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Icon designed by Freepik from Flaticon",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0, color: Color(0xFFFFD5BA)),
                ),
              ],
            ),
          ),
        ));
  }
}
