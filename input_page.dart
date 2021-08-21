import 'package:beklenenyasamsuresi/constants.dart';
import 'package:beklenenyasamsuresi/result_page.dart';
import 'package:beklenenyasamsuresi/user_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_cinsiyet.dart';
import 'myContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double icilenSigara = 0;
  double yapilanSpor = 0;
  String? seciliCinsiyet;
  int boy = 170;
  int kg = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: boymetod(),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: kgmetod(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Haftada Kaç gün spor yapiyorsunuz?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${yapilanSpor.round()}',
                  style: kSayiStili,
                ),
                Slider(
                  min: 0,
                  max: 7,
                  value: yapilanSpor,
                  // divisions: 10,
                  // label: '$_duelCommandment',
                  onChanged: (double newValue) {
                    setState(() {
                      yapilanSpor = newValue;
                    });
                  },
                )
              ],
            )),
          ),
          Expanded(
            child: MyContainer(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Günde Kaç Sigara İçiyorsunuz?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${icilenSigara.round()}',
                  style: kSayiStili,
                ),
                Slider(
                  min: 0,
                  max: 30,
                  value: icilenSigara,
                  // divisions: 10,
                  // label: '$_duelCommandment',
                  onChanged: (double newValue) {
                    setState(() {
                      icilenSigara = newValue;
                    });
                  },
                )
              ],
            )),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                      seciliCinsiyet = 'KADIN';

                      //print('buton tıklandı');
                    },
                    child: MyContainer(
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.lightBlue
                          : Colors.white,
                      child: IconCinsiyeti(
                        cinsiyet: 'KADIN',
                        icon: FontAwesomeIcons.venus,
                      ),
                      //   renk: Colors.yellow,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    //BASMA DEDEKTORU YAPARAK BASILIRSA NE OLUR YAPILMASI
                    onTap: () {
                      setState(() {});
                      seciliCinsiyet = 'ERKEK';

                      //print('buton tıklandı');
                    },
                    child: MyContainer(
                      renk: seciliCinsiyet ==
                              'ERKEK' //ERKEK SECİLİR İSE LİGHT SECİLMEZSE BEYAZ
                          ? Colors.lightBlue
                          : Colors.white,
                      child: IconCinsiyeti(
                        cinsiyet: 'ERKEK',
                        icon: FontAwesomeIcons.marsStroke,
                      ),
                      //   renk: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(UserData(
                                kg: kg,
                                boy: boy,
                                seciliCinsiyet: seciliCinsiyet,
                              ))));
                },
                child: Text(
                  'Hesap',
                  style: kMetinStili,
                )),
          )
        ],
      ),
      /*  floatingActionButton: Theme(
        //floating action butonu wigdet secerek theme içine aldım ve arkaplan ekledim
        data: ThemeData(accentColor: Colors.brown),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),*/
    );
  }

  Row boymetod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              'BOY',
              style: kMetinStili,
            )),
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              '$boy',
              style: kSayiStili,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                ),
                onPressed: () {
                  setState(() {
                    boy++;
                  });
                  print('bas');
                }),
            SizedBox(width: 15),
            OutlineButton(
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 10,
                ),
                onPressed: () {
                  setState(() {
                    boy--;
                  });
                  print('bas');
                }),
          ],
        ),
      ],
    );
  }

  Row kgmetod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              'KG',
              style: kMetinStili,
            )),
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              '$kg',
              style: kSayiStili,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                ),
                onPressed: () {
                  setState(() {
                    kg++;
                  });
                  print('bas');
                }),
            SizedBox(width: 15),
            OutlineButton(
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 10,
                ),
                onPressed: () {
                  setState(() {
                    kg--;
                  });
                  print('bas');
                }),
          ],
        ),
      ],
    );
  }
}
