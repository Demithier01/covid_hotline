import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "สายด่วน",
          ),
          backgroundColor: Color.fromARGB(255, 255, 97, 97),
        ),
        body: Container(
          // พื้นหลัง
          padding: EdgeInsets.all(8.0),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xfff76666), Color(0xffedc4c4)],
              stops: <double>[0.083, 0.813],
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(62, 215, 120, 120),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //ปรึกษาสุขภาพจิต
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 70,
                              height: 70,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                    'https://gdcatalog.go.th/assets/images/organization_logo/sukkapabjitt.png'),
                              )),
                          SizedBox(
                            width:25,
                          ),
                          Text(
                            'ปรึกษาสุขภาพจิต',
                            style: TextStyle(
                                fontSize:14,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NotoSansThai",
                                color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1323",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1323',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //สอบถามข้อมูลโควิด
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Seal_of_the_Office_of_the_Prime_Minister_of_Thailand.svg/1200px-Seal_of_the_Office_of_the_Prime_Minister_of_Thailand.svg.png',
                                  width: 100,
                                  height: 150,
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'สอบถามข้อมูลโควิด-19',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1111",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1111',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //แจ้งป่วยฉุกเฉิน
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  'https://www.logo-th.com/wp-content/uploads/2018/12/%E0%B8%AA%E0%B8%96%E0%B8%B2%E0%B8%9A%E0%B8%B1%E0%B8%99%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%9E%E0%B8%97%E0%B8%A2%E0%B9%8C%E0%B8%89%E0%B8%B8%E0%B8%81%E0%B9%80%E0%B8%89%E0%B8%B4%E0%B8%99%E0%B9%81%E0%B8%AB%E0%B9%88%E0%B8%87%E0%B8%8A%E0%B8%B2%E0%B8%95%E0%B8%B4.jpg',
                                ),
                              )),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'แจ้งป่วยฉุกเฉิน',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1669",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1669',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                //ความรู้ด้านสุขภาพ
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                    'https://ddc.moph.go.th/img/logo_web.png'),
                              )),
                          SizedBox(
                            width:10,
                          ),
                          Text(
                            'สอบถามข้อมูลด้านสุขภาพ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1422",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1422',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //สอบถามสิทธิ์การรักษา
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  'https://yt3.googleusercontent.com/oJgQqE-HLakC2Yi4C0IJmnSztrRwp5hRRScu38ld-imKBl68WzsDS6kNDLVIXJ2JeWb64MJ1Iw=s900-c-k-c0x00ffffff-no-rj',
                                ),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'สอบถามสิทธิ์การรักษา',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1330",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1330',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //เช็คสิทธิ์ประกันสังคม
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://logo-th.com/wp-content/uploads/2019/07/%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B1%E0%B8%87%E0%B8%84%E0%B8%A1.jpg',
                                ),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'เช็คสิทธิ์ประกันสังคม',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1506",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1506',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //.ให้คำปรึกษาผู้ป่วยโควิด-19
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 90, 90),
                      borderRadius: BorderRadius.circular(20)),
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              width:60,
                              height:60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://mlth-s3.s3.ap-southeast-1.amazonaws.com/uploads/news/thumbnails/WR6yf1641520985.png',
                                ),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'ให้คำปรึกษาผู้ป่วยโควิด-19',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri(
                            scheme: 'tel',
                            path: "1668",
                          );
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            print('cannot launch this url');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 143, 21)),
                        child: const Text(
                          '1668',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  SafeGoogleFont(String s, {required int fontSize, required Color color}) {}
}
