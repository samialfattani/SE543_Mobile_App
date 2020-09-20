

class Box<T>
{
	String password ="";
	T item;
	
	set setItem  (T item) => item = item;
	T get getItem => this.item;
  
  bool check(){
    return ( password == '123' );
  }

}

void main(List<String> args)
{

  Box<String> s = new Box<String>();
  s.password = '123';
  s.item = 'fffff';
  print(s.item);
  
}