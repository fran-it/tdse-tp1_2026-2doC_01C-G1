# Modelo Sensor (Módulo Escrutar)

El modelo **Sensor** es el encargado de leer el estado del hardware (el botón) y validar estas lecturas mediante un filtro antirrebote (*debouncing*). Funciona bajo un esquema de ejecución cíclica no bloqueante (*Update by Time Code*), evaluado cada 1 milisegundo.

## Eventos (Triggers)
Los eventos que despachan las transiciones en la máquina de estados del Sensor son:

*   **e_Tick_1mS:** Evento periódico generado por el planificador del sistema operativo (SysTick) cada 1 milisegundo.
*   **EV_BTN_DOWN:** Evento de hardware que indica que el botón se encuentra físicamente presionado.
*   **EV_BTN_UP:** Evento de hardware que indica que el botón se encuentra físicamente liberado.

## Variables de Control y Guardas
El sensor necesita una variable interna para contar el tiempo (timer) y validar que el estado del botón se mantenga estable, descartando fluctuaciones rápidas de tensión.

*   **tick:** Variable utilizada como contador regresivo para implementar el retardo del filtro antirrebote. Se inicializa con el valor constante `DEL_BTN_50ms`.
*   **[tick > 0] / [tick == 0]:** Guardas que condicionan las transiciones. Sirven para decidir si el sensor debe seguir esperando a que pase el tiempo de rebote o si ya puede confirmar el nuevo estado.

## Acciones (Efectos)
Las acciones del modelo Sensor se limitan a la gestión de su propio temporizador y, una vez validado un estado estable, a despachar las señales correspondientes (Acciones que son Eventos para el modelo System).

*   **tick=DEL_BTN_50ms:** Acción de inicialización de la variable de control (timer) al detectar un flanco en el pulsador.
*   **tick--:** Modificación (decremento) de la variable de control en cada ciclo de 1mS mientras se espera la estabilización.
*   **->EV_SYS_DOWN:** Envía la señal validada al modelo System indicando que el botón fue presionado.
*   **->EV_SYS_UP:** Envía la señal validada al modelo System indicando que el botón fue liberado.


## Tabla de transiciones
| Current State | Event | [guard] | Next State | Action |
| :----- | :---------------------: | :------: | :-------: | :-------: |
| ST_BTN_UP | EV_BTN_UP | x | - | - |
| ST_BTN_UP | EV_BTN_DOWN | x | ST_BTN_FALLING | tick=DEL_BTN_50ms |
| ST_BTN_FALLING | x | tick > 0 | - | tick-- |
| ST_BTN_FALLING | EV_BTN_UP | tick == 0 | ST_BTN_UP | - |
| ST_BTN_FALLING | EV_BTN_DOWN | tick == 0 | ST_BTN_DOWN | ->EV_SYS_DOWN |
| ST_BTN_DOWN | EV_BTN_DOWN | x | - | - |
| ST_BTN_DOWN | EV_BTN_DOWN | x | ST_BTN_FALLING | tick=DEL_BTN_50ms |
| ST_BTN_RISING | x | tick > 0 | - | tick-- |
| ST_BTN_RISING | EV_BTN_DOWN | tick == 0 | ST_BTN_DOWN | - |
| ST_BTN_RISING | EV_BTN_UP | tick == 0 | ST_BTN_UP | ->EV_SYS_UP |
