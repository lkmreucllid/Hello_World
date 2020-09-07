import 'dart:html';
import 'dart:async';

void main() {
  final InputElement input = querySelector('input');
  final DivElement div = querySelector('div');
  
  
  final validateEmail = new StreamTransformer.fromHandlers(
  handleData: (inputValue, sink){
    if(inputValue.contains('@')){
      sink.add(inputValue);
    }else{
      sink.addError('Enter a valid Email');
    }
  }
  );
  
  input.onInput
    //.listen((dynamic event) => print(event.target.value));
    .map((dynamic event) => event.target.value)
    .transform(validateEmail)
    //add multiple transforms to validate text
    //.transform(validateBlank)
    //.transform(validateGamilAddress)
    .listen(
    (inputValue) => div.innerHtml = '',
    onError: (err) => div.innerHtml = err
  );
  }

/*
Add this code in HTML file

<h4>Enter Email Address</h4>
<input/>
<div style="color: red"></div>
*/
