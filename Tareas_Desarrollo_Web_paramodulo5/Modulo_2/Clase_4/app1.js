let participantes = ["Elena", "Carlos", "Javier", "Laura", "Miguel", "Patricia"];

console.log("Clasificación inicial:");
console.log(participantes); 


let indexJavier = participantes.indexOf("Javier");
let indexLaura = participantes.indexOf("Laura");
if (indexJavier > -1 && indexLaura > -1 && indexLaura > indexJavier) {
  participantes.splice(indexLaura, 1);
  participantes.splice(indexJavier, 0, "Laura");
}
console.log("Laura supera a Javier:");
console.log(participantes);

// 5. Patricia es descalificada
let indexPatricia = participantes.indexOf("Patricia");
if (indexPatricia > -1) {
  participantes.splice(indexPatricia, 1);
}
console.log("Patricia queda eliminada:");
console.log(participantes);

// 6. Se incorporan Raul y Sofia detrás de Elena y antes de Carlos
let indexCarlos = participantes.indexOf("Carlos");
if (indexCarlos > -1) {
  participantes.splice(indexCarlos, 0, "Raul", "Sofia");
}
console.log("Se agregan Raúl y Sofía:");
console.log(participantes);

// 7. Carmen toma la posicion principal
participantes.unshift("Carmen");
console.log("Carmen toma la primera posición:");
console.log(participantes);

// 8. Imprimir clasificación final
console.log("Clasificación final actualizada:");
participantes.forEach((nombre, i) => {
  console.log((i + 1) + ". " + nombre);
});