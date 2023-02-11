import 'package:earthkeepers/presentation/resources/images.dart';

class HomeModel {
  final String name;
  final String image;
  final int point;

  HomeModel(this.name, this.image, this.point);
}
List<HomeModel>plantsModel=[
 HomeModel(
     "GARDENIA Plant",
     Images.plant1,
     57),
 HomeModel(
     "Spider Plant",
     Images.plant2,
     70),
 HomeModel(
     "Clementine Plant",
     Images.plant3,
     70),
  HomeModel(
     "Juniper Plant",
     Images.plant4,
     84),

];
