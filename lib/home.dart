import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'All',),
    Tab(text: 'Plants'),
    Tab(text: 'Seeds'),
    Tab(text: 'Tools'),
  ];
  late TabController _tabsController;

  @override
  void initState() {
    super.initState();
    _tabsController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 59,
            ),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                const Text(
                  'La Vie',
                  style: TextStyle(
                    fontSize: 27,
                    fontFamily: 'meddon',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: Image.asset('pictures/splash screen.png'),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: const Color(0xffF8F8F8),
                ),
                padding: const EdgeInsets.all(
                  40.0,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0Xff979797),
                    ),
                    const SizedBox(
                      width: 17.54,
                    ),
                    const Text(
                      'Search',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0Xff979797),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xff1ABC00),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 17.54,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),

          TabBar(
            controller: _tabsController,
            tabs: myTabs,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            splashBorderRadius: BorderRadius.circular(10),
            labelColor: Colors.green,

          ),


          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
