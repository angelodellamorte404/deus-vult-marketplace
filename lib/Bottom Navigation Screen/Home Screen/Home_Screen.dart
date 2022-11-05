import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:code/Model/diskon_model.dart';
import 'package:code/Model/kategori_model_home.dart';
import 'package:code/Model/rekomendasi_model.dart';
import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Navigation/Kategori_Navigation.dart';

import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Provider/carousel_slider_provider.dart';
import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Provider/scroll_provider.dart';
import 'package:code/Screen/Product_Screen.dart';
import 'package:code/Widget.dart';
import 'package:code/main.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

final BlurLoading = "assets/image/loading.png";
final format = NumberFormat("#,##0.00", "en_US");

final kategoriModel = KategoriModelClass();
final rekomendasiModel = RekomendasiModelClass();
final diskonModel = DiskonModelClass();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ScrollController scrollProv = ScrollController();

  @override
  Widget build(BuildContext context) {
    final scrollProv = Provider.of<ScrollProvider>(context);

    return HomeContainer(
      gradient: true,
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          elevation: 0,
          bgColor: Colors.transparent,
          title: Image.network(
            "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1664288499/Deus%20Vult%20MarketPlace/deus_vult_ldopaf.png",
            width: 70,
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.zero,
              tooltip: "Cari Barang",
              onPressed: () =>
                  Navigator.pushNamed(context, "search_navigation"),
              icon: Icon(Iconsax.search_normal),
            ),
          ],
        ),
        body: SingleChildScrollView(
          controller: scrollProv.scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                _Jumbotron(),
                SizedBox(height: 30),

                // Kategori
                _Kategori(),
                SizedBox(height: 30),

                // Rekomendasi
                _Rekomendasi(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Jumbotron
class _Jumbotron extends StatelessWidget {
  const _Jumbotron({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Diskon 45%",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.5),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(.25),
                offset: Offset(0, 10),
                blurRadius: 16,
                spreadRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _CarouSlider(context),
              ),
              _DotIndicator(context),
            ],
          ),
        ),
      ],
    );
  }

  // CarouselSlider
  Widget _CarouSlider(BuildContext context) {
    final carouProv = Provider.of<CarouselSliderProvider>(context);

    Future<String> jumboImage(String imageUrl) async {
      var image = await NetworkImage(imageUrl);
      return image.url;
    }

    return CarouselSlider.builder(
      itemCount: diskonModel.DiskonModel.length,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) {
        var diskon = diskonModel.DiskonModel[index];

        return FutureBuilder(
          future: jumboImage(diskon['image']),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Image.network(
                snapshot.data.toString(),
                scale: 4,
                errorBuilder: (context, obj, stack) {
                  return Text("No Internet");
                },
                loadingBuilder:
                    (context, child, ImageChunkEvent? loadingProgess) {
                  if (loadingProgess == null) {
                    return MyInkWell(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          child,
                          Align(
                            child: Text(diskon['name'].toString()),
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductScreen(product: diskon),
                          ),
                        );
                      },
                    );
                  }
                  return Image.asset(BlurLoading);
                },
              );
            }
            return Image.asset(BlurLoading);
          },
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 5),
        onPageChanged: (int index, CarouselPageChangedReason reason) {
          carouProv.setIndex = index;
        },
      ),
    );
  }

  // Dot Indicator
  Widget _DotIndicator(BuildContext context) {
    final carouProv = Provider.of<CarouselSliderProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          width: 15,
          height: 5,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: carouProv.index == index
                ? primaryColor
                : Colors.grey.withOpacity(.5),
            borderRadius: BorderRadius.circular(16),
          ),
        );
      }),
    );
  }
}

class _Kategori extends StatelessWidget {
  const _Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kategori",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: List.generate(
              kategoriModel.kategoriModel.length,
              (index) {
                var kategori = kategoriModel.kategoriModel[index];
                return _Card(
                  context: context,
                  kategori: kategori,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _Card({
    required BuildContext context,
    required Map kategori,
  }) {
    return Material(
      child: MyInkWell(
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: kategori['image'],
              progressIndicatorBuilder: (context, url, progress) {
                return Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return Icon(Icons.error);
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(kategori["name"]),
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => KategoriNavigationScreen(
                kategori: kategori,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Rekomendasi extends StatelessWidget {
  const _Rekomendasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rekomendasi",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: .80,
            children: List.generate(
              rekomendasiModel.rekomendasi.length,
              (index) {
                var rekomendasi = rekomendasiModel.rekomendasi[index];
                return ProductCard(
                  context,
                  data: rekomendasi,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductScreen(product: rekomendasi),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
