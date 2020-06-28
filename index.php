<?php include_once 'includes/templates/header.php'; ?>

    <section class="seccion contenedor">
      <h2>La mejor conferencia de diseño web</h2>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt
        commodi assumenda, dicta cumque laborum odio. Saepe velit similique
        quae, enim laborum commodi illo vitae deserunt sint sapiente ab, ullam
        sequi,ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur
        adipisicing elit. Voluptatibus deserunt officiis dicta similique
        maiores, expedita accusamus tenetur quae, ut consectetur minima.
        Accusantium eum sit obcaecati sint nisi ex in quaerat.
      </p>
    </section>
    <!-- Sección -->

    <section class="programa">
      <div class="contenedor-video">
        <video autoplay loop poster="img/img/bg-talleres.jpg">
          <source src="./video/video.mp4" type="video/mp4" />
          <source src="./video/video.webm" type="video/webm" />
          <source src="./video/video.ogv" type="video/ogh" />
        </video>
      </div>
      <!-- Contenedor video -->
      <div class="contenido-programa">
        <div class="contenedor">
          <div class="programa-evento">
            <h2>Programa del evento</h2>
            <nav class="menu-programa">
              <a href="#talleres"><i class="fas fa-code"></i>Talleres</a>
              <a href="#conferencias"
                ><i class="fas fa-comment"></i>Conferencias</a
              >
              <a href="#seminarios"
                ><i class="fas fa-university"></i>Seminarios</a
              >
            </nav>
            <div id="talleres" class="info-curso ocultar clearfix">
              <div class="detalle-evento">
                <h3>HTML5, CSS3 y JavaScript</h3>
                <p><i class="fas fa-clock"></i> 15:00 hrs</p>
                <p><i class="fas fa-calendar"></i> 9 de Dic</p>
                <p><i class="fas fa-user"></i> Gonzalo Anderson</p>
              </div>
              <div class="detalle-evento">
                <h3>Responsive Web Desing</h3>
                <p><i class="fas fa-clock"></i> 18:00 hrs</p>
                <p><i class="fas fa-calendar"></i> 9 de Dic</p>
                <p><i class="fas fa-user"></i> Federico Rios</p>
              </div>
              <a href="calendario.php" class="button float-right">Ver todos</a>
            </div>
            <!-- Id talleres -->
            <div id="conferencias" class="info-curso ocultar clearfix">
              <div class="detalle-evento">
                <h3>Como ser freelancer</h3>
                <p><i class="fas fa-clock"></i> 10:00 hrs</p>
                <p><i class="fas fa-calendar"></i> 10 de Dic</p>
                <p><i class="fas fa-user"></i> Gustavo Jezior</p>
              </div>
              <div class="detalle-evento">
                <h3>Tecnologias del Futuro</h3>
                <p><i class="fas fa-clock"></i> 17:00 hrs</p>
                <p><i class="fas fa-calendar"></i> 10 de Dic</p>
                <p><i class="fas fa-user"></i> Camila Sanchez</p>
              </div>
              <a href="calendario.php" class="button float-right">Ver todos</a>
            </div>
            <!-- Id talleres -->
            <div id="seminarios" class="info-curso ocultar clearfix">
              <div class="detalle-evento">
                <h3>Diseño UI/UX movile</h3>
                <p><i class="fas fa-clock"></i> 15:00 hrs</p>
                <p><i class="fas fa-calendar"></i> 11 de Dic</p>
                <p><i class="fas fa-user"></i> Federico Rios</p>
              </div>
              <div class="detalle-evento">
                <h3>Aprende a programar en una mañana</h3>
                <p><i class="fas fa-clock"></i> 10:00 hrs</p>
                <p><i class="fas fa-calendar"></i> 11 de Dic</p>
                <p><i class="fas fa-user"></i> Juan Pablo de la torre</p>
              </div>
              <a href="calendario.php" class="button float-right">Ver todos</a>
            </div>
            <!-- Id talleres -->
          </div>
          <!-- Programa evento -->
        </div>
        <!-- Contenedor -->
      </div>
      <!-- Contenido Programa -->
    </section>
    <section class="invitados contenedor seccion">
      <h2>Nuestros Invitados</h2>
      <ul class="lista-invitados clearfix">
        <li>
          <div class="invitado">
            <img src="./img/img/invitado1.jpg " alt="Imagen invitado " />
            <p>Gonzalo Anderson</p>
          </div>
        </li>
        <li>
          <div class="invitado">
            <img src="./img/img/invitado2.jpg " alt="Imagen invitado " />
            <p>Luciana Silver</p>
          </div>
        </li>
        <li>
          <div class="invitado">
            <img src="./img/img/invitado3.jpg " alt="Imagen invitado " />
            <p>Federico Rios</p>
          </div>
        </li>
        <li>
          <div class="invitado">
            <img src="./img/img/invitado4.jpg " alt="Imagen invitado " />
            <p>Florencia Torres</p>
          </div>
        </li>
        <li>
          <div class="invitado">
            <img src="./img/img/invitado6.jpg " alt="Imagen invitado " />
            <p>Camila Sanchez</p>
          </div>
        </li>
        <li>
          <div class="invitado">
            <img src="./img/img/Gus450x300.jpg" alt="Imagen invitado " />
            <p>Gustavo Jezior</p>
          </div>
        </li>
      </ul>
    </section>
    <div class="contador parallax">
      <div class="contenedor">
        <ul class="resumen-evento clearfix">
          <li>
            <p class="numero"></p>
            Invitados
          </li>
          <li>
            <p class="numero"></p>
            Talleres
          </li>
          <li>
            <p class="numero"></p>
            Dias
          </li>
          <li>
            <p class="numero"></p>
            Conferencias
          </li>
        </ul>
      </div>
    </div>
    <!-- Programa -->

    <section class="precios seccion">
      <h2>Precios</h2>
      <div class="contenedor">
        <ul class="lista-precios clearfix">
          <li>
            <div class="tabla-precios">
              <h3>Pase por dia</h3>
              <p class="numero">$30</p>
              <ul>
                <li>Facturas Gratis</li>
                <li>Todas las conferencias</li>
                <li>Todos los talleres</li>
              </ul>
              <a href="registro.php" class="button hollow">Comprar</a>
            </div>
          </li>
          <li>
            <div class="tabla-precios">
              <h3>Todos los dias</h3>
              <p class="numero">$50</p>
              <ul>
                <li>Facturas Gratis</li>
                <li>Todas las conferencias</li>
                <li>Todos los talleres</li>
              </ul>
              <a href="registro.php" class="button">Comprar</a>
            </div>
          </li>
          <li>
            <div class="tabla-precios">
              <h3>Pase por 2 dias</h3>
              <p class="numero">$45</p>
              <ul>
                <li>Facturas Gratis</li>
                <li>Todas las conferencias</li>
                <li>Todos los talleres</li>
              </ul>
              <a href="registro.php" class="button hollow">Comprar</a>
            </div>
          </li>
        </ul>
      </div>
    </section>
    <div id="mapa" class="mapa"></div>

    <section class="seccion">
      <h2>Testimoniales</h2>
      <div class="testimoniales contenedor clearfix">
        <div class="testimonial">
          <blockquote>
            <p>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ducimus
              vel nostrum pariatur perspiciatis, repellat fugiat cumque sit.
              Dolores autem velit quod voluptates non. Commodi eligendi omnis ad
              velit similique repellat?
            </p>
            <footer class="info-testimonial clearfix">
              <img src="./img/img/testimonial.jpg" alt="imagen testimonial" />
              <cite>Gonzalo Anderson <span>Diseñador en @prisma</span></cite>
            </footer>
          </blockquote>
        </div>
        <div class="testimonial">
          <blockquote>
            <p>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ducimus
              vel nostrum pariatur perspiciatis, repellat fugiat cumque sit.
              Dolores autem velit quod voluptates non. Commodi eligendi omnis ad
              velit similique repellat?
            </p>
            <footer class="info-testimonial clearfix">
              <img src="./img/img/testimonial.jpg" alt="imagen testimonial" />
              <cite>Gonzalo Anderson <span>Diseñador en @prisma</span></cite>
            </footer>
          </blockquote>
        </div>
        <div class="testimonial">
          <blockquote>
            <p>
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ducimus
              vel nostrum pariatur perspiciatis, repellat fugiat cumque sit.
              Dolores autem velit quod voluptates non. Commodi eligendi omnis ad
              velit similique repellat?
            </p>
            <footer class="info-testimonial clearfix">
              <img src="./img/img/testimonial.jpg" alt="imagen testimonial" />
              <cite>Gonzalo Anderson <span>Diseñador en @prisma</span></cite>
            </footer>
          </blockquote>
        </div>
      </div>
      <!-- Testimoniales -->
    </section>

    <div class="newsletter parallax">
      <div class="contenido contenedor">
        <p>Registrate al newsletter:</p>
        <h3>BsAsWebCamp</h3>
        <a href="registro.php" class="button transparente">Registro</a>
      </div>
      <!-- Contenido -->
    </div>
    <!-- newletter -->

    <section class="seccion">
      <h2>Faltan</h2>
      <div class="cuenta-regresiva contenedor">
        <ul class="clearfix">
          <li>
            <p id="dias" class="numero"></p>
            Días
          </li>
          <li>
            <p id="horas" class="numero"></p>
            Horas
          </li>
          <li>
            <p id="minutos" class="numero"></p>
            Minutos
          </li>
          <li>
            <p id="segundos" class="numero"></p>
            Segundos
          </li>
        </ul>
      </div>
    </section>

<?php include_once 'includes/templates/footer.php'; ?>
