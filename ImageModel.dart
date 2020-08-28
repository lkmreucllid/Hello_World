import 'dart:convert';

void main(){
  var rawJson = '{"url":"https:blan.jpg","id":1}';
  
  var parsedJson = json.decode(rawJson);
  //print(parsedJson);
  //print(parsedJson['url']);
  
  //var imageModel = new ImageModel(parsedJson['id'],parsedJson['url']);
  
  var imageModel = new ImageModel.fromJson(parsedJson);
  
  print(imageModel.url);
}

class ImageModel{
  int id;
  String url;
  
  //basic constructer
  ImageModel(this.id, this.url);
  
  //name Constructer
  ImageModel.fromJson(parsedJson){
   id = parsedJson['id'];
    url = parsedJson['url'];
  }
}
