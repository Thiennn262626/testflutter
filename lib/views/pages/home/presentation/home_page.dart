import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/gen/assets.gen.dart';
import 'package:testflutter/views/pages/home/widgets/product_item.dart';
import 'package:testflutter/views/pages/home/widgets/section_container.dart';
import 'package:testflutter/views/pages/home/widgets/vendor_item.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _showSearch = false;
  int _currentSlideIndex = 0; // Thêm biến này để lưu chỉ số slide hiện tại

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset > 50 && !_showSearch) {
      setState(() => _showSearch = true);
    } else if (_scrollController.offset <= 50 && _showSearch) {
      setState(() => _showSearch = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFFD5262B),
            pinned: true,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: _showSearch
                  ? const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 290,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'nRetail',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
              // background: ClipPath(
              //   clipper: CustomCurveClipper(),
              //   child: Container(
              //     color: Colors.black, // Màu nền cho SliverAppBar
              //   ),
              // ),
            ),
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {}),
              badges.Badge(
                badgeContent: Text(
                  '1'.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                position: badges.BadgePosition.topEnd(top: -5, end: 0),
              ),
            ],
          ),
          if (!_showSearch)
            SliverToBoxAdapter(
              child: Container(
                height: 60,
                color: const Color(0xFFD5262B),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // Carousel
          SliverToBoxAdapter(
            child: Stack(
              children: [
                // Hình ảnh nền
                Positioned.fill(
                  child: Image.asset(
                    Assets.icons.bgHeader.path,
                    fit: BoxFit.fill,
                  ),
                ),
                // Carousel Slider
                Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 120.0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentSlideIndex =
                                index; // Cập nhật slide hiện tại
                          });
                        },
                      ),
                      items: [1, 2, 3].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 16, 16, 10),
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://d3design.vn/uploads/Anh_bia_summer_sale_holiday_podium_display_on_yellow_background.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    // Circle Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [1, 2, 3].map((url) {
                        int index = [1, 2, 3].indexOf(url);
                        return Container(
                          width: 16.0,
                          height: 2.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentSlideIndex == index
                                ? Color(0xFFD5262B)
                                : Color(0xFFD8D8D8),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 5,
              color: Colors.grey[300],
            ),
          ),
          SliverToBoxAdapter(
            child: SectionContainer(
              title: 'CONNECTED VENDORS',
              seeAll: () => {},
              child: Container(
                height: 90,
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 60),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const VendorItem(
                        image:
                            'https://manhtuongmedia.com/wp-content/uploads/2022/08/cac-cong-ty-truyen-thong-1.jpg');
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 5,
              color: Colors.grey[300],
            ),
          ),
          SliverToBoxAdapter(
            child: SectionContainer(
              title: 'BOUGHT PRODUCTS',
              seeAll: () => {},
              child: Container(
                height: 300,
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 100),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.2, // Tỉ lệ chiều rộng so với chiều cao
                  ),
                  scrollDirection: Axis.horizontal, // Cuộn ngang
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ProductItem(
                      productName: 'Carefree Breathable 40 .4123',
                      image:
                          'https://www.myporter.shop/media/catalog/product/8/8/8850007331469_1.jpg',
                      productPrice: '86.60',
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
