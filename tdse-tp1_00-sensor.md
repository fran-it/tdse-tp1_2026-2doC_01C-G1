## Eventos (Triggers)
Los eventos que despiertan la máquina de estados del System provienen principalmente de los mensajes (signals) enviados por el modelo Sensor, o por los ticks del sistema.

*   **e_Tick_1mS:** Evento periódico generado cada 1 milisegundo, utilizado para evaluar tiempos de espera o timeout.
*   **EV_SYS_UP:** Señal recibida desde el modelo Sensor que indica que el botón fue liberado exitosamente.
*   **EV_SYS_DOWN:** Señal recibida desde el modelo Sensor que indica que el botón fue presionado exitosamente.
*   **EV_SYS_CAR_ARRIVED:** Señal recibida desde el modelo Sensor (emulando la cámara) que indica la presencia de un vehículo en la entrada.
*   **EV_SYS_CAR_LEFT:** Señal recibida desde el modelo Sensor (emulando la bobina sensora) que indica que el vehículo ha avanzado y liberado la barrera.

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
