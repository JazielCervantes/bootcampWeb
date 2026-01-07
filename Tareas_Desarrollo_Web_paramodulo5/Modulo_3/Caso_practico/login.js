const loginForm = document.getElementById('loginForm');
const registerForm = document.getElementById('registerForm');
const showRegister = document.getElementById('showRegister');
const showLogin = document.getElementById('showLogin');

// Alternar entre login y registro
showRegister.addEventListener('click', () => {
    loginForm.classList.add('hidden');
    registerForm.classList.remove('hidden');
});

showLogin.addEventListener('click', () => {
    registerForm.classList.add('hidden');
    loginForm.classList.remove('hidden');
});

// Manejar Login
document.getElementById('formLogin').addEventListener('submit', (e) => {
    e.preventDefault();
    
    const username = document.getElementById('loginUsername').value;
    const password = document.getElementById('loginPassword').value;
    
    const users = JSON.parse(localStorage.getItem('users')) || [];
    const user = users.find(u => u.username === username && u.password === password);
    
    if (user) {
        localStorage.setItem('currentUser', JSON.stringify(user));
        window.location.href = 'dashboard.html';
    } else {
        showError('loginError', 'Usuario o contraseña incorrectos');
    }
});

// Manejar Registro
document.getElementById('formRegister').addEventListener('submit', (e) => {
    e.preventDefault();
    
    const username = document.getElementById('regUsername').value;
    const password = document.getElementById('regPassword').value;
    const age = document.getElementById('regAge').value;
    const email = document.getElementById('regEmail').value;
    const country = document.getElementById('regCountry').value;
    
    const users = JSON.parse(localStorage.getItem('users')) || [];
    
    if (users.find(u => u.username === username)) {
        showError('registerError', 'El usuario ya existe');
        return;
    }
    
    const newUser = { username, password, age, email, country };
    users.push(newUser);
    localStorage.setItem('users', JSON.stringify(users));
    
    showError('registerError', 'Usuario registrado exitosamente');
    setTimeout(() => {
        registerForm.classList.add('hidden');
        loginForm.classList.remove('hidden');
    }, 1500);
});

function showError(elementId, message) {
    const errorElement = document.getElementById(elementId);
    errorElement.textContent = message;
    errorElement.style.display = 'block';
    setTimeout(() => {
        errorElement.style.display = 'none';
    }, 3000);
}