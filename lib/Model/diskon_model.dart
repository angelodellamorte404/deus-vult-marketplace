import 'package:flutter/cupertino.dart';

class DiskonModelClass extends ChangeNotifier {
  List<Map> _DiskonModel = [
    {
      "name": "Speaker JBL Flip 5",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323182/Deus%20Vult%20MarketPlace/accessories/JBL_Flip_5_arb8fl.png",
      "harga": 2199000.00,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405337/Deus%20Vult%20MarketPlace/Spesifikasi/Speaker_JBL_Flip_5_jphgaq.jpg",
      "kategori": "Accessories",
    },
    {
      "name": "Canon Eos 1300d",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323191/Deus%20Vult%20MarketPlace/camera/Canon_Eos_1300d_qxtblw.png",
      "harga": 3300000,
      "spec": {
        "Type": "Approx. 22.3 mm x 14.9 mm",
        "Link":
            "https://www.canon.co.uk/for_home/product_finder/cameras/digital_slr/eos_1300d/specification.html"
      },
      "kategori": "Camera",
    },
    {
      "name": "Macbook Pro 2020",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323203/Deus%20Vult%20MarketPlace/computer/Macbook_Pro_2020_iuuahl.png",
      "harga": 16694000,
      "spec": {
        "CPU": "CPU 8-core dengan 4 core performa dan 4 core efisiensi",
        "GPU": "GPU 10-core",
        "RAM": "8 GB",
        "Storage": "256 GB",
        "Link": "https://www.apple.com/id/macbook-pro-13/specs/",
      },
      "kategori": "Computer",
    },
  ];

  List<Map> get DiskonModel => this._DiskonModel;

  set DiskonModel(List<Map> value) {
    notifyListeners();
  }
}
