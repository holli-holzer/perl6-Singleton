use v6;

use Test;
use Singleton;

class Foo does Singleton[:bar("salad")] {
  has $.bar is rw = "";

  method get-bar {
    self.instance.bar;
  }

  method set-bar( $value ) {
    self.instance.bar = $value;
  }
}

class Boo does Singleton[:hoo("horror")] {
  has $.hoo is rw = "";

  method get-hoo {
    self.instance.hoo;
  }

  method set-hoo( $value ) {
    self.instance.hoo = $value;
  }
}

ok Foo.get-bar ~~ "salad";
ok Boo.get-hoo ~~ "horror";

$_ = Foo.new(:bar<cocktail>);
ok .bar ~~ "cocktail";
ok .get-bar ~~ "salad";

$_ = Boo.new(:hoo<shock>);
ok .hoo ~~ "shock";
ok .get-hoo ~~ "horror";

Foo.set-bar("fish");

ok Foo.get-bar ~~ "fish";
ok Boo.get-hoo ~~ "horror";

ok !( Foo.instance === Boo.instance );
ok !( Foo.instance =:= Boo.instance );

done-testing;
