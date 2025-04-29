import 'dart:convert';

class CredictResponse {
    int id;
    List<Cast> cast;
    List<dynamic> crew;

    CredictResponse({
        required this.id,
        required this.cast,
        required this.crew,
    });

    factory CredictResponse.fromJson(String str) => CredictResponse.fromMap(json.decode(str));


    factory CredictResponse.fromMap(Map<String, dynamic> json) => CredictResponse(
        id: json["id"],
        cast: List<Cast>.from(json["cast"].map((x) => Cast.fromMap(x))),
        crew: List<dynamic>.from(json["crew"].map((x) => x)),
    );

   
}

class Cast {
    bool adult;
    int gender;
    int id;
    String knownForDepartment;
    String name;
    String originalName;
    double popularity;
    String? profilePath;
    int castId;
    String character;
    String creditId;
    int order;

    Cast({
        required this.adult,
        required this.gender,
        required this.id,
        required this.knownForDepartment,
        required this.name,
        required this.originalName,
        required this.popularity,
        this.profilePath,
        required this.castId,
        required this.character,
        required this.creditId,
        required this.order,
    });

    get fullprofilePath{

      if(profilePath != null){
        return 'https://image.tmdb.org/t/p/w500${profilePath}';
      }else{
          return 'https://i.stack.imgur.com/GNhxO.png';
      }
    }

    factory Cast.fromJson(String str) => Cast.fromMap(json.decode(str));


    factory Cast.fromMap(Map<String, dynamic> json) => Cast(
        adult: json["adult"],
        gender: json["gender"],
        id: json["id"],
        knownForDepartment: json["known_for_department"],
        name: json["name"],
        originalName: json["original_name"],
        popularity: json["popularity"]?.toDouble(),
        profilePath: json["profile_path"],
        castId: json["cast_id"],
        character: json["character"],
        creditId: json["credit_id"],
        order: json["order"],
    );

    
}
