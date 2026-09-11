# Modelo Actuator (Módulo Actuar)

El modelo **Actuator** es el encargado de traducir las decisiones lógicas procesadas por el sistema central en acciones físicas sobre el hardware de la terminal de estacionamiento. Al igual que los demás módulos, opera bajo un esquema de ejecución cíclica no bloqueante (*Update by Time Code*), evaluado cada 1 milisegundo mediante el evento generado por el SysTick del microcontrolador.

## Eventos (Triggers)
Los eventos que despiertan la máquina de estados del Actuator no provienen del entorno físico directamente, sino de las señales de control (signals) enviadas por el modelo **System** y del reloj del sistema.

*   **e_Tick_1mS:** Evento periódico generado cada 1 milisegundo, utilizado para gestionar el tiempo durante el cual una salida debe permanecer activa (por ejemplo, el tiempo que tarda la barrera en subir).
*   **SIG_ACT_PRINT_TICKET:** Señal de entrada que solicita iniciar la acción de emitir un ticket.
*   **SIG_ACT_OPEN_BARRIER:** Señal de entrada que solicita iniciar la apertura de la barrera.
*   **SIG_ACT_CLOSE_BARRIER:** Señal de entrada que solicita iniciar el cierre de la barrera.
*   **SIG_ACT_NOTIFY_SERVER:** Señal de entrada que solicita enviar el aviso al servidor de cobro.

## Variables de Control y Guardas
Para evitar el uso de código bloqueante (como la función `HAL_Delay()`) al accionar dispositivos físicos, el actuador requiere variables internas para temporizar sus estados.

*   **v_Actuator_Timer:** Variable interna que funciona como un contador de ticks para mantener una salida activada por un tiempo determinado sin detener el flujo general del programa.
*   **[v_Actuator_Timer > 0] / [v_Actuator_Timer == 0]:** Guardas que habilitan que la máquina de estados permanezca en un estado de actuación, o que pase a un estado de reposo tras concluir el tiempo necesario para la acción.

## Acciones (Efectos)
Las acciones del modelo Actuator consisten en modificar sus propios temporizadores internos y en alterar el estado eléctrico de los pines de salida digital (GPIOs). Para esta etapa de prototipado, todos los actuadores reales se simulan mediante LEDs.

*   **a_Timer_Reset / a_Timer_Decrement:** Inicializa o reduce el contador de tiempo de la acción en curso.
*   **a_Led_Printer_On / a_Led_Printer_Off:** Modifica el nivel lógico del pin para encender/apagar el LED que representa el motor de la impresora.
*   **a_Led_Barrier_On / a_Led_Barrier_Off:** Modifica el nivel lógico del pin para encender/apagar el LED que representa la activación de la barrera.
*   **a_Led_Server_Pulse:** Genera una secuencia no bloqueante (encendido y luego apagado tras un retardo por timer) en el LED que representa la transmisión de red hacia el servidor.

*   ### Actuator Statechart - State Transition Table

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :---: | :---: | :---: |
| ST_ACT_IDLE | SIG_ACT_PRINT_TICKET | - | ST_ACT_PRINTING | a_Led_Printer_On, v_Actuator_Timer=T_PRINT |
| ST_ACT_PRINTING | e_Tick_1mS | [v_Actuator_Timer > 0] | ST_ACT_PRINTING | v_Actuator_Timer-- |
| ST_ACT_PRINTING | e_Tick_1mS | [v_Actuator_Timer == 0] | ST_ACT_IDLE | a_Led_Printer_Off |
| ST_ACT_IDLE | SIG_ACT_OPEN_BARRIER | - | BARRIER_OPENING | a_Led_Barrier_On, v_Actuator_Timer=T_BARRIER |
| ST_ACT_BARRIER_OPENING | e_Tick_1mS | [v_Actuator_Timer > 0] | ST_ACT_BARRIER_OPENING | v_Actuator_Timer-- |
| ST_ACT_BARRIER_OPENING | e_Tick_1mS | [v_Actuator_Timer == 0] | ST_ACT_IDLE | - |
| ST_ACT_IDLE | SIG_ACT_CLOSE_BARRIER | - | ST_ACT_BARRIER_CLOSING | a_Led_Barrier_Off, v_Actuator_Timer=T_BARRIER |
| ST_ACT_BARRIER_CLOSING | e_Tick_1mS | [v_Actuator_Timer > 0] | ST_ACT_BARRIER_CLOSING | v_Actuator_Timer-- |
| ST_ACT_BARRIER_CLOSING | e_Tick_1mS | [v_Actuator_Timer == 0] | ST_ACT_IDLE | - |
| ST_ACT_IDLE | SIG_ACT_NOTIFY_SERVER | - | NOTIFYING | a_Led_Server_Pulse, v_Actuator_Timer=T_NOTIFY |
| ST_ACT_NOTIFYING | e_Tick_1mS | [v_Actuator_Timer > 0] | ST_ACT_NOTIFYING | v_Actuator_Timer-- |
| ST_ACT_NOTIFYING | e_Tick_1mS | [v_Actuator_Timer == 0] | IDLE | - |
