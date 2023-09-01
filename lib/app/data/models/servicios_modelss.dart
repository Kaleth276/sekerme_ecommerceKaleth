

class ServiciosModel {

  final String nombre;
  final String duracion;
  final double precio;
  final String descripcion;
  final bool disponibilidad;

  const ServiciosModel({

    required this.nombre,
    required this.duracion,
    required this.precio,
    required this.descripcion,
    required this.disponibilidad,
  });
  static ServiciosModel fromJson(Map<String,dynamic>json)=>ServiciosModel(
    nombre: json['nombre'],
    duracion: json['duracion'],
    precio: json['precio'],
    descripcion: json['descripcion'],
    disponibilidad: json['disponibilidad'],
  );
  Map<String,dynamic>toJson()=><String,dynamic>{
    'nombre':nombre,
    'duracion':duracion,
    'precio':precio,
    'dscripcion':descripcion,
    'disponibilidad':disponibilidad,

  };
}
