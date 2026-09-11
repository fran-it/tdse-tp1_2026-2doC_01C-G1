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
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n  in event e_Tick_1mS\n  in event SIG_ACT_PRINT_TICKET\n  in event SIG_ACT_OPEN_BARRIER\n  in event SIG_ACT_CLOSE_BARRIER\n  in event SIG_ACT_NOTIFY_SERVER\n  \n  out event a_Led_Printer_On\n  out event a_Led_Printer_Off\n  out event a_Led_Barrier_On\n  out event a_Led_Barrier_Off\n  out event a_Led_Server_Pulse\n\ninternal:\n  var v_Actuator_Timer: integer\n  const T_PRINT: integer = 2000 \n  const T_BARRIER: integer = 3000\n  const T_NOTIFY: integer = 500"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 84,
          "y": 196
        },
        "size": {
          "width": 98,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_IDLE",
            "fontSize": 11
          }
        },
        "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
        "z": 96
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
        "z": 98,
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
        "z": 99,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "52.041%",
              "dy": "0%",
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
        "id": "7dcad1d6-73e1-4981-8da2-a630fa7049a4",
        "z": 100,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 604,
          "y": 197
        },
        "size": {
          "height": 60,
          "width": 98
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_PRINTING",
            "fontSize": 11
          }
        },
        "id": "22828249-c987-4039-9259-4b41ea09088c",
        "z": 111,
        "embeds": [
          "65cca5e4-a41f-4f85-a968-627467af0b2a"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056"
        },
        "target": {
          "id": "22828249-c987-4039-9259-4b41ea09088c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "19.388%",
              "dy": "63.333%",
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
                "text": "SIG_ACT_PRINT_TICKET / raise a_Led_Printer_On; v_Actuator_Timer = T_PRINT"
              }
            },
            "position": {
              "distance": 0.504739336492891,
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
        "id": "c464b4ac-b349-47db-8291-d47dd75a74b9",
        "z": 112,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "22828249-c987-4039-9259-4b41ea09088c"
        },
        "target": {
          "id": "22828249-c987-4039-9259-4b41ea09088c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.429%",
              "dy": "43.333%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer > 0] / v_Actuator_Timer -= 1"
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
        "id": "65cca5e4-a41f-4f85-a968-627467af0b2a",
        "z": 113,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "22828249-c987-4039-9259-4b41ea09088c"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "22828249-c987-4039-9259-4b41ea09088c"
        },
        "target": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.735%",
              "dy": "26.667%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer == 0] / raise a_Led_Printer_Off"
              }
            },
            "position": {
              "distance": 0.4976303317535545,
              "offset": 6,
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
        "id": "b02b4274-ef81-46cb-b7f9-edb6c225e0d7",
        "z": 114,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 558,
          "y": 330
        },
        "size": {
          "width": 146,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_BARRIER_OPENING",
            "fontSize": 11
          }
        },
        "id": "09dcb24a-f74d-4dc3-91c3-a745c69c283c",
        "z": 117,
        "embeds": [
          "00e7e863-eaef-4d95-884f-1c376ae8fd60"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056"
        },
        "target": {
          "id": "09dcb24a-f74d-4dc3-91c3-a745c69c283c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.342%",
              "dy": "66.667%",
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
                "text": "SIG_ACT_OPEN_BARRIER / raise a_Led_Barrier_On; v_Actuator_Timer = T_BARRIER"
              }
            },
            "position": {
              "distance": 0.6007562158154327,
              "offset": 10,
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
        "id": "5a19a9a1-e94a-4806-89cd-9fcd8375cb8a",
        "z": 118,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 354,
            "y": 370
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "09dcb24a-f74d-4dc3-91c3-a745c69c283c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.384%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "09dcb24a-f74d-4dc3-91c3-a745c69c283c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "85.616%",
              "dy": "3.333%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer > 0] / v_Actuator_Timer -= 1"
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
        "id": "00e7e863-eaef-4d95-884f-1c376ae8fd60",
        "z": 119,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 631,
            "y": 306
          }
        ],
        "parent": "09dcb24a-f74d-4dc3-91c3-a745c69c283c"
      },
      {
        "position": {
          "x": -541,
          "y": 196
        },
        "size": {
          "width": 146,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_BARRIER_CLOSING",
            "fontSize": 11
          }
        },
        "id": "ccbb7d6b-19b8-4bd8-bd4e-49308bfd0c4b",
        "z": 144,
        "embeds": [
          "9e91065f-b4da-4130-b85f-350155bd4beb"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ccbb7d6b-19b8-4bd8-bd4e-49308bfd0c4b"
        },
        "target": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "35.714%",
              "dy": "68.333%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer == 0]"
              }
            },
            "position": {
              "distance": 0.48956158663883087,
              "offset": 9,
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
        "id": "d1a9b797-9a69-47a0-8d32-89cb8d26d581",
        "z": 145,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056"
        },
        "target": {
          "id": "ccbb7d6b-19b8-4bd8-bd4e-49308bfd0c4b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "38.333%",
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
                "text": "SIG_ACT_CLOSE_BARRIER / raise a_Led_Barrier_Off; v_Actuator_Timer = T_BARRIER"
              }
            },
            "position": {
              "distance": 0.4963571632082627,
              "offset": 9,
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
        "id": "7f1c6775-4c28-4772-b5b8-3a901f111e5a",
        "z": 146,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ccbb7d6b-19b8-4bd8-bd4e-49308bfd0c4b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.644%",
              "dy": "20%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "ccbb7d6b-19b8-4bd8-bd4e-49308bfd0c4b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "88.356%",
              "dy": "1.667%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer > 0] / v_Actuator_Timer -= 1"
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
        "id": "9e91065f-b4da-4130-b85f-350155bd4beb",
        "z": 147,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -461,
            "y": 172
          }
        ],
        "parent": "ccbb7d6b-19b8-4bd8-bd4e-49308bfd0c4b"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "09dcb24a-f74d-4dc3-91c3-a745c69c283c"
        },
        "target": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.429%",
              "dy": "80%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer == 0]"
              }
            },
            "position": {
              "distance": 0.43653700343360374,
              "offset": 7,
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
        "id": "a7677fa6-17ef-4a17-8fb7-75a657fce06b",
        "z": 150,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 354,
            "y": 340
          }
        ]
      },
      {
        "position": {
          "x": -543,
          "y": 309
        },
        "size": {
          "width": 116,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ACT_NOTIFYING",
            "fontSize": 11
          }
        },
        "id": "7d1d5067-422c-427d-9d89-2dc12262720d",
        "z": 152,
        "embeds": [
          "6b8f4a50-ca98-45d5-977e-89d0dbdfab0a"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "30.612%",
              "dy": "98.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "7d1d5067-422c-427d-9d89-2dc12262720d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.138%",
              "dy": "88.333%",
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
                "text": "SIG_ACT_NOTIFY_SERVER / raise a_Led_Server_Pulse; v_Actuator_Timer = T_NOTIFY"
              }
            },
            "position": {
              "distance": 0.5839240200321234,
              "offset": -10,
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
        "id": "4b596d77-feeb-4b35-878b-d9ab64300234",
        "z": 153,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -99,
            "y": 362
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7d1d5067-422c-427d-9d89-2dc12262720d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.862%",
              "dy": "3.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "7d1d5067-422c-427d-9d89-2dc12262720d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "77.586%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer > 0] / v_Actuator_Timer -= 1"
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
        "id": "6b8f4a50-ca98-45d5-977e-89d0dbdfab0a",
        "z": 153,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "7d1d5067-422c-427d-9d89-2dc12262720d"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7d1d5067-422c-427d-9d89-2dc12262720d"
        },
        "target": {
          "id": "7ec64393-2859-4999-9ca8-e9ce95385056",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.224%",
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
                "text": "e_Tick_1mS [v_Actuator_Timer == 0]"
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
        "id": "01cb9332-0c1f-45ce-8ae6-3522aa45f1a5",
        "z": 154,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
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