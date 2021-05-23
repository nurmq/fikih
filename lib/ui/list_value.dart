part of 'ui.dart';

class ListValue extends StatefulWidget {
  final int idBab;
  final String judulBab;

  ListValue({this.idBab, this.judulBab});

  @override
  _ListValueState createState() => _ListValueState();
}

class _ListValueState extends State<ListValue> {
  List<FikihValue> dataValue;

  @override
  void initState() {
    super.initState();
    setState(() {
      dataValue = listFikihValue
          .where((element) => widget.idBab == element.idBab)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: Icon(Icons.arrow_drop_down, size: 32, color: Colors.white),
      title: Text(widget.judulBab,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
      children: [
        for (var item in dataValue)
          ListTile(
            title: Text(item.judulPembahasan,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            leading: Text("1",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BabValue(
                      id: item.id,
                    );
                  },
                ),
              );
            },
          ),
      ],
    );
  }
}
