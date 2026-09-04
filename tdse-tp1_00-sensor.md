## Eventos (Triggers)

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
