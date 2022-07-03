import 'package:emergency_number_ep1/models/number_list.dart';
import 'package:emergency_number_ep1/views/detail_ui.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<NumberList> NumberlistInfo = [
    NumberList(
      name: 'เหตุด่วนเหตุร้าย',
      website: 'https://www.royalthaipolice.go.th/',
      facebook: 'royalthaipolice',
      mobile: '191',
      image: '1.png',
      lat: '13.7833',
      lng: '100.5167',
    ),
    NumberList(
      name: 'แจ้งเหตุเพลิงไหม้',
      website: 'https://www.newtype.co.th/',
      facebook: 'numensth',
      mobile: '199',
      image: '2.png',
      lat: '13.6667',
      lng: '100.5333',
    ),
    NumberList(
      name: 'จส.100',
      website: 'https://www.js100.com/en/site/home/index',
      facebook: 'js100radio',
      mobile: '1137',
      image: '3.png',
      lat: '13.7083',
      lng: '100.4562',
    ),
    NumberList(
      name: 'แจ้งรถหาย',
      website: 'http://www.xn--72cb7b7bd3c8b4g3c.com/',
      facebook: 'stolen.cars.report',
      mobile: '1192',
      image: '4.png',
      lat: '13.7833',
      lng: '100.5167',
    ),
    NumberList(
      name: 'อุบัติเหตุบนทางด่วน',
      website: 'https://www.js100.com/en/site/home/index',
      facebook: 'js100radio',
      mobile: '1543',
      image: '5.png',
      lat: '13.7083',
      lng: '100.4562',
    ),
    NumberList(
      name: 'แพทย์ฉุกเฉิน',
      website: 'https://www.niems.go.th/1/?redirect=True&lang=TH',
      facebook: 'niem1669',
      mobile: '1669',
      image: '6.png',
      lat: '13.85581',
      lng: '100.49264',
    ),
    NumberList(
      name: 'ตำรวจทางหลวง',
      website: 'http://www.highway.police.go.th/home',
      facebook: 'highway1193',
      mobile: '1193',
      image: '7.png',
      lat: '13.5904452',
      lng: '100.4284185',
    ),
    NumberList(
      name: 'ร่วมด้วยช่วยกัน',
      website: 'https://www.rakbankerd.com/ruamduay.php',
      facebook: 'ruamduay',
      mobile: '1677',
      image: '8.png',
      lat: '13.5904452',
      lng: '100.4284185',
    ),
    NumberList(
      name: 'การประปานครหลวง',
      website: 'https://web.mwa.co.th/',
      facebook: 'MWAthailand',
      mobile: '1125',
      image: '9.png',
      lat: '13.5904452',
      lng: '100.4284185',
    ),
    NumberList(
      name: 'การไฟฟ้านครหลวง',
      website: 'https://www.mea.or.th/',
      facebook: 'METROPOLITAN.ELECTRICITY.AUTHORITY',
      mobile: '1130',
      image: '10.png',
      lat: '14.027868',
      lng: '100.645846',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนคอลเซ็นเตอร์',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/carphone.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.black,
                  );
                },
                itemCount: NumberlistInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: NumberlistInfo[index].name!,
                            website: NumberlistInfo[index].website!,
                            facebook: NumberlistInfo[index].facebook!,
                            mobile: NumberlistInfo[index].mobile!,
                            image: NumberlistInfo[index].image!,
                            lat: NumberlistInfo[index].lat!,
                            lng: NumberlistInfo[index].lng!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + NumberlistInfo[index].image!,
                    ),
                    title: Text(
                      NumberlistInfo[index].name!,
                    ),
                    subtitle: Text(
                      NumberlistInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
