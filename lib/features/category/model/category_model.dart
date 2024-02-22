class CategoryModel {

  String text ='';

  String name='';

  String imageUrl='';

  String id='';


  CategoryModel();

  factory CategoryModel.fromJson(dynamic json){
    var c =CategoryModel();
    c.text=json['text'];
    c.name=json['name'];
    c.imageUrl=json['image_url'];
    c.id=json['id'];
    return c;
  }


}