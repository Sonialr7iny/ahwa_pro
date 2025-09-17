import 'drink.dart';

class Shai extends Drink {
  Shai(): super('Shai');
  @override void prepare() => print('Preparing Shai with mint...');
}