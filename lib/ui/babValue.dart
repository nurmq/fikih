part of "ui.dart";

class BabValue extends StatefulWidget {
  final int id;

  BabValue({this.id});
  @override
  _BabValueState createState() => _BabValueState();
}

class _BabValueState extends State<BabValue> {
  YoutubePlayerController _controller;
  List<FikihValue> valueData;

  void getDataValue(){
    setState(() {
      valueData = listFikihValue.where((element) => widget.id == element.id).toList();
    });
  }
  
  @override
  void initState() {
    super.initState();
    getDataValue();
    _controller = YoutubePlayerController(
      initialVideoId: valueData[0].linkVideo,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(valueData.length, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(valueData[index].judulPembahasan,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(valueData[index].materi,
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                  ],
                );
              }),
            ),
          ),
          valueData[0].linkVideo == null
              ? SizedBox(height: 10)
              : Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text("Video Penjelasan",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))),
          Container(
            padding: EdgeInsets.all(10),
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {
                print('Player is ready.');
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: primaryColor,
                  ),
                  child: Center(
                      child: Text("Audio Penjelasan",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(8.0),
            child: PlayerWidget(url: valueData[0].linkAudio, fileName: valueData[0].nameAudio),
          )
        ],
      ),
    );
  }
}
