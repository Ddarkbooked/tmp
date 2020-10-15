import 'package:flutter/material.dart';
import 'package:tmp/presentation/util/colors.dart';

class PenaltyPage extends StatefulWidget {
  @override
  _PenaltyPageState createState() => _PenaltyPageState();
}

class _PenaltyPageState extends State<PenaltyPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text(
          'Штраф',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        body: ListView(
          primary: true,
          padding: EdgeInsets.all(16.0),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: lightBlue,
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '500 P',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      Text(
                        '12 мая 2019, 13:49',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 28.0)),
                            backgroundColor:
                                MaterialStateProperty.all(lightGreen),
                            elevation: MaterialStateProperty.all(0.0),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Оплачено',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  Text('Превышение скорости от 20 до 40 км/ч',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]))
                ],
              ),
            ),
            SizedBox(height: 24),
            RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Фото ',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: '2',
                      style: TextStyle(fontSize: 16.0, color: Colors.grey))
                ])),
            SizedBox(height: 8.0),
            GridView.count(
              childAspectRatio: 16.0 / 10.0,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(
                  2,
                  (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/c/c5/BTCC_Brands06_PaddockHill.jpg',
                        fit: BoxFit.cover,
                      ))),
            ),
            ..._buildTitleAddition('Адрес', 'Москва, Новоданиловская наб.'),
            SizedBox(height: 8.0),
            AspectRatio(
              aspectRatio: 16.0 / 6.0,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'http://news.flarus.ru/pix.php?pid=5358',
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 24),
            ..._buildTitleAddition('Статья КоАП', '12.9 часть 2'),
            SizedBox(height: 24),
            ..._buildTitleAddition('Описание',
                'Превышение установленной скорости движения ТС на величину более 20, но не более 40 километров в час.'),
            SizedBox(height: 24),
            ..._buildTitleAddition(
                'Подразделение ГИБДД', 'УГИБДД ГУ МВД России по г. Москве'),
            SizedBox(height: 24),
            ..._buildTitleAddition('Номер постановления', '187219598321690234'),
            SizedBox(height: 24),
            ..._buildTitleAddition('Дата постановления', '22 окт. 2019'),
            SizedBox(height: 24),
            ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.0)),
                    elevation: MaterialStateProperty.all(2),
                    shadowColor: MaterialStateProperty.all(Colors.black54),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[600])),
                onPressed: () {},
                child: Text('Оплатить',
                    style: TextStyle(
                      fontSize: 16.0,
                    ))),
            SizedBox(height: 24)
          ],
        ),
      );

  List<Widget> _buildTitleAddition(String title, String addition) => [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 8.0),
        Text(addition,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black))
      ];
}
