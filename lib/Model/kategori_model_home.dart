import 'package:flutter/widgets.dart';

class KategoriModelClass extends ChangeNotifier {
  final List<Map> _KategoriModel = [
    {
      "name": "Accessories",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326521/Deus%20Vult%20MarketPlace/kategori/accessories_done_puerp4.png",
    },
    {
      "name": "Camera",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326522/Deus%20Vult%20MarketPlace/kategori/camera_done_ex874q.png",
    },
    {
      "name": "Computer",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326521/Deus%20Vult%20MarketPlace/kategori/computer_done_fdkzm4.png",
    },
    {
      "name": "Gaming",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326521/Deus%20Vult%20MarketPlace/kategori/gaming_done_wizcxe.png",
    },
    {
      "name": "Kipas Angin",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326521/Deus%20Vult%20MarketPlace/kategori/kipas_angin_done_sn8kru.jpg",
    },
    {
      "name": "Mesin Cuci",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326521/Deus%20Vult%20MarketPlace/kategori/mesin_cuci_done_nk9edj.jpg",
    },
    {
      "name": "Setrika",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326522/Deus%20Vult%20MarketPlace/kategori/setrika_done_zraqmt.jpg",
    },
    {
      "name": "Smartphone",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326522/Deus%20Vult%20MarketPlace/kategori/smartphone_done_kx2vym.png",
    },
    {
      "name": "Television",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665326523/Deus%20Vult%20MarketPlace/kategori/television_done_yd1uuk.png",
    },
  ];

  get kategoriModel => _KategoriModel;

  set setKategoriModel(val) {
    notifyListeners();
  }
}
