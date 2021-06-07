

class Character {
  final String _name;
  final String _status;
  final String _species;
  final String _gender;
  final String _imagepath;

  Character.fromJson(this._name, this._status, this._species, this._gender, this._imagepath);

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