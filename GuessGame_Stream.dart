import 'dart:html';

void main() {
  final ButtonElement button = querySelector('button');
  final InputElement input = querySelector('input');
  
  button.onClick
    .take(4)
    .where((event) => input.value == 'banana')
    .listen(
  (event) => print('You got it!'),
    onDone: () => print('Only 4 guesses allowed')
  );
}

/*
Paste this code in Html file

<h4>Guess the Word!</h4>
<input/>
<button>Guess!</button>
*/
