class UsuarioModel {
  final String nombre;
  final int edad;
  final List<String> profesiones;

  UsuarioModel(
      {required this.edad, required this.nombre, required this.profesiones});

  copyWith({String? nombre, int? edad, List<String>? profesiones}) {
    return UsuarioModel(
        edad: edad ?? this.edad,
        nombre: nombre ?? this.nombre,
        profesiones: profesiones ?? this.profesiones);
  }
}
