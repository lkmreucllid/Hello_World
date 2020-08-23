void main(){
  var deck = new Deck();
  //deck.shuffle();
 //print(deck.cardsWithSuit('Hearts'));
 //print(deck);
  //print(deck.deal(8));
  deck.removeCard('Hearts','Five');
  print(deck);
}
class Card{
  String suit;
  String rank;
  Card({this.rank, this.suit});
  
  toString(){
    return '$rank of $suit';
  }
}

class Deck{
  List<Card> cards = [];
  Deck(){
    var ranks = ['Ace','One','Two','Three','Four','Five'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];
    
    for(var myRank in ranks){
      for(var mySuit in suits){
        var card = new Card(
          rank: myRank, 
          suit: mySuit
        );
        cards.add(card);
        
      }
    }
  }
  toString(){
          return cards.toString();
  }
  shuffle(){
    cards.shuffle();
  }
  cardsWithSuit(String suit){
    return cards.where((card) => card.suit == suit);
  }
  deal(int handSize){
    var hand = cards.sublist(0,handSize);
    cards = cards.sublist(handSize);
    return hand;
  }
  
  removeCard(String suit, String rank){
    cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}
