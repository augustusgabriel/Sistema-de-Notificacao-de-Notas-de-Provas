// App.js
import React from 'react';
import './App.css';

function App() {
  return (
    <div className="login-container">
      <div className="login-box">
        <div className="logo">
          <img src="https://images.educamaisbrasil.com.br/content/superior/instituicao/logo/g/unifapi-aqui-voce-pode.png" alt="UNIFAPI Logo" />
        </div>
        <h2>Entrar no S.A.L.V.N</h2>
        <form>
          <div className="formulario-email">
            <label htmlFor="email">Email</label>
            <input type="email" id="email" placeholder="Digite seu email" required />
          </div>
          <div className="formulario-email">
            <label htmlFor="password">Senha</label>
            <input type="password" id="password" placeholder="Digite sua senha" required />
          </div>
          <button type="submit" className="login-botao">Entrar</button>
        </form>
        <div className="cadastro">
          <span>ou</span>
          <a href="/register" className="cadastro-botao">Cadastre-se</a>
        </div>
      </div>
    </div>
  );
}

export default App;
