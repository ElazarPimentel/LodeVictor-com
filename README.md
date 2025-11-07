# Lo De Victor - Parrilla Kosher

Sitio web oficial de Lo De Victor, riquísima parrilla kosher en Buenos Aires con certificación del Rabino Chehebar.

## 🍖 Sobre el Restaurante

**Lo De Victor** es una auténtica parrilla kosher ubicada en el corazón de Buenos Aires, ofreciendo la mejor experiencia gastronómica argentina con certificación kosher del Rabino Chehebar.

### 📍 Información de Contacto

- **Dirección**: Paso 610, CABA
- **WhatsApp**: +54 911 5226-9070
- **Teléfono**: (+54 911) 4961-6073
- **Instagram**: [@lodevictorkosher](https://www.instagram.com/lodevictorkosher)
- **Facebook**: [Parrilla Kosher Lo de Victor](https://www.facebook.com/p/Parrilla-Kosher-Lo-de-Victor-100069764214992/)
- **Website**: [www.lodevictor.com](https://www.lodevictor.com)

### ⏰ Horarios

- **Lunes - Miércoles**: 12:00 - 16:00
- **Jueves**: 12:00 - 16:00 | 19:15 - 22:30
- **Viernes**: 12:00 - 16:00
- **Sábado**: Cerrado
- **Domingo**: 12:00 - 16:00 | 19:15 - 22:30

## 🌐 Características del Sitio

- ✅ Diseño moderno y elegante con fondo negro y acentos rojos
- ✅ Completamente responsive (móvil, tablet, desktop)
- ✅ Soporte multiidioma (Español, Inglés, Hebreo)
- ✅ Galería de fotos interactiva
- ✅ Mapa de Google Maps integrado
- ✅ Enlaces a redes sociales
- ✅ Información de servicio de pickup
- ✅ Animaciones suaves y modernas

## 🚀 Cómo Usar Este Sitio

### Instalación Local

1. Clona este repositorio:
```bash
git clone https://github.com/ElazarPimentel/LodeVictor-com.git
cd LodeVictor-com
```

2. Abre `index.html` en tu navegador favorito, o usa un servidor local:
```bash
# Con Python 3
python -m http.server 8000

# Con Node.js (http-server)
npx http-server

# Con PHP
php -S localhost:8000
```

3. Visita `http://localhost:8000` en tu navegador

### Subir Fotos

Para reemplazar las imágenes placeholder con fotos reales del restaurante:

1. Prepara tus fotos en formato JPG o PNG
2. Optimiza las imágenes (recomendado: max 1200px de ancho)
3. Reemplaza los archivos en la carpeta `/images/`:
   - `placeholder1.jpg` → Foto de un plato (Bife de Chorizo)
   - `placeholder2.jpg` → Foto de un plato (Asado de Tira)
   - `placeholder3.jpg` → Foto de un plato (Entraña)
   - `placeholder4.jpg` → Foto de un plato (Parrilla Mixta)
   - `placeholder5.jpg` → Foto de un plato (Vacío)
   - `placeholder6.jpg` → Foto del restaurante

## 📁 Estructura del Proyecto

```
LodeVictor-com/
│
├── index.html          # Página principal
├── css/
│   └── styles.css      # Estilos del sitio
├── js/
│   └── main.js         # JavaScript (multiidioma, interactividad)
├── images/
│   └── placeholder*.jpg # Imágenes placeholder (reemplazar con fotos reales)
└── README.md           # Este archivo
```

## 🎨 Personalización

### Cambiar Colores

Los colores principales están definidos en `css/styles.css`:

```css
:root {
    --primary-red: #f90703;    /* Color rojo del logo */
    --bg-black: #000000;       /* Fondo negro */
    --text-white: #ffffff;     /* Texto blanco */
}
```

### Agregar Platos al Menú

Edita `index.html` y busca la sección `<!-- Menu Section -->`. Agrega nuevos items siguiendo el formato:

```html
<div class="menu-item">
    <h4 data-translate="menu_itemX">Nombre del Plato</h4>
    <p data-translate="menu_itemX_desc">Descripción del plato</p>
</div>
```

No olvides agregar las traducciones en `js/main.js`.

### Modificar Traducciones

Edita `js/main.js` y modifica el objeto `translations`:

```javascript
const translations = {
    es: { /* español */ },
    en: { /* inglés */ },
    he: { /* hebreo */ }
};
```

## 🌍 Hosting y Despliegue

Este sitio es 100% estático y puede ser alojado en:

- **GitHub Pages** (gratis)
- **Netlify** (gratis)
- **Vercel** (gratis)
- **Firebase Hosting** (gratis)
- Cualquier servidor web tradicional

### Desplegar en GitHub Pages

1. Ve a Settings → Pages en tu repositorio
2. Selecciona la rama `main` como fuente
3. Tu sitio estará disponible en: `https://[tu-usuario].github.io/LodeVictor-com`

## 📱 Tecnologías Utilizadas

- HTML5
- CSS3 (con variables CSS y animaciones)
- JavaScript (Vanilla JS, sin frameworks)
- Google Fonts (Playfair Display, Raleway)
- Google Maps API

## ✡️ Certificación Kosher

Todos los platos son preparados bajo la estricta supervisión kosher del **Rabino Chehebar**.

## 📄 Licencia

© 2024 Lo De Victor. Todos los derechos reservados.

---

Desarrollado con ❤️ para Lo De Victor
