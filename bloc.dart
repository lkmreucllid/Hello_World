import 'dart:async';

void main(){
  
  final bloc = new Bloc();
  
  /*
This is basic code which is replaced by getter function defined below
bloc.emailController.stream.listen((value){
    print(value);
  });
  */
  
  
  bloc.emailStream.listen((value){
    print(value);
  });
  
  bloc.emailController.sink.add('This is my email Address');
  
bloc.changeEmail('This is second Email Address called by Getter function');
}


class Bloc{
  final emailController = StreamController<String>();
  
  //sink getter for Class
  //Add data to Stream
  get changeEmail => emailController.sink.add;
  
  //Stream getter
  //Retrive data from Stream
  get emailStream => emailController.stream;
}
