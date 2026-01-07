var biblioteca =[{

    autor: 'Bill Gates',
    titulo: 'The Road Ahead',
    estadoLectura: true

},
{
   autor: 'Steve Jobs',
    titulo: 'Walter Isaacson',
    estadoLectura: true

},
{
   autor: 'Suzanne Collins',
    titulo: 'Mockingjay: The Final Book of The Hunger Games',
    estadoLectura: false

}];

for (var i = 0; i < biblioteca.length; i++) {
  console.log(biblioteca[i].titulo + " - " + biblioteca[i].autor + " - " + biblioteca[i].estadoLectura);
}