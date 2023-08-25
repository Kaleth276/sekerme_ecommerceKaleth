class UserModel{
  final int idUsuario;
  final String nombre;
  final String apellido;
  final String contacto;
  final String direccion;
  final String email;
  final String nombreUsuario;
  final String contrasena;

  UserModel({
    required this.idUsuario,
    required this.nombre,
    required this.apellido,
    required this.contacto,
    required this.direccion,
    required this.email,
    required this.nombreUsuario,
    required this.contrasena,
  });
  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
      idUsuario: json['idUsuario'],
      nombre: json['nombre'],
      apellido: json['apellido'],
      contacto: json['contacto'],
      direccion: json['direccion'],
      email: json['email'],
      nombreUsuario: json['nombreUsuario'],
      contrasena: json['contraseña']
  );

  Map<String, dynamic> toJson() => <String,dynamic>{
  'idUsuario': idUsuario,
  'nombre': nombre,
  'apellido': apellido,
  'contacto': contacto,
  'direccion': direccion,
  'email': email,
  'nombreUsuario': nombreUsuario,
  'contraseña': contrasena
  };

}