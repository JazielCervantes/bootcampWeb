// Definicion de la clase Rectangulo
class Rectangulo {
  constructor(ancho, altura) {
    this.ancho = ancho;
    this.altura = altura;
  }

  // Calculo de area y perimetro
  calcularArea() {
    return this.ancho * this.altura;
  }
  calcularPerimetro() {
    return 2 * (this.ancho + this.altura);
  }
}

// Instancia de Rectángulo
const miRectangulo = new Rectangulo(10, 7);


console.log("Area del rectangulo:", miRectangulo.calcularArea());
console.log("Perimetro del rectangulo:", miRectangulo.calcularPerimetro());