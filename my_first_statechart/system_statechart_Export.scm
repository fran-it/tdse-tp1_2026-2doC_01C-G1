{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "attrs": {
          "name": {
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n  in event e_Tick_1mS\n  in event EV_SYS_UP\n  in event EV_SYS_DOWN\n  in event EV_SYS_CAR_ARRIVED\n  in event EV_SYS_CAR_LEFT\n  \n  out event SIG_ACT_PRINT_TICKET\n  out event SIG_ACT_OPEN_BARRIER\n  out event SIG_ACT_CLOSE_BARRIER\n  out event SIG_ACT_NOTIFY_SERVER\n\ninternal:\n  var v_System_Timer: integer\n  const T_TIMEOUT: integer = 5000"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 95,
          "y": 208
        },
        "size": {
          "width": 166,
          "height": 65
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_IDLE",
            "fontSize": 11
          }
        },
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 63,
        "embeds": [
          "4cc281a7-8a11-44ed-9cf5-7ffc3ce33426",
          "a6251ba1-9745-4b1b-9356-6ab199c17f0f",
          "2fe046e0-d376-47c4-a783-37c57fa54b8f"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.139%",
              "dy": "98.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN"
              }
            },
            "position": {
              "distance": 0.38504143165533233,
              "offset": 10.000000000000057,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2fe046e0-d376-47c4-a783-37c57fa54b8f",
        "z": 64,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 102,
            "y": 324
          },
          {
            "x": 122,
            "y": 361
          },
          {
            "x": 214,
            "y": 361
          },
          {
            "x": 237.99,
            "y": 334
          }
        ],
        "parent": "36b8548a-74b1-4925-ae23-291c03231ee6"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "13.855%",
              "dy": "98.462%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "80.12%",
              "dy": "96.923%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_UP"
              }
            },
            "position": {
              "distance": 0.3902633223517989,
              "offset": 9,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a6251ba1-9745-4b1b-9356-6ab199c17f0f",
        "z": 69,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 186,
            "y": 334
          }
        ],
        "parent": "36b8548a-74b1-4925-ae23-291c03231ee6"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "26.506%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "74.096%",
              "dy": "98.462%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_CAR_LEFT"
              }
            },
            "position": {
              "distance": 0.5017932640167538,
              "offset": 8,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4cc281a7-8a11-44ed-9cf5-7ffc3ce33426",
        "z": 70,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 198.54,
            "y": 308
          }
        ],
        "parent": "36b8548a-74b1-4925-ae23-291c03231ee6"
      },
      {
        "position": {
          "x": 889,
          "y": 208
        },
        "size": {
          "height": 60,
          "width": 101
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_PRINT",
            "fontSize": 11
          }
        },
        "id": "a50f2d06-5eb7-4ec8-bcad-8937a392da1d",
        "z": 81,
        "embeds": []
      },
      {
        "position": {
          "x": 128,
          "y": 127
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 88,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 128,
          "y": 142
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 89,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 90
      },
      {
        "position": {
          "x": 544,
          "y": 207
        },
        "size": {
          "width": 142,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_WAIT_BTN",
            "fontSize": 11
          }
        },
        "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a",
        "z": 95,
        "embeds": [
          "ec8dfa28-7ef1-49a3-9490-3f4cba5694a8"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "1.408%",
              "dy": "53.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_CAR_ARRIVED / v_System_Timer = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7faaf7d3-ec54-454c-808c-611275c89f3e",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "46.988%",
              "dy": "4.615%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "e_Tick_1mS [v_System_Timer >= T_TIMEOUT] / v_System_Timer = 0"
              }
            },
            "position": {
              "distance": 0.5115282357867781,
              "offset": 10.999999999999972,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5c5ab0ee-6357-4296-9c23-9cd4e375d120",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 398,
            "y": 152
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.704%",
              "dy": "3.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "72.892%",
              "dy": "26.154%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_CAR_LEFT / v_System_Timer = 0"
              }
            },
            "position": {
              "distance": 0.5249090043361071,
              "offset": 8,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "dd93a3a3-800b-47e1-bb6a-e867c6c41b96",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 393,
            "y": 183
          },
          {
            "x": 355,
            "y": 183
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a"
        },
        "target": {
          "id": "a50f2d06-5eb7-4ec8-bcad-8937a392da1d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "21.782%",
              "dy": "50%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_DOWN / v_System_Timer = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1e84f84f-49c9-4d42-ba56-08e093d01ccb",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "8.451%",
              "dy": "98.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "2be248b4-1666-4eb2-b440-fe88bdccf71a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "85.915%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "e_Tick_1mS / v_System_Timer += 1"
              }
            },
            "position": {
              "distance": 0.6476436995888957,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ec8dfa28-7ef1-49a3-9490-3f4cba5694a8",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 594,
            "y": 289
          }
        ],
        "parent": "2be248b4-1666-4eb2-b440-fe88bdccf71a"
      },
      {
        "position": {
          "x": 855,
          "y": 416
        },
        "size": {
          "width": 167,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_OPEN_BARRIER",
            "fontSize": 11
          }
        },
        "id": "75635762-e230-4d12-b546-84ff618745ab",
        "z": 110
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a50f2d06-5eb7-4ec8-bcad-8937a392da1d"
        },
        "target": {
          "id": "75635762-e230-4d12-b546-84ff618745ab",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.299%",
              "dy": "10%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "always / raise SIG_ACT_PRINT_TICKET"
              }
            },
            "position": {
              "distance": 0.4659090909090909,
              "offset": -98,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1bd64243-e1b4-4409-afb9-07ef0e512b34",
        "z": 111,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 493,
          "y": 415
        },
        "size": {
          "width": 154,
          "height": 61
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_WAIT_CAR",
            "fontSize": 11
          }
        },
        "id": "51501a60-12c5-4ce8-9acf-0170ad9a60da",
        "z": 112,
        "embeds": [
          "a34302cb-3136-455a-9008-086e8caaacb6"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "75635762-e230-4d12-b546-84ff618745ab"
        },
        "target": {
          "id": "51501a60-12c5-4ce8-9acf-0170ad9a60da",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "85.714%",
              "dy": "50.82%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "always / raise SIG_ACT_OPEN_BARRIER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "10084a37-7ba9-4679-8a4c-eb1f4900545a",
        "z": 113,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "51501a60-12c5-4ce8-9acf-0170ad9a60da",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.688%",
              "dy": "90.164%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "51501a60-12c5-4ce8-9acf-0170ad9a60da",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "77.273%",
              "dy": "77.049%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "e_Tick_1mS / v_System_Timer += 1"
              }
            },
            "position": {
              "distance": 0.5509234423142063,
              "offset": 8,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a34302cb-3136-455a-9008-086e8caaacb6",
        "z": 113,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "51501a60-12c5-4ce8-9acf-0170ad9a60da"
      },
      {
        "position": {
          "x": 82,
          "y": 409
        },
        "size": {
          "width": 162,
          "height": 67
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_CLOSE_BARRIER",
            "fontSize": 11
          }
        },
        "id": "1fb891e4-fab0-4c40-b834-50e1cd52a2e3",
        "z": 123
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "51501a60-12c5-4ce8-9acf-0170ad9a60da"
        },
        "target": {
          "id": "1fb891e4-fab0-4c40-b834-50e1cd52a2e3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "46.269%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_CAR_LEFT / raise SIG_ACT_CLOSE_BARRIER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a37def73-7ba6-410b-8c4d-8bc3bde0f169",
        "z": 124,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 111,
          "y": 582
        },
        "size": {
          "height": 60,
          "width": 101
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_NOTIFY",
            "fontSize": 11
          }
        },
        "id": "268d0f3f-e534-45c4-9d28-e8c83f4784e4",
        "z": 128
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1fb891e4-fab0-4c40-b834-50e1cd52a2e3"
        },
        "target": {
          "id": "268d0f3f-e534-45c4-9d28-e8c83f4784e4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.455%",
              "dy": "36.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "always / raise SIG_ACT_CLOSE_BARRIER"
              }
            },
            "position": {
              "distance": 0.5283018867924528,
              "offset": -104,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a498f270-91bf-4e28-b96b-81ab2f2ee5f1",
        "z": 129,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "268d0f3f-e534-45c4-9d28-e8c83f4784e4"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0%",
              "dy": "30.769%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "always / raise SIG_ACT_NOTIFY_SERVER"
              }
            },
            "position": {
              "distance": 0.12280142500063163,
              "offset": -55.91508769019746,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d0344fdd-d9c6-41e2-81c9-6cc20a28159b",
        "z": 132,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 56,
            "y": 604
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1fb891e4-fab0-4c40-b834-50e1cd52a2e3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "98.148%",
              "dy": "32.836%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.398%",
              "dy": "72.308%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "e_Tick_1mS [v_System_Timer >= T_TIMEOUT] / v_System_Timer = 0"
              }
            },
            "position": {
              "distance": 0.540276301914989,
              "offset": 170.50833129882812,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8c0c120c-02ed-4120-a8db-483f116305e9",
        "z": 133,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 285,
            "y": 399
          }
        ]
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "MyFirstStatechart",
          "statemachinePrefix": "myFirstStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}