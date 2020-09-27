

import 'util.dart';

main(List<String> args) 
{
  print(args);

  Person p = new Person('dd')  ;

  Person p2 = new Person('dd') ;
  p.setAge = 20;
  print(p.getAge);

  Person p3 = new Person('dd', 22, 2500) ;
  print(p3.getAge);

  List<Person> names = new List<Person>() ;
  names.add( new Person('ss') );

  //names.
}