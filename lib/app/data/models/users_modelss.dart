

class UsersModel {

  final String nombre;
  final String apellido;
  final String contacto;
  final String direccion;
  final String email;
  final String nombreUsuario;
  final String contrasena;

  const UsersModel({

    required this.nombre,
    required this.apellido,
    required this.contacto,
    required this.direccion,
    required this.email,
    required this.nombreUsuario,
    required this.contrasena
  });
  static UsersModel fromJson(Map<String,dynamic>json)=>UsersModel(
      nombre: json['nombre'],
      apellido: json['apellido'],
      contacto: json['contacto'],
      direccion: json['direccion'],
      email: json['email'],
      nombreUsuario: json['nombreUsuario'],
      contrasena: json['contrasena']);

  Map<String,dynamic>toJson()=><String,dynamic>{
    'nombre':nombre,
    'apellido':apellido,
    'contacto':contacto,
    'direccion':direccion,
    'email':email,
    'nombreUsuario':nombreUsuario,
    'contrasena':contrasena
  };
}