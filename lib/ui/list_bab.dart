part of 'ui.dart';

class BabFikih extends StatefulWidget {
  final Fikih fikih;
  final String keyword;

  BabFikih({this.fikih, this.keyword});
  @override
  BabFikihState createState() => BabFikihState();
}

class BabFikihState extends State<BabFikih> {
  List<Bab> dataBab;
  List<FikihValue> dataValue;
  List<Bab> dataSementara;

  void getData() {
    setState(() {
      dataBab = listBab
          .where((element) => widget.fikih.id == element.idFikih)
          .toList();
    });
  }

  void getSearch() {
    setState(() {
      dataValue = listFikihValue
          .where((element) =>
              (element.judulPembahasan
                  .toLowerCase()
                  .contains(widget.keyword)) ||
              (element.materi.toLowerCase().contains(widget.keyword)))
          .toList();
      
      for (var i = 0; i < dataValue.length; i++) {
        dataSementara = listBab.where((element) => dataValue[i].idBab == element.id).toList();
        print(dataSementara[0].judulBab);
        if(dataBab != null){
          var cari = dataBab.where((element) => dataSementara[0].id == element.id).toList();
          if(cari.length == 0){
            dataBab.add(dataSementara[0]);
            print("1");
          }
        }else{
          dataBab = dataSementara;
          print("2");
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.keyword == null) {
      getData();
    } else {
      getSearch();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: widget.keyword != null
              ? Text("Hasil Pencarian",
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white))
              : Text(widget.fikih.title,
                  style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
          flexibleSpace:
              Container(decoration: BoxDecoration(color: primaryColor)),
        ),
        body: dataBab == null
            ? Center(child: CircularProgressIndicator())
            : ListView(children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                      children: List.generate(dataBab.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                              Colors.purple[900],
                              Colors.purple[500],
                              Colors.purple[300]
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                      child: ListValue(
                          idBab: dataBab[index].id,
                          judulBab: dataBab[index].judulBab),
                    );
                  })),
                )
              ]));
  }
}
