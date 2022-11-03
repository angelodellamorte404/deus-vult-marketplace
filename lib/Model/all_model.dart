import 'package:flutter/cupertino.dart';

class AllModelClass extends ChangeNotifier {
  List<Map> _allModel = [
    {
      "name": "Keyboard Steelseries Apex 5",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323189/Deus%20Vult%20MarketPlace/accessories/Steelseries_Apex_5_fj07pv.png",
      "harga": 1834731.09,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405240/Deus%20Vult%20MarketPlace/Spesifikasi/Mouse_Razer_Viper_Ultimate_Wireless_omsano.png",
      "kategori": "Accessories",
    },
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
      "name": "SVEN Mousepad Gaming",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323182/Deus%20Vult%20MarketPlace/accessories/SVEN_Mousepad_Gaming_inkj8p.png",
      "harga": 15000.00,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405343/Deus%20Vult%20MarketPlace/Spesifikasi/SVEN_Mousepad_Gaming_vjrwf9.jpg",
      "kategori": "Accessories",
    },
    {
      "name": "Headphone Sonic Gearphone 5",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323178/Deus%20Vult%20MarketPlace/accessories/Sonic_Gearphone_5_smkyqy.png",
      "harga": 151700,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405353/Deus%20Vult%20MarketPlace/Spesifikasi/Headphone_Sonic_Gearphone_5_ath8dn.jpg",
      "kategori": "Accessories",
    },
    {
      "name": "Mouse Razer Viper Ultimate Wireless",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323178/Deus%20Vult%20MarketPlace/accessories/Razer_Viper_Ultimate_Wireless_oicp6n.png",
      "harga": 2217151.50,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405358/Deus%20Vult%20MarketPlace/Spesifikasi/Mouse_Razer_Viper_Ultimate_Wireless_zsv6bb.png",
      "kategori": "Accessories",
    },
    {
      "name": "Nikon D3500",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323204/Deus%20Vult%20MarketPlace/camera/Nikon_D3500_w0mtuf.png",
      "harga": 4750000,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405373/Deus%20Vult%20MarketPlace/Spesifikasi/Nikon_D3500_sjaomn.png",
      "kategori": "Camera",
    },
    {
      "name": "Sony ZV-1",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323199/Deus%20Vult%20MarketPlace/camera/Sony_ZV-1_celwrg.png",
      "harga": 10698000,
      "spec":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665405679/Deus%20Vult%20MarketPlace/Spesifikasi/Sony_ZV-1_dmb9tu.png",
      "kategori": "Camera",
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
      "name": "Sony Handycam",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323187/Deus%20Vult%20MarketPlace/camera/Sony_Handycam_jiqfqi.png",
      "harga": 3229000,
      "spec": {
        "Sensor Type": "1/5.8 type(3.1mm) back-illuminated Exmor R CMOS Sensor",
        "Processor": "BIONZ X image processor",
        "Lens Type": "ZEISS Vario-Tessar",
        "Optical Zoom": "30x",
        "Screen Type":
            "SCREEN TYPE 6.7cm(2.7 type) Clear Photo LCD display (230 400 dots) Wide(16:9)",
        "Link":
            "https://www.sony.co.id/en/electronics/handycam-camcorders/hdr-cx405/specifications",
      },
      "kategori": "Camera",
    },
    {
      "name": "Camera Instax Mini 11",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323186/Deus%20Vult%20MarketPlace/camera/Camera_Instax_Mini_11_p7xhbi.png",
      "harga": 1000000,
      "spec": {
        "Lens": "2 components, 2 elements, f = 60mm, 1:12.7",
        "Weight": "293g (without batteries, strap, and film)",
        "Link":
            "https://www.fujifilm.com/id/en/consumer/instax/cameras/mini11/specifications",
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
    {
      "name": "Razer Blade Pro 17",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323201/Deus%20Vult%20MarketPlace/computer/Razer_Blade_Pro_17_f5iho8.png",
      "harga": 31800000,
      "spec": {
        "Prosesor": "Core i7 10875H",
        "RAM": "16 GB",
        "Penyimpanan": "512 GB SSD",
        "Ukuran Layar": "17.3 inch",
        "Link": "https://www.pricebook.co.id/Razer-Blade-Pro-17/2/PD_00094669",
      },
      "kategori": "Computer",
    },
    {
      "name": "Acer Aspire 5",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323201/Deus%20Vult%20MarketPlace/computer/Acer_Aspire_5_v1mhcv.png",
      "harga": 6550000,
      "spec": {
        "Display":
            "14.0 inch HD display with IPS(In-Plane Switching) technology",
        "Processor":
            "Intel® Core™ i5-10210U processor (6 MB Smart Cache, up to 4.2 GHz)",
        "Memory": "4GB DDR4",
        "Hard Drive": "512 GB SSD",
        "Graphics": " NVIDIA® GeForce® MX250 2GB DDR5",
        "Link":
            "https://pemmz.com/acer-aspire-5-a514-52g-i5-10210u-512gb-4gb-silver.html",
      },
      "kategori": "Computer",
    },
    {
      "name": "Asus Vivobook 14",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323198/Deus%20Vult%20MarketPlace/computer/Asus_Vivobook_14_zykdhv.png",
      "harga": 13922000,
      "spec": {
        "Processor":
            "Intel® Core™ i3-8130U Processor 2.2 GHz (4M Cache, up to 3.4 GHz, 2 cores)",
        "Graphics": "Intel® UHD Graphics 620, 2GB GDDR5",
        "Display":
            "14.0-inch, HD (1366 x 768) 16:9 aspect ratio, LED Backlit, 200nits, 45% NTSC color gamut, Anti-glare display, Screen-to-body ratio: 87%",
        "Memory": "4GB DDR4 on board, Total system memory upgradeable to:12GB",
        "Storage": "256GB M.2 SATA SSD",
        "Link":
            "https://www.asus.com/Laptops/For-Home/Vivobook/Vivobook-14-X412/techspec/",
      },
      "kategori": "Computer",
    },
    {
      "name": "MSI Modern 14",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323193/Deus%20Vult%20MarketPlace/computer/MSI_Modern_14_jqsvwm.png",
      "harga": 9300000,
      "spec": {
        "CPU": "11th Gen. Intel® Core™ i7 U-Processor",
        "OS":
            "Windows 10 Home (MSI recommends Windows 11 Pro for business.) Windows 10 Pro FREE Upgrade to Windows 11*",
        "Graphics": "GeForce® MX450 with 2GB GDDR5",
        "Memory": "32 GB",
        "Storage": "M.2 SSD slot (NVME PCIe Gen4)",
        "Link":
            "https://id.msi.com/Business-Productivity/Modern-14-B11X/Specification",
      },
      "kategori": "Computer",
    },
    {
      "name": "Steering Wheel Logitech G29",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323204/Deus%20Vult%20MarketPlace/gaming/Steering_Wheel_Logitech_g29_un9ifz.png",
      "harga": 4368000,
      "spec": {},
      "kategori": "Gaming",
    },
    {
      "name": "Xbox X Series",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323204/Deus%20Vult%20MarketPlace/gaming/Xbox_X_Series_cfsvzg.png",
      "harga": 7789000,
      "spec": {},
      "kategori": "Gaming",
    },
    {
      "name": "PlayStation 5",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323203/Deus%20Vult%20MarketPlace/gaming/PlayStation_5_zlptad.png",
      "harga": 8600000,
      "spec": {},
      "kategori": "Gaming",
    },
    {
      "name": "Nintendo Switch",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323203/Deus%20Vult%20MarketPlace/gaming/Nintendo_Switch_pzl4oa.png",
      "harga": 3712000,
      "spec": {},
      "kategori": "Gaming",
    },
    {
      "name": "Oculus Quest 2",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323191/Deus%20Vult%20MarketPlace/gaming/Oculus_Quest_2_lcnyyi.png",
      "harga": 4762000,
      "spec": {},
      "kategori": "Gaming",
    },
    {
      "name": "Sharp PJ A26MY B Air Cooler",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323158/Deus%20Vult%20MarketPlace/kipas%20angin/Sharp_PJ-A26MY-B_Air_Cooler_dpim9a.png",
      "harga": 740000,
      "spec": {},
      "kategori": "Kipas Angin",
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
      "name": "Arashi Helifan AR 28 Kipas Angin Gantung 15 Watt",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323157/Deus%20Vult%20MarketPlace/kipas%20angin/Arashi_Helifan_AR-28_Kipas_Angin_Gantung_-_15_Watt_g9zual.png",
      "harga": 50000,
      "spec": {},
      "kategori": "Kipas Angin",
    },
    {
      "name": "SANEX DESK FAN KIPAS ANGIN FD 1287 FD 1287 12 INCH",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323157/Deus%20Vult%20MarketPlace/kipas%20angin/SANEX_DESK_FAN_KIPAS_ANGIN_FD-1287_FD_1287_12_INCH_xj11co.png",
      "harga": 134000,
      "spec": {},
      "kategori": "Kipas Angin",
    },
    {
      "name": "KIPAS ANGIN MIYAKO kas 1607",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323157/Deus%20Vult%20MarketPlace/kipas%20angin/KIPAS_ANGIN_MIYAKO_kas_1607_elcurs.png",
      "harga": 300000,
      "spec": {},
      "kategori": "Kipas Angin",
    },
    {
      "name": "Mesin Cuci Samsung Front Load 8Kg",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323163/Deus%20Vult%20MarketPlace/mesin%20cuci/Mesin_Cuci_Samsung_Front_Load_8kg_m7hh7z.png",
      "harga": 5949000,
      "spec": {},
      "kategori": "Mesin Cuci",
    },
    {
      "name": "POLYTRON Mesin Cuci Tabung Samba Series KG PWM 8363P",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323163/Deus%20Vult%20MarketPlace/mesin%20cuci/POLYTRON_Mesin_Cuci_2_Tabung_Samba_Series_8_KG_-_PWM_8363P_m9hubm.png",
      "harga": 1500000,
      "spec": {},
      "kategori": "Mesin Cuci",
    },
    {
      "name": "MESIN CUCI SHARP ES-T90MW 8Kg",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323162/Deus%20Vult%20MarketPlace/mesin%20cuci/MESIN_CUCI_SHARP_ES-T90MW_8KG_bs819h.png",
      "harga": 1300000,
      "spec": {},
      "kategori": "Mesin Cuci",
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
      "name": "MITO Mesin Cuci Portable Wm-1",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323161/Deus%20Vult%20MarketPlace/mesin%20cuci/MITO_Mesin_Cuci_Portable_WM-1_xvms3q.png",
      "harga": 600000,
      "spec": {},
      "kategori": "Mesin Cuci",
    },
    {
      "name": "Setrika Miyako El 1000M",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323173/Deus%20Vult%20MarketPlace/setrika/Setrika_Miyako_EI_-_1000_M_zwybjj.png",
      "harga": 195000,
      "spec": {},
      "kategori": "Setrika",
    },
    {
      "name": "Setrika Maspion HA 110",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323173/Deus%20Vult%20MarketPlace/setrika/SETRIKA_MASPION_HA_-_110_dq45ak.png",
      "harga": 195000,
      "spec": {},
      "kategori": "Setrika",
    },
    {
      "name": "PHILIPS Setrika Listrik HD 1172 Classic Dry Iron",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323167/Deus%20Vult%20MarketPlace/setrika/PHILIPS_Setrika_Listrik_HD_1172_Classic_Dry_Iron_tyn5b3.png",
      "harga": 120000,
      "spec": {},
      "kategori": "Setrika",
    },
    {
      "name": "Philips 3000 Series Steam Iron",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323162/Deus%20Vult%20MarketPlace/setrika/Philips_3000_Series_Steam_Iron_ojjrn0.png",
      "harga": 270000,
      "spec": {},
      "kategori": "Setrika",
    },
    {
      "name": "FeatherLight Setrika Uap",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323162/Deus%20Vult%20MarketPlace/setrika/FeatherLight_Setrika_Uap_kyoiss.png",
      "harga": 1500000,
      "spec": {},
      "kategori": "Setrika",
    },
    {
      "name": "Xiaomi 11T Pro",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323169/Deus%20Vult%20MarketPlace/smartphones/Xiaomi_11T_Pro_cwz28y.png",
      "harga": 7324245.30,
      "spec": {},
      "kategori": "Smartphone",
    },
    {
      "name": "Vivo T1 Pro 5G",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323169/Deus%20Vult%20MarketPlace/smartphones/Vivo_T1_Pro_5G_a6qqtb.png",
      "harga": 3130000,
      "spec": {},
      "kategori": "Smartphone",
    },
    {
      "name": "Samsung Galaxy S22 Plus",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323169/Deus%20Vult%20MarketPlace/smartphones/Samsung_Galaxy_S22_Plus_v96omz.png",
      "harga": 13500000,
      "spec": {},
      "kategori": "Smartphone",
    },
    {
      "name": "OPPO Find X5 Pro",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323169/Deus%20Vult%20MarketPlace/smartphones/OPPO_FIND_X5_Pro_yy9e79.png",
      "harga": 14954304.60,
      "spec": {},
      "kategori": "Smartphone",
    },
    {
      "name": "Apple Iphone 11 Pro Max",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323166/Deus%20Vult%20MarketPlace/smartphones/Apple_iPhone_11_Pro_Max_512GB_hqdny2.png",
      "harga": 11790000,
      "spec": {},
      "kategori": "Smartphone",
    },
    {
      "name": "TCL LED 4K UHD ANDROID TV",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323184/Deus%20Vult%20MarketPlace/tv/TCL_LED_4K_UHD_ANDROID_TV_43P615_SMART_ANDROID_10.0_zxdjq9.png",
      "harga": 5000000,
      "spec": {},
      "kategori": "Television",
    },
    {
      "name": "65 inch Class S95B OLED 4K Smart TV 2022",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323183/Deus%20Vult%20MarketPlace/tv/65_Class_S95B_OLED_4K_Smart_TV_2022_afyvfk.png",
      "harga": 12000000,
      "spec": {},
      "kategori": "Television",
    },
    {
      "name": "LG 43 inch 4K Smart UHD TV",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323181/Deus%20Vult%20MarketPlace/tv/LG_43_inch_4K_Smart_UHD_TV_43UP7500_gcthn1.png",
      "harga": 5500000,
      "spec": {},
      "kategori": "Television",
    },
    {
      "name": "Realme Smart TV 32 inch",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323175/Deus%20Vult%20MarketPlace/tv/REALME_SMART_TV_32_INCH_TV_43_INCH_olxqn2.png",
      "harga": 2700000,
      "spec": {},
      "kategori": "Television",
    },
    {
      "name": "POLYTRON 32 inch LED TV",
      "image":
          "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665323173/Deus%20Vult%20MarketPlace/tv/POLYTRON_32_Inch_LED_TV_PLD_32S1503_ttfslq.png",
      "harga": 1700000,
      "spec": {},
      "kategori": "Television",
    },
  ];

  List<Map> get allModel => _allModel;

  set setModel(val) {
    notifyListeners();
  }
}
