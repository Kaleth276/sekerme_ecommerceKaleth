class CitasModel{
  final String usuario;
  final String fecha;
  final String lugar;
  final String hora;
  final String servicio;
  final String empleado;


const CitasModel({

  required this.usuario,
  required this.fecha,
  required this.lugar,
  required this.hora,
  required this.servicio,
  required this.empleado,

});
static CitasModel fromJson(Map<String,dynamic>json)=>CitasModel(
  usuario: json['usuario'],
  fecha: json['fecha'],
  lugar: json['lugar'],
  hora: json['hora'],
  servicio: json['servicio'],
  empleado: json['empleado'],
  );

Map<String,dynamic>toJson()=><String,dynamic>{
  'usuario':usuario,
  'fecha':fecha,
  'lugar':lugar,
  'hora':hora,
  'servicio':servicio,
  'empleado':empleado,

};
}