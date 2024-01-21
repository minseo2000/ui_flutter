import 'dart:convert';
import 'dart:html' as html;
import 'dart:html';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ui/management/component/manageAppbar.dart';
import 'package:ui/serverEnv.dart';

class ManageItemScreen extends StatefulWidget {
  const ManageItemScreen({Key? key}) : super(key: key);

  @override
  State<ManageItemScreen> createState() => _ManageItemScreenState();
}

class _ManageItemScreenState extends State<ManageItemScreen> {

  html.File? _file;


  // 제조사 리스트
  List<String> manufactureList = ['atlas'];
  String selectedManufacture = 'atlas';

  // 업로드 할 이미지 리스트
  List<Uint8List> uploadImageList = [

  ];

  // 이미 등록되어 있는 상품 목록 리스트
  List<Item> items = [];

  // 위젯관련 리스트
  List<Widget> uploadImageWidget = [];
  List<Widget> itemListWidget = [];




  @override
  void initState(){

  }

  @override
  Widget build(BuildContext context) {

    uploadImageWidget = [];

    for(int i=0;i<uploadImageList.length;i++){
      uploadImageWidget.add(
          Container(
            margin: EdgeInsets.all(20.0),
            width: 250.0,
            height: 250.0,
            color: Colors.lightBlueAccent,
            child: Image.memory(uploadImageList[i]),
          )
      );
    }

    return Scaffold(

      appBar: manageAppbar(manageTitle: '물품 관리 시스템'),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                width: MediaQuery.of(context).size.width,
                height: 300.0,
                child: Row(
                  children: [
                    // 아이템 목록
                    Expanded(
                      flex: 9,
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  width: 250.0,
                                  height: 250.0,
                                  color: Colors.black,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Text('상품명'),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                          child: Image.network(''),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Center(
                            child:IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.add),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20.0,
                thickness: 10.0,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10.0
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text('물품 추가', textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text('물품 이름(Name)', style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text('가격 (Price)', style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text('제조사 선택', style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: DropdownButton(
                                      value: selectedManufacture,
                                      items: manufactureList.map((String item){
                                        return DropdownMenuItem<String>(
                                          child: Text('${item}', style: TextStyle(color: Colors.black),),
                                          value: item,
                                        );
                                      }).toList(),
                                      onChanged: (dynamic value) {
                                        setState(() {
                                          selectedManufacture = value;
                                        });
                                      },
                                    )
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text('상품 이미지 등록', style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: ElevatedButton(
                                      onPressed: (){
                                        _startFilePicker();
                                      },
                                      child: Text('이미지'),
                                    )
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              height: 20.0,
                              thickness: 1.0,
                            ),
                            Container(
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: (){},
                                  child: Text('등록하기'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: uploadImageWidget
                          ),
                        ),
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _startFilePicker();
        },
      ),
    );
  }


  // image upload function
  // 서버에 업로드를 한 뒤 해당 파일의 url를 반환해줍니다.
  void _startFilePicker() async {
    html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((e) async {
      if (uploadInput.files!.isEmpty) return;
      setState(() {
        _file = uploadInput.files!.first;
      });

      final reader = html.FileReader();
      reader.readAsArrayBuffer(_file!);
      await reader.onLoad.first;
      final bytes = Uint8List.fromList(reader.result as List<int>);
      setState(() {
        uploadImageList.add(bytes);
      });

      //_uploadFile(_file!);
    });
  }
  Future<void> _uploadFile(html.File file) async {
    final reader = html.FileReader();
    reader.readAsArrayBuffer(file);
    await reader.onLoad.first;
    final bytes = Uint8List.fromList(reader.result as List<int>);

    var formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(bytes, filename: file.name),
    });

    var dio = Dio();
    var uri = SERVER_IP+':50000/api/upload'; // 서버의 IP 주소와 포트를 적절히 수정하세요.

    try {
      var response = await dio.post(uri, data: formData);
      if (response.statusCode == 200) {
        print('업로드 성공: ${response.data}');
      } else {
        print('업로드 실패: ${response.statusCode}');
      }
    } catch (e) {
      print('예외 발생: $e');
    }
  }



  void addItemAlert(){
    showDialog(context: context, builder: (context){
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
          title: Text('물품 추가하기')
        );
      });
    });
  }

  void deleteItemAlert(){
    showDialog(context: context, builder: (context){
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
            title: Text('물품 삭제하기')
        );
      });
    });
  }

  void modifyITemAlert(){
    showDialog(context: context, builder: (context){
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
            title: Text('물품 수정하기')
        );
      });
    });
  }
}

class Item{
  Item({
   required String itemName,
   required int price,
   required String category,
   required List<String> imageUrlList,
});

}