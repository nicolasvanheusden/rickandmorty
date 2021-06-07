

class Character {
  String _name;
  String _status;
  String _species;
  String _gender;
  String _imagepath;
  String _origin;

  Character.fromJson(Map json){
    _name = json["name"];
    _status = json["status"];
    _species = json["species"];
    _gender = json["gender"];
    _imagepath = json["image"];
    _origin = json["origin"]["name"];
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

  String showOrigin(){
    return this._origin;
  }

}