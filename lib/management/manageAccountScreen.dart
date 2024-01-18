import 'package:flutter/material.dart';
import 'package:ui/management/component/manageAppbar.dart';


class ManageAccountScreen extends StatefulWidget {
  const ManageAccountScreen({super.key});

  @override
  State<ManageAccountScreen> createState() => _ManageAccountScreenState();
}

class _ManageAccountScreenState extends State<ManageAccountScreen> {

  List<Account> accountList = [
      
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: manageAppbar(manageTitle: '거래처 관리 시스템'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: accountList.length,
          itemBuilder: (BuildContext context, int index){
            return Container();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          viewAccountAlert();

        },

      ),
    );
  }


  // 거래처 등록 알림창
  addAccountAlert(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('거래처 등록'),

      );
    });
  }

  // 거래처 수정 알림창
  modifyAccountAlert(){
    showDialog(context: context, builder: (context){
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog();
      });
    });
  }


  //거래처 조회 알림창
  viewAccountAlert(){
    showDialog(context: context, builder: (context){
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
            title: Text('거래처 조회'), // 여기에 거래처 이름 넣기
            content: Container(
              width: MediaQuery.of(context).size.width-50.0,
              height: MediaQuery.of(context).size.height-50.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text('거래처 코드(ID)'),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            height: 45.0,
                            width: 100.0,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder()
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          )
                        ],
                      )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    SizedBox(height: 5.0,),
                    Divider(thickness: 1, height: 1, color: Colors.grey,),
                    SizedBox(height: 5.0,),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    SizedBox(height: 5.0,),
                    Divider(thickness: 1, height: 1, color: Colors.grey,),
                    SizedBox(height: 5.0,),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        child: Row(
                          children: [
                            Text('거래처 코드(ID)'),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 45.0,
                              width: 100.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                ),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              )
            ),
          actions: [
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('닫기'))
          ],
          );
        });
      });
  }
}

class Account{
  Account({
    required String accountId, // 데이터베이스 고유 번호
    required String businessId, // 사업자 등록번호
    required String name, // 상호(이름)
    required String representative, // 대표 이름
    required String typeOfBusiness, // 업태
    required String cateOfBusiness, // 업종
    required int loan, // 여신 한도
    required String staff, // 거래처 담당 직원
    required String accountStaff // 거래처 담당자 이름 or 번호
});

}
