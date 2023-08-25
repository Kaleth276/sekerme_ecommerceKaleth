class ServiciosModel{
  final int idServicio;
  final String nombre;
  final String duracion;
  final double precio;
  final String descripcion;
  final bool disponibilidad;

  const ServiciosModel({
    required this.idServicio,
    required this.nombre,
    required this.duracion,
    required this.precio,
    required this.descripcion,
    required this.disponibilidad,
  });
  static ServiciosModel fromJson(Map<String, dynamic> json) => ServiciosModel(
      idServicio: json['idServicio'],
      nombre: json['nombre'],
      duracion: json['duracion'],
      precio: json['precio'],
      descripcion: json['descrpcion'],
      disponibilidad: json['disponibilidad']
  );

  Map<String, dynamic> toJson() => <String,dynamic>{
    'idServicio': idServicio,
    'nombre': nombre,
    'duracion': duracion,
    'precio': precio,
    'descripcion': descripcion,
    'disponibilidad': disponibilidad
  };
}