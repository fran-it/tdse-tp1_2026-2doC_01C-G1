# Modelo System (Sistema Central)

El modelo **System** es el encargado de procesar la lógica de negocio de la máquina expendedora de tickets. Funciona bajo un esquema de ejecución cíclica no bloqueante (*Update by Time Code*), evaluado cada 1 milisegundo, recibiendo información de los sensores y enviando comandos a los actuadores.

## Eventos (Triggers)
Los eventos que despiertan la máquina de estados del System provienen principalmente de los mensajes (signals) enviados por el modelo Sensor, o por los ticks del sistema.

*   **e_Tick_1mS:** Evento periódico generado cada 1 milisegundo, utilizado para evaluar tiempos de espera o timeout.
*   **EV_SYS_BTN_PRESSED:** Señal (signal) recibida desde el modelo Sensor que indica que el botón fue presionado exitosamente (validado sin rebotes).
*   **EV_SYS_CAR_ARRIVED:** Señal (signal) recibida desde el modelo Sensor (emulando la cámara) que indica la presencia de un vehículo en la entrada.
*   **EV_SYS_CAR_LEFT:** Señal (signal) recibida desde el modelo Sensor (emulando la bobina sensora) que indica que el vehículo ha avanzado y liberado la barrera.

## Variables de Control y Guardas
El sistema puede necesitar variables internas, principalmente contadores de tiempo, para condicionar el paso entre estados.

*   **v_System_Timer:** Variable interna utilizada para llevar la cuenta del tiempo (en milisegundos) que el sistema pasa en un estado determinado.
*   **[v_System_Timer >= T_TIMEOUT]:** Guarda que habilita una transición de retorno al estado inicial si un proceso tarda demasiado (ej. un auto llega pero nunca presiona el botón).

## Acciones (Efectos)
Las acciones del modelo System consisten en modificar variables internas o, fundamentalmente, en enviar señales (Eventos) hacia el modelo Actuator para que este último ejecute las acciones físicas correspondientes.

*   **a_Timer_Reset:** Reinicia a cero la variable `v_System_Timer`.
*   **a_Timer_Increment:** Incrementa en una unidad la variable `v_System_Timer`.
*   **SIG_ACT_PRINT_TICKET:** Envía una señal al modelo Actuator para que encienda el LED que emula la impresora de tickets.
*   **SIG_ACT_OPEN_BARRIER:** Envía una señal al modelo Actuator para que encienda el LED que emula la apertura de la barrera.
*   **SIG_ACT_CLOSE_BARRIER:** Envía una señal al modelo Actuator para que apague el LED que emula la barrera (cerrándola).
*   **SIG_ACT_NOTIFY_SERVER:** Envía una señal al modelo Actuator para que encienda el LED que emula el aviso al servidor de que el auto ha ingresado.
