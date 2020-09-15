// Typedef allows you to create a `Type` for a function signature.
typedef String Greeter(String first_name);

typedef bool Tester(var element);

void main()
{
  var marks = [0, 88,66,98,99,100,60,45];
  filter(marks, (e) =>  (e >= 80) );
  filter(marks, (e) =>  (e < 80) );

  marks.sort( (a, b) {
      if (a % 2 == 1)
        return -1;
      else
        return 1;
  } );
  print(marks);
  
  print('-------------');
  
  List<String> names = ['88','66','98','99', '91'];
  
  filter(names, (name) => name.substring(0,1) == '9');


  print('-------------filter using dart code');

  names.sort( (a,b) => a.compareTo(b) );
  names.where( (e) => e.substring(0,1) == '9')
      .forEach((e) => print(e+'--'));

}

void filter(alist, Tester filter_cond)
{
  for(int i=0; i<alist.length; i++){
    if ( filter_cond( alist[i] ) ) //marks[i] >= 80
      print(alist[i]);
  }
}

// Here the typedef is used to make it easier to pass functions
String Greet(fname, Greeter afunction)
{
  // We call the function
  String greeting_msg = afunction(fname);
  print(greeting_msg);
  return greeting_msg;
}