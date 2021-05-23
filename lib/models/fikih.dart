part of 'model.dart';

class Fikih {
  final int id;
  final String title, shortDescription, images;

  Fikih({this.id,this.title,this.shortDescription,this.images});
}

List<Fikih> listFikih = [
  Fikih(
    id: 1,
    title: "Fikih Ibadah", 
    shortDescription: "Ilmu yang menerangkan tentang dasar-dasar hukum-hukum syar’i",
    images: "assets/images/fikihibadah.png"
  ),
  Fikih(
    id: 2,
    title: "Fikih Thaharah", 
    shortDescription: "Ilmu yang menerangkan tentang cara menyucikan diri untuk beribadah kepada Allah",
    images: "assets/images/fikihthaharah.png"
  ),
  Fikih(
    id: 3,
    title: "Fikih Muamalah", 
    shortDescription: "Ilmu yang menerangkan tentang jual - beli yang anjurkan oleh Rasulullah",
    images: "assets/images/fikihmuamalah.png"
  ),
];