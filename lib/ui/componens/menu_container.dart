part of 'componens.dart';

class MenuContainer extends StatelessWidget {
  final Function callback;
  final Color color;
  final String text;

  const MenuContainer({Key key, this.callback, this.color, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Hero(
        tag: 'bg' + text,
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            highlightColor: Color(0x05000000),
            splashColor: Color(0x0A000000),
            borderRadius: BorderRadius.circular(12),
            onTap: callback,
            child: Container(
              padding: EdgeInsets.all(16),
              height: 120,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
