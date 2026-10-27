<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="theme-color" content="#10151d">
  <title>Hospital de Laguna | One State Roleplay</title>

  <style>
    :root {
      --bg: #10151d;
      --panel: #1a222e;
      --border: #303b4a;
      --text: #f1f5f9;
      --muted: #a6b2c2;
      --accent: #60a5fa;
    }

    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      background: var(--bg);
      color: var(--text);
      font-family: Arial, sans-serif;
    }

    header {
      padding: 24px 18px;
      background: #171f2a;
      border-bottom: 1px solid var(--border);
    }

    .brand {
      color: var(--accent);
      font-size: 12px;
      font-weight: bold;
      letter-spacing: 2px;
    }

    h1 {
      margin: 12px 0 6px;
      font-size: 26px;
    }

    h2 {
      font-size: 21px;
    }

    p {
      line-height: 1.6;
    }

    .muted {
      color: var(--muted);
    }

    nav {
      display: flex;
      gap: 8px;
      padding: 12px;
      overflow-x: auto;
      background: #141b25;
      position: sticky;
      top: 0;
      z-index: 2;
    }

    button {
      cursor: pointer;
      font: inherit;
    }

    nav button {
      flex-shrink: 0;
      padding: 11px 14px;
      color: var(--text);
      background: var(--panel);
      border: 1px solid var(--border);
      border-radius: 9px;
    }

    nav button.active,
    .primary {
      background: #2563eb;
      border-color: #2563eb;
      color: white;
    }

    main {
      max-width: 760px;
      margin: auto;
      padding: 18px;
    }

    .card {
      padding: 18px;
      margin: 14px 0;
      border: 1px solid var(--border);
      border-radius: 14px;
      background: var(--panel);
    }

    .stat {
      display: inline-block;
      width: 47%;
      vertical-align: top;
      margin: 1%;
    }

    .number {
      font-size: 27px;
      font-weight: bold;
      color: var(--accent);
    }

    .tag {
      display: inline-block;
      padding: 5px 9px;
      border-radius: 7px;
      background: #26374c;
      color: #bfdbfe;
      font-size: 12px;
    }

    .primary,
    .secondary {
      padding: 12px 15px;
      border-radius: 9px;
      border: 1px solid var(--border);
      margin-top: 8px;
    }

    .secondary {
      background: #202b39;
      color: white;
    }

    input,
    select {
      display: block;
      width: 100%;
      margin: 8px 0 14px;
      padding: 12px;
      background: #111923;
      color: white;
      border: 1px solid var(--border);
      border-radius: 8px;
      font-size: 16px;
    }

    label {
      font-size: 14px;
      color: var(--muted);
    }

    .member {
      display: block;
      width: 100%;
      text-align: left;
      background: var(--panel);
      color: white;
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 15px;
      margin: 10px 0;
    }

    .member strong,
    .member span {
      display: block;
    }

    .member span {
      margin-top: 6px;
      color: var(--muted);
    }

    .hidden {
      display: none;
    }

    footer {
      text-align: center;
      padding: 25px 15px;
      color: var(--muted);
      font-size: 12px;
    }

    @media (min-width: 600px) {
      h1 {
        font-size: 34px;
      }

      main {
        padding: 28px;
      }
    }
  </style>
</head>

<body>
  <header>
    <div class="brand">ONE STATE ROLEPLAY</div>
    <h1>✚ Hospital de Laguna</h1>
    <div class="muted">Portal de la División Médica</div>
  </header>

  <nav aria-label="Navegación principal">
    <button class="active" data-page="inicio">Inicio</button>
    <button data-page="miembros">Miembros</button>
    <button data-page="academia">Academia</button>
    <button data-page="ascensos">Ascensos</button>
    <button data-page="admin">Administración</button>
  </nav>

  <main>
    <section id="inicio">
      <div class="card">
        <span class="tag">PORTAL INSTITUCIONAL</span>
        <h2>Bienvenido al Hospital de Laguna</h2>
        <p class="muted">
          Plataforma de consulta y formación de la División Médica
          de One State Roleplay.
        </p>
        <p>
          Consulta los integrantes, conoce el funcionamiento de
          la Academia y revisa los requisitos de formación.
        </p>
      </div>

      <div class="card">
        <div class="stat">
          <div class="number">—</div>
          <div class="muted">Miembros registrados</div>
        </div>
        <div class="stat">
          <div class="number">3</div>
          <div class="muted">Rangos de Academia</div>
        </div>
        <p class="muted">
          Las estadísticas reales aparecerán cuando conectemos
          la base de datos.
        </p>
      </div>

      <div class="card">
        <h2>Información importante</h2>
        <p class="muted">
          Esta plataforma está diseñada para consultar información
          de la facción y realizar el seguimiento de la formación.
        </p>
      </div>
    </section>

    <section id="miembros" class="hidden">
      <h2>Directorio de miembros</h2>
      <p class="muted">
        Selecciona un integrante para consultar su ficha.
        Los siguientes datos son ejemplos.
      </p>

      <button class="member" data-member="demo1">
        <strong>Miembro de ejemplo 1</strong>
        <span>Enfermero · Datos demostrativos</span>
      </button>

      <button class="member" data-member="demo2">
        <strong>Miembro de ejemplo 2</strong>
        <span>Practicante de enfermería · Datos demostrativos</span>
      </button>

      <button class="member" data-member="demo3">
        <strong>Miembro de ejemplo 3</strong>
        <span>Asistente médico · Datos demostrativos</span>
      </button>

      <div id="ficha" class="card hidden">
        <h2>Ficha del integrante</h2>
        <p id="ficha-rango"></p>
        <p>Clases asistidas: <strong>Sin registros reales</strong></p>
        <p>Evaluaciones: <strong>Sin registros reales</strong></p>
        <p class="muted">
          Las asistencias y puntuaciones se conectarán a la base
          de datos en una etapa posterior.
        </p>
      </div>
    </section>

    <section id="academia" class="hidden">
      <h2>Academia Médica</h2>

      <div class="card">
        <h3>01 · Enfermero</h3>
        <p class="muted">
          Formación inicial y fundamentos de la actividad médica.
        </p>
      </div>

      <div class="card">
        <h3>02 · Practicante de enfermería</h3>
        <p class="muted">
          Continuación de la formación y preparación para el
          siguiente rango.
        </p>
      </div>

      <div class="card">
        <h3>03 · Asistente médico</h3>
        <p class="muted">
          Formación correspondiente al tercer rango de Academia.
        </p>
      </div>

      <div class="card">
        <h3>Evaluaciones</h3>
        <p>
          La puntuación mínima propuesta para que una clase cuente
          es de <strong>7 sobre 10</strong>.
        </p>
        <p class="muted">
          La asistencia y la puntuación deberán registrarse y
          verificarse por un instructor autorizado.
        </p>
      </div>
    </section>

    <section id="ascensos" class="hidden">
      <h2>Sistema de ascensos</h2>

      <div class="card">
        <h3>Enfermero → Practicante de enfermería</h3>
        <ul>
          <li>Asistir a una clase.</li>
          <li>Obtener al menos 7 sobre 10.</li>
          <li>Demostrar los conocimientos básicos.</li>
          <li>Recibir la aprobación de un superior autorizado.</li>
        </ul>
      </div>

      <div class="card">
        <h3>Practicante → Asistente médico</h3>
        <ul>
          <li>Asistir a dos o tres clases, según se apruebe.</li>
          <li>Obtener al menos 7 sobre 10 en cada clase válida.</li>
          <li>Demostrar los conocimientos impartidos.</li>
          <li>Recibir la aprobación de un superior autorizado.</li>
        </ul>
        <p class="muted">
          Estos requisitos son una propuesta pendiente de
          aprobación oficial por la facción.
        </p>
      </div>
    </section>

    <section id="admin" class="hidden">
      <h2>Administración</h2>

      <div class="card">
        <span class="tag">VISTA DEMOSTRATIVA</span>
        <h3>Acceso para instructores</h3>
        <p class="muted">
          El panel administrativo real todavía no está conectado.
          Este formulario no autentica usuarios ni concede permisos.
        </p>

        <label for="correo">Correo del administrador</label>
        <input id="correo" type="email"
               placeholder="admin@ejemplo.com"
               autocomplete="off">

        <label for="clave">Contraseña</label>
        <input id="clave" type="password"
               placeholder="No introduzcas una contraseña real"
               autocomplete="off">

        <button class="primary" id="acceso">
          Probar interfaz
        </button>

        <p id="mensaje" class="muted" aria-live="polite"></p>
      </div>

      <div class="card">
        <h3>Permisos previstos</h3>
        <p>Administrador principal: tú.</p>
        <p>Instructores: permisos concedidos individualmente.</p>
        <p>Miembros: consulta de la información publicada.</p>
        <p class="muted">
          La autorización, el registro de actividad y la revocación
          de permisos requieren un servidor y una base de datos seguros.
        </p>
      </div>
    </section>
  </main>

  <footer>
    Hospital de Laguna · One State Roleplay<br>
    Prototipo inicial · Información demostrativa
  </footer>

  <script>
    const botones = document.querySelectorAll("nav button");
    const secciones = document.querySelectorAll("main section");

    botones.forEach(boton => {
      boton.addEventListener("click", () => {
        botones.forEach(b => b.classList.remove("active"));
        boton.classList.add("active");

        secciones.forEach(seccion => {
          seccion.classList.toggle(
            "hidden",
            seccion.id !== boton.dataset.page
          );
        });

        window.scrollTo({ top: 0, behavior: "smooth" });
      });
    });

    const miembros = {
      demo1: "Rango: Enfermero",
      demo2: "Rango: Practicante de enfermería",
      demo3: "Rango: Asistente médico"
    };

    document.querySelectorAll("[data-member]").forEach(boton => {
      boton.addEventListener("click", () => {
        document.getElementById("ficha-rango").textContent =
          miembros[boton.dataset.member];

        document.getElementById("ficha").classList.remove("hidden");
      });
    });

    document.getElementById("acceso").addEventListener("click", () => {
      document.getElementById("mensaje").textContent =
        "Demostración solamente. El acceso administrativo real " +
        "se configurará con autenticación segura.";
    });
  </script>
</body>
</html>
