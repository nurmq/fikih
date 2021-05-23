part of 'model.dart';

class Bab {
  final int id, idFikih;
  final String judulBab;

  Bab({this.id,this.idFikih,this.judulBab});
}

var listBab = [
  Bab(
    id: 1,
    idFikih: 1,
    judulBab: "Sholat Subuh"
  ),
  Bab(
    id: 2,
    idFikih: 1,
    judulBab: "Sholat Dzuhur"
  ),
  Bab(
    id: 3,
    idFikih: 2,
    judulBab: "Wudhu"
  ),
  Bab(
    id: 4,
    idFikih: 2,
    judulBab: "Debu"
  ),
  Bab(
    id: 5,
    idFikih: 3,
    judulBab: "Riba"
  ),
  Bab(
    id: 6,
    idFikih: 3,
    judulBab: "Harta Haram"
  ),
];