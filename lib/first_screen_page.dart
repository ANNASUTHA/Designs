import 'package:design/post_page.dart';
import 'package:design/search_page.dart';
import 'package:flutter/material.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key}) : super(key: key);

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF539972), Color(0x002298c0)])),
          child: _scaffoldBody(context)),
    );
  }

  Widget _scaffoldBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _home(),
          _titleWidget(context),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300.0,
            color: Colors.transparent,
            padding: const EdgeInsets.all(20),
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    )),
                child: _statusWidget()),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person_search,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ("Search by Id"),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.panorama_rounded,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ("My Properties"),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.request_quote_outlined,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ("My Requirements"),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.document_scanner_rounded,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ("GAR Requirements"),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notifications_active_rounded,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ("Notifications"),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.contacts_outlined,
                      color: Colors.blue.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      ("Important Contact"),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _statusWidget() {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        _status(),
        const SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_companies(), _agents(), _apartments()],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_houses(), _lands(), _offices()],
        ),
      ],
    );
  }

  Widget _companies() {
    return Column(
      children: [
        Image.asset(
          "assets/flat.png",
          height: 30,
          width: 30,
        ),
        Text(
          ("Companies"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
        Text(
          ("42"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _agents() {
    return Column(
      children: [
        Image.asset(
          "assets/employee.png",
          height: 30,
          width: 30,
        ),
        Text(
          ("Agents"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
        Text(
          ("45"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _apartments() {
    return Column(
      children: [
        Image.asset(
          "assets/flat.png",
          height: 30,
          width: 30,
        ),
        Text(
          ("Apartment"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
        Text(
          ("1357"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _houses() {
    return Column(
      children: [
        Image.asset(
          "assets/house.png",
          height: 30,
          width: 30,
        ),
        Text(
          ("Houses"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
        Text(
          ("326"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _lands() {
    return Column(
      children: [
        Image.asset(
          "assets/location-pin.png",
          height: 30,
          width: 30,
        ),
        Text(
          ("Lands"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
        Text(
          ("124"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _offices() {
    return Column(
      children: [
        Image.asset(
          "assets/office-building.png",
          height: 30,
          width: 30,
        ),
        Text(
          ("Offices"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
        Text(
          ("222"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _titleWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _postWidget(),
        _welcomeText(),
        _searchView(),
      ],
    );
  }

  Widget _postWidget() {
    return Column(
      children:  [
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PostPage()),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Text(
          ("Post"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _welcomeText() {
    return Column(
      children: const [
        Text(
          ("Welcome"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        Text(
          ("TeamAasma"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _searchView() {
    return Column(
      children:  [
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          },
          child: const Icon(
            Icons.search_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Text(
          ("Search"),
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _home() {
    return Container(
      width: size.width,
      height: 90,
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            ("RC RealtorConnet"),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                letterSpacing: .5,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _status() {
    return Text(
      ("RC RealtorConnet"),
      textAlign: TextAlign.center,
      softWrap: true,
      style: TextStyle(
        color: Colors.blue.shade800,
        fontSize: 21,
      ),
    );
  }
}
