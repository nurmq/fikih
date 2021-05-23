part of 'ui.dart';

class HomeVerDua extends StatefulWidget {
  @override
  _HomeVerDuaState createState() => _HomeVerDuaState();
}

class _HomeVerDuaState extends State<HomeVerDua> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("Belajar Fikih",
            style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(defaultPadding),
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 4),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              controller: search,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "Tulis fikih / kata yang ingin dicari",
                hintStyle: TextStyle(color: Colors.cyan[200]),
              ),
              onSubmitted: (value){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BabFikih(fikih: null, keyword: search.text);
                }
              )
            );
          },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("List Semua Fikih",
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    )
                  ),
                ),
                ListView.builder(
                  itemCount: listFikih.length,
                  itemBuilder: (context, index) => FikihCard(
                    itemIndex: index,
                    fikih: listFikih[index]
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
