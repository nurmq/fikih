part of 'ui.dart';

class FikihCard extends StatefulWidget {
  final int itemIndex;
  final Fikih fikih;

  FikihCard({this.itemIndex, this.fikih});

  @override
  _FikihCardState createState() => _FikihCardState();
}

class _FikihCardState extends State<FikihCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding / 2),
        height: 160,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(22),
                  color: widget.itemIndex.isEven
                      ? Colors.blueAccent
                      : Colors.orangeAccent,
                  boxShadow: [defaultShadow]),
              child: Container(
                height: 10,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        // topLeft: Radius.circular(6),
                        // bottomLeft: Radius.circular(22)
                        )),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                bottom: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  height: 160,
                  width: 160,
                  child: Image.asset(
                    widget.fikih.images,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              bottom: 0,
              left: 10,
              child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultPadding),
                          child: AutoSizeText(widget.fikih.title,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              maxLines: 1)),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultPadding),
                          child: AutoSizeText(widget.fikih.shortDescription,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              maxLines: 4)),
                    ],
                  )),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BabFikih(
                fikih: widget.fikih,
                keyword: null,
              );
            },
          ),
        );
      },
    );
  }
}
