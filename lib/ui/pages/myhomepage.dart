part of 'pages.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MenuData> _menuData;

  @override
  void initState() {
    _menuData = MenuData().createMenu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Color(0xFFFFD5BA),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          SizedBox(
            width: 6,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Iman Kepada",
              style: Constans.kStyleHeading,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Qadha dan Qadar",
              style: Constans.kStyleHeading,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 32.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36), topRight: Radius.circular(36)),
            ),
            child: ListView.builder(
              itemCount: _menuData.length,
              itemBuilder: (context, index) {
                return MenuContainer(
                  callback: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        fullscreenDialog: true,
                        transitionDuration: Duration(milliseconds: 1000),
                        pageBuilder: (context, animation, secondaryAnimation) {
                          if (index == 4) {
                            return QuizPage();
                          } else {
                            return DetailPage(
                              color: _menuData[index].color,
                              text: _menuData[index].title,
                              dataKind: index,
                            );
                          }
                        },
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        }));
                  },
                  color: _menuData[index].color,
                  text: _menuData[index].title,
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
