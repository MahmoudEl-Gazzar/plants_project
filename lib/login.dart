import 'package:flutter/material.dart';

int currentIndex = 0;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Sign Up',),
    Tab(text: 'Login'),
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(29.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 189.22,
                  width: 270.79,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage(
                        'assets/pictures/image (LoginScreenTop) .png',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Center(
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
                        child: Image.asset('assets/pictures/splash screen.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

                TabBar(
                  controller: _tabController,
                  tabs: myTabs,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.green,
                  onTap: (index) {
                    setState(() {
                      currentIndex = index;
                      //print(currentIndex);
                    });
                  },
                ),


              const SizedBox(
                height: 12,
              ),

              SizedBox(
                height: (currentIndex == 0) ? 555 : 555,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('First Name',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xFF6F6F6F),
                                          )),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      TextFormField(
                                        autofocus: false,
                                        // controller: fNameController,
                                        cursorColor: const Color(0xFF939393),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "please enter your first name";
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        decoration: InputDecoration(
                                          isDense: true, // important line
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  10, 28, 10, 0),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xFF939393),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                              color: Color(0xFF1ABC00),
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.name,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 17,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Last Name',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xFF6F6F6F),
                                          )),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      TextFormField(
                                        autofocus: false,
                                        // controller: fNameController,
                                        cursorColor: const Color(0xFF939393),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "please enter your Last Name";
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        decoration: InputDecoration(
                                          isDense: true, // important line
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  10, 28, 10, 0),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                              style: BorderStyle.solid,
                                              color: Color(0xFF939393),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: const BorderSide(
                                              color: Color(0xFF1ABC00),
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.name,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            const Text('E-mail',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6F6F),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              autofocus: false,
                              // controller: fNameController,
                              cursorColor: const Color(0xFF939393),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please enter your E-mail";
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 28, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xFF939393),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF1ABC00),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 19,
                            ),
                            const Text('Password',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6F6F),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              autofocus: false,
                              // controller: lNameController,
                              cursorColor: const Color(0xFF939393),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please enter your Password";
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 28, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xFF939393),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF1ABC00),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 19,
                            ),
                            const Text('Confirm Password',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6F6F),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              autofocus: false,
                              // controller: emailControllerRegister,
                              cursorColor: const Color(0xFF939393),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please confirm your password ";
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 28, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xFF939393),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF1ABC00),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 26.37,
                            ),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xff1ABC00),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 46, left: 45),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: const Color(0xff979797),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'or continue with',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff979797),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: const Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 23,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 46, left: 45),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Container(
                                  height: 50,
                                  width: 53,
                                  color: Colors.white,
                                  child: Image.asset(
                                    'assets/pictures/Google.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              InkWell(
                                child: Container(
                                  height: 50,
                                  width: 53,
                                  color: Colors.white,
                                  child: Image.asset('assets/pictures/facebook.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Email',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6F6F),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              autofocus: false,
                              // controller: fNameController,
                              cursorColor: const Color(0xFF939393),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please enter your Email";
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 28, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xFF939393),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF1ABC00),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 52.35,
                            ),

                            const Text('Password',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF6F6F6F),
                                )),

                            const SizedBox(
                              height: 5,
                            ),

                            TextFormField(
                              autofocus: false,
                              // controller: fNameController,
                              cursorColor: const Color(0xFF939393),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please enter your Password";
                                }
                                return null;
                              },
                              style: const TextStyle(
                                fontFamily: 'Roboto',
                              ),
                              decoration: InputDecoration(
                                isDense: true, // important line
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 28, 10, 0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xFF939393),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF1ABC00),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36.37,
                        ),
                        Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xff1ABC00),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 33.11,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 46,
                            left: 45,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: const Color(0xff979797),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'or continue with',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff979797),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: const Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 46, left: 45),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Container(
                                  height: 50,
                                  width: 53,
                                  color: Colors.white,
                                  child: Image.asset('assets/pictures/Google.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              InkWell(
                                child: Container(
                                  height: 50,
                                  width: 53,
                                  color: Colors.white,
                                  child: Image.asset('assets/pictures/facebook.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 189.22,
                  width: 270.79,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topLeft,
                      image: AssetImage(
                        'assets/pictures/image (LoginScreenBottom) .png',
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
