# FIUBA - Electrónica - Taller de Sistemas Embebidos
## Trabajo Práctico N°: 1 - Diagramas de Estado - Modelado
### 2026-2doC - 01C-G1
### Responsable de la entrega: Itria, Franco
| Padrón | Apellidos, Nombres | Fecha | Deadline |
| :----- | :--------------------- | :------: | :-------: |
| 110191 | Itria, Franco | 2026-09-04 | Semana 04 |
| 112109 | Santander, Cristian | 2026-09-04 | Semana 04 |
| 111546 | Flores Quiroga, Tobías | 2026-09-04 | Semana 04 |


# Sistema Inteligente de Gestión de Estacionamiento

## Descripción de la solución de COMA Electronics
De acuerdo con la referencia "3.1.- TA134 - TdSE - 1er Proyecto", la solución de COMA Electronics está estructurada en un sistema integral conocido como **Intelligent Parking Management System**. Este consta de los siguientes elementos principales:
- **Parking System Server:** Servidor central encargado de la gestión del sistema.
- **Entry Machine & Exit Machine:** Terminales ubicadas en la entrada y salida, con diversas opciones de configuración disponibles.
- **Toll Computer / Automatic Pay Station:** Estaciones dedicadas al cobro y validación de pagos.

Dentro de este ecosistema funciona el **Automated Parking System**, cuyo flujo es el siguiente:
1. El vehículo arriba a la terminal de entrada (*Entry Machine*).
2. El conductor presiona un botón, emitiéndose un ticket/tarjeta con un número de serie, fecha y hora. En este instante, se envía una señal para abrir la barrera.
3. El cliente retira el ticket y se dirige a la estación de cobro central para realizar el pago antes de retornar a su vehículo.
4. Al llegar a la terminal de salida, el sistema lee el ticket previamente validado y ordena a la barrera que se abra, permitiendo la salida.

## Implementación de Parking Ticket Dispenser Machine (Entry)
La implementación solicitada se centra en la terminal de entrada o **Parking Ticket Dispenser Machine (Entry)**. Su hardware (o su emulación) incluye:
- Pantalla LCD de 7 pulgadas
- Lector de tarjetas y botón de ayuda
- Ranura y botón para ticket
- Sistema de avisos por voz (Voice prompt)
- Intercomunicador (opcional)
- Cámara motorizada, barrera de alta velocidad (ambas activadas por radar) y un display LED para cupos vacantes.

### Modelos de comportamiento (Código C temporizado)
La arquitectura de software de la terminal está disgregada en módulos. Cada módulo se rige por un esquema de ejecución cíclica no bloqueante (*Update by Time Code*, evaluado cada 1 milisegundo) para asegurar un comportamiento "comunitario" en el uso de la CPU. La comunicación y sincronización se realiza estrictamente a través de paso de mensajes. 

El modelo se divide en tres etapas:
1. **Escrutar (Scrutinize) => Sensor (Entradas Digitales):** Se encarga de monitorear el entorno.
   - *Nota de hardware:* Los sensores reales serán reemplazados por llaves (interruptores tipo dip switch) u On/Off para la cámara (*Camera*) y la bobina sensora (*Sensor coil*), y por un pulsador para el botón (*Button*).
2. **Procesar (Process) => System (Sistema Central):** Recibe los mensajes del módulo de escrutinio, ejecuta la lógica de estado (ej: si hay un auto y se presiona el botón, enviar mensaje para imprimir ticket y abrir barrera) y envía instrucciones.
3. **Actuar (Act) => Actuator (Salidas Digitales):** Traduce los mensajes del sistema en acciones físicas.
   - *Nota de hardware:* Los actuadores reales como la pantalla (*Display*), impresora (*Printer*), barrera (*Barrier*) y servidor (*Server*) serán representados mediante LEDs (Digital Outputs).
