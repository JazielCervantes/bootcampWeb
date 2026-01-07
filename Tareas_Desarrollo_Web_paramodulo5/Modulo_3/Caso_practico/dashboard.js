const currentUser = JSON.parse(localStorage.getItem('currentUser'));

if (!currentUser) {
    window.location.href = 'login.html';
}

// Mostrar información del usuario
document.getElementById('welcomeMessage').textContent = `¡Bienvenido, ${currentUser.username}!`;
document.getElementById('userInfo').innerHTML = `
    <p><span>Usuario:</span> ${currentUser.username}</p>
    <p><span>Edad:</span> ${currentUser.age} años</p>
    <p><span>Email:</span> ${currentUser.email}</p>
    <p><span>País:</span> ${currentUser.country}</p>
`;

// Petición GET
document.getElementById('btnGet').addEventListener('click', async () => {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/posts/1');
        const data = await response.json();
        
        displayResponse('GET', data);
    } catch (error) {
        displayResponse('ERROR', { message: 'Error al realizar petición GET' });
    }
});

// Petición POST
document.getElementById('btnPost').addEventListener('click', async () => {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/posts', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                title: 'Petición desde mi app',
                body: 'Este es un post de prueba',
                userId: 1
            })
        });
        const data = await response.json();
        
        displayResponse('POST', data);
    } catch (error) {
        displayResponse('ERROR', { message: 'Error al realizar petición POST' });
    }
});

// Cerrar sesión
document.getElementById('btnLogout').addEventListener('click', () => {
    localStorage.removeItem('currentUser');
    window.location.href = 'login.html';
});

function displayResponse(type, data) {
    const responseDiv = document.getElementById('apiResponse');
    responseDiv.innerHTML = `
        <h3>Respuesta ${type}:</h3>
        <pre>${JSON.stringify(data, null, 2)}</pre>
    `;
}
``