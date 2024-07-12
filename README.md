# File Reader Script

Este script de Bash permite leer el contenido de un archivo específico a través de una URL utilizando `curl`.

## Descripción

El script utiliza colores en la salida para hacerla más legible y amigable para el usuario. Incluye un panel de ayuda que muestra cómo usar el script y proporciona una función para manejar la señal `Ctrl+C`.

## Requisitos

- `curl` debe estar instalado en tu sistema.

## Uso

### Parámetros

- `-h`: Muestra el panel de ayuda.
- `-f <ruta del archivo>`: Proporciona la ruta del archivo a leer.

### Ejemplo

```sh
./script.sh -f /path/to/your/file
```

### Notas

Asegúrate de tener permisos de ejecución en el script. Puedes otorgarlos con el siguiente comando:

```sh
chmod +x script.sh
```

- Este script asume que la URL http://web.com/l/f/i.php?lfi=$filename es válida y accesible. Asegúrate de modificarla según tus necesidades.

## Importante

Este script está diseñado para mostrar un ejemplo básico de lectura de archivos y dar una estructura inicial para archivos sh, no debe utilizarse para propósitos maliciosos. La explotación de vulnerabilidades como la Inclusión de Archivos Locales (LFI) puede ser ilegal y debe realizarse únicamente en sistemas autorizados y con permiso explícito.

Este script puede servir como una herramienta educativa para entender cómo funcionan las vulnerabilidades como LFI y cómo se pueden mitigar.
