import 'dart:sync';
/*
 * mian(){
  print('About to fetch data from Server');
 get('https:/gsdfskdfjg');
  .then((result){
    print(result);
  });
}
*/

Future<String> get(String url){
  return new Future.delayed(new Duration(seconds: 3),(){return 'Got the Data'});
}

main() async {
  print('About to fetch data from Server');
  var result = await get('https:/sdfsjhdgf');
  print(result);
}
