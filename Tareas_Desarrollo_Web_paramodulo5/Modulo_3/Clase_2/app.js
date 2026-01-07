 fetch('https://pokeapi.co/api/v2/pokemon/')
            .then(response => {
                return response.json();
            })
            .then(data => {
                console.log(data); 
            })

                console.log("Espera 5 segundos...")
    setTimeout (() => {
     console.log("Gracias por la espera :D")   ;
    }, 5000);