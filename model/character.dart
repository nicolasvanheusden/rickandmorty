

class Character {
  String _name;
  String _status;
  String _species;
  String _gender;
  String _imagepath;

  Character.fromJson(Map json){
    _name = json["name"];
    _status = json["status"];
    _species = json["species"];
    _gender = json["gender"];
    _imagepath = json["image"];
  }

  String showName(){
    return this._name;
  }

  String showStatus(){
    return this._status;
  }

  String showSpecies(){
    return this._species;
  }

  String showGender(){
    return this._gender;
  }

  String showImage(){
    return this._imagepath;
  }

}