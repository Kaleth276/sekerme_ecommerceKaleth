class CitasModel {
  final int idCita;
  final String usuario;
  final String fecha;
  final String lugar;
  final String hora;
  final String servicio;
  final String empleado;

  const CitasModel({
    required this.idCita,
    required this.usuario,
    required this.fecha,
    required this.lugar,
    required this.hora,
    required this.servicio,
    required this.empleado,
  });
  static CitasModel fromJson(Map<String, dynamic> json) => CitasModel(
      idCita: json['idCita'],
      usuario: json['usuario'],
      fecha: json['fecha'],
      lugar: json['lugar'],
      hora: json['hora'],
      servicio: json['sevicio'],
      empleado: json['empelado']
  );

  Map<String, dynamic> toJson() => <String,dynamic>{
  'idCita': idCita,
  'usuario': usuario,
  'fecha': fecha,
  'lugar': lugar,
  'hora': hora,
  'servicio': servicio,
  'empleado': empleado
  };
}