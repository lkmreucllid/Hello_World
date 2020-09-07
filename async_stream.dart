import 'dart:async';

class Cake{}
class Order{
  String type;
  Order(this.type);
}

void main(){
  final controller = new StreamController();
  final order = new Order('vanilla');
  
  final baker = new StreamTransformer.fromHandlers(
  handleData: (cakeType, sink){//used at here
    if(cakeType == 'chocolate'){
      //this sink can have multiple add methods attached
      sink.add(new Cake());
    } else{
      sink.addError('i cant bake this type');
    }
  }
  );
  controller.sink.add(order);//kick starts the stream process, this sink can have only one add method
  
  
  controller.stream
    .map((order) => order.type)
    .transform(baker)
    //here
    .listen(//Pickup office
    //have two function for success and failure
      //for success
    (cake) => print('here is your cake $cake'),
    //for failure
    onError: (err) => print(err)
  );
}
