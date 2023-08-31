class meal{

  int ? id;
  late String name;
  late String details;


  meal (Map<String,dynamic> meals)
  {
    if (meals['id']!=null)
    { this.id=meals['id'];}


    this.name=meals['name'];

    this.details=meals['author'];

  }


 meal.fromMap(Map <String ,dynamic>  reading)
  {
    this.id=reading['id'];


    this.name=reading['name'];

    this.details=reading['author'];


  }

  Map <String ,dynamic> toMap ()
  {

    Map <String ,dynamic> read={'name':this.name,'Author':this.details};

    if (this.id!=null)
    {
      read['id']=this.id;
    }

    return read;














  }















}