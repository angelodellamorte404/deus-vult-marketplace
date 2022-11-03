import 'package:flutter/cupertino.dart';

class RekomendasiModelClass extends ChangeNotifier {
  List<Map> _rekomendasi = [
    {
      "name": "Keyboard Steelseries Apex 5",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323189/Deus%20Vult%20MarketPlace/accessories/Steelseries_Apex_5_fj07pv.png",
      "harga": 1834731.09,
      "spec": {
        "Height": "3.7 cm",
        "Width": "44.4cm",
        "Depth": "14.1 cm",
        "Weight": "0.900kg",
        "Link":
            "https://www.rtings.com/keyboard/reviews/steelseries/apex-5-hybrid-mechanical-gaming-keyboard",
      },
      "kategori": "Accessories",
    },
    {
      "name": "Sony ZV-1",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323199/Deus%20Vult%20MarketPlace/camera/Sony_ZV-1_celwrg.png",
      "harga": 10698000,
      "spec": {
        "Sensor Type":
            "1.0-type (13.2mm x 8.8mm) Exmor RS CMOS sensor, aspect ratio 3:2",
        "Number of Pixels (Effective)": "Approx. 20.1 Megapixels",
        "Lens Type":
            "ZEISS Vario-Sonnar T* Lens, 10 elements in 9 groups (9 aspheric elements including AA lens)",
        "Optical Zoom": "2.7x",
        "F-Number (Maximum Aperture)": "F1.8 (W) - 2.8 (T)",
        "Screen Type":
            "7.5cm (3.0 type) (4:3) / 921,600 dots / Xtra Fine / TFT LCD",
        "Flash Mode": "Auto / Flash On / Slow Synchro / Rear Sync / Flash Off",
      },
      "kategori": "Camera",
    },
    {
      "name": "MSI Modern 14",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323193/Deus%20Vult%20MarketPlace/computer/MSI_Modern_14_jqsvwm.png",
      "harga": 9300000,
      "spec": {},
      "kategori": "Computer",
    },
    {
      "name": "Arashi AR 118 SDW Kipas Angin 3in1 18 inch",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323157/Deus%20Vult%20MarketPlace/kipas%20angin/Arashi_AR_118_SDW_Kipas_Angin_3in1_18_inch_bmsyya.png",
      "harga": 255000,
      "spec": {},
      "kategori": "Kipas Angin",
    },
    {
      "name": "MESIN CUCI TABUNG KG PORTABLE TOP LOADING ARASHI AWM 451A",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323162/Deus%20Vult%20MarketPlace/mesin%20cuci/MESIN_CUCI_1_TABUNG_4.5_KG_PORTABLE_TOP_LOADING_ARASHI_AWM_451A_eas1vb.png",
      "harga": 615000,
      "spec": {},
      "kategori": "Mesin Cuci",
    },
    {
      "name": "Vivo T1 Pro 5G",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323169/Deus%20Vult%20MarketPlace/smartphones/Vivo_T1_Pro_5G_a6qqtb.png",
      "harga": 3130000,
      "spec": {},
      "kategori": "Smartphone",
    },
  ];
  List<Map> get rekomendasi => this._rekomendasi;

  set rekomendasi(final value) {
    this._rekomendasi = value;
    notifyListeners();
  }
}
