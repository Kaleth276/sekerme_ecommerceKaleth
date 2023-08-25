class EmpleadoModel {
  final int idEmpleado;
  final String nombre;
  final String apellido;
  final String contacto;
  final String email;
  final String fechaNacimiento;
  final String cargo;
  final double salario;

  EmpleadoModel({
    required this.idEmpleado,
    required this.nombre,
    required this.apellido,
    required this.contacto,
    required this.email,
    required this.fechaNacimiento,
    required this.cargo,
    required this.salario,
  });
  static EmpleadoModel fromJson(Map<String, dynamic> json) => EmpleadoModel(
      idEmpleado: json['idEmpleado'],
      nombre: json['nombre'],
      apellido: json['apellido'],
      contacto: json['contacto'],
      email: json['email'],
      fechaNacimiento: json['fechaNacimiento'],
      cargo: json['cargo'],
      salario: json['salario']
  );

  Map<String, dynamic> toJson() => <String,dynamic>{
    'idEmpleado': idEmpleado,
    'nombre': nombre,
    'apellido': apellido,
    'contacto': contacto,
    'email': email,
    'fechaNacimiento': fechaNacimiento,
    'cargo': cargo,
    'salario': salario,
  };
}