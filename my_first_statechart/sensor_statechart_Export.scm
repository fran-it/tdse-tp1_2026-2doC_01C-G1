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
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n    var tick: integer\n    const DEL_BTN_50ms: integer = 50\n\ninterface: \n    in event myEvent\n    in event EV_BTN_UP\n    in event EV_BTN_DOWN\n    in event e_Tick_1ms"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 179,
          "y": 200
        },
        "size": {
          "width": 101,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_UP",
            "fontSize": 11
          }
        },
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 18,
        "embeds": [
          "1ea170ae-ffa4-46f1-af0b-48c28f5f1ac6"
        ]
      },
      {
        "position": {
          "x": 196,
          "y": 131
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 28,
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
          "x": 196,
          "y": 146
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
        "z": 29,
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
        "z": 30
      },
      {
        "position": {
          "x": 607,
          "y": 201
        },
        "size": {
          "width": 106,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_FALLING",
            "fontSize": 11
          },
          "specification": {
            "text": "entry/\ntick -= 1"
          }
        },
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 34,
        "embeds": [
          "8ca34d05-09c6-4d1f-aaeb-4168e3f06b31"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.667%",
              "dy": "48.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "6.667%",
              "dy": "46.667%",
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
                "text": "EV_BTN_DOWN / tick = DEL_BTN_50ms"
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
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "id": "7197094a-c890-4098-9170-1701f27ac3cb",
        "z": 35,
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "55.66%",
              "dy": "0%",
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
              "dx": "70.297%",
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
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick == 0]"
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
        "id": "2d0d5d92-7561-4778-9f19-025eed49cb9d",
        "z": 35,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 650,
            "y": 177
          },
          {
            "x": 486,
            "y": 177
          }
        ]
      },
      {
        "position": {
          "x": 612,
          "y": 388
        },
        "size": {
          "height": 60,
          "width": 101
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_DOWN",
            "fontSize": 11
          }
        },
        "id": "a6c5697a-594c-4bcf-b131-3c3a822f789b",
        "z": 36,
        "embeds": [
          "bce26eb1-5753-4162-9136-1fbe0d95db06"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "a6c5697a-594c-4bcf-b131-3c3a822f789b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.01%",
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
                "text": "EV_BTN_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.4895638107496762,
              "offset": -67,
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
        "id": "b52976a8-36e8-4b82-b031-ff168a3ecaa4",
        "z": 37,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 767,
            "y": 268
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a6c5697a-594c-4bcf-b131-3c3a822f789b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.129%",
              "dy": "3.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "a6c5697a-594c-4bcf-b131-3c3a822f789b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "20.792%",
              "dy": "8.333%",
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
                "text": "EV_BTN_DOWN"
              }
            },
            "position": {
              "distance": 0.5011632100017003,
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
        "id": "bce26eb1-5753-4162-9136-1fbe0d95db06",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 657,
            "y": 364
          }
        ],
        "parent": "a6c5697a-594c-4bcf-b131-3c3a822f789b"
      },
      {
        "position": {
          "x": 173,
          "y": 386
        },
        "size": {
          "height": 60,
          "width": 106
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING",
            "fontSize": 11
          },
          "specification": {
            "text": "entry/\ntick -= 1"
          }
        },
        "id": "ad140f0c-9769-436e-8cf1-99e711223b84",
        "z": 42,
        "embeds": [
          "60b7e6c7-5dd9-42dc-9244-fe74c8429ef0"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a6c5697a-594c-4bcf-b131-3c3a822f789b"
        },
        "target": {
          "id": "ad140f0c-9769-436e-8cf1-99e711223b84",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.057%",
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
                "text": "EV_BTN_UP / tick = DEL_BTN_50ms"
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
        "id": "9c9789c4-5c8d-4f21-a69d-55dfd1f32283",
        "z": 43,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ad140f0c-9769-436e-8cf1-99e711223b84",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "21.698%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "ad140f0c-9769-436e-8cf1-99e711223b84",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "79.245%",
              "dy": "96.667%",
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
                "text": "e_Tick_1ms [tick > 0] / tick -=1"
              }
            },
            "position": {
              "distance": 0.6639163718588331,
              "offset": -11.759918212890625,
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
        "id": "60b7e6c7-5dd9-42dc-9244-fe74c8429ef0",
        "z": 43,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 196,
            "y": 364
          }
        ],
        "parent": "ad140f0c-9769-436e-8cf1-99e711223b84"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ad140f0c-9769-436e-8cf1-99e711223b84",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "44.34%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "a6c5697a-594c-4bcf-b131-3c3a822f789b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "58.416%",
              "dy": "71.667%",
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
                "text": "EV_BTN_DOWN [tick == 0]"
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
        "id": "476d2cad-8b31-40f6-8783-cbc67e0ed3c7",
        "z": 44,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 465,
            "y": 470
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "95%",
              "dy": "98.333%",
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
              "dx": "12.871%",
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
                "text": "EV_BTN_UP"
              }
            },
            "position": {
              "distance": 0.5251127768042397,
              "offset": -8,
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
        "id": "1ea170ae-ffa4-46f1-af0b-48c28f5f1ac6",
        "z": 45,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "36b8548a-74b1-4925-ae23-291c03231ee6"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "21.698%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.736%",
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
                "text": "e_Tick_1ms [tick > 0] / tick -=1"
              }
            },
            "position": {
              "distance": 0.4831168419078632,
              "offset": 12,
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
        "id": "8ca34d05-09c6-4d1f-aaeb-4168e3f06b31",
        "z": 46,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 651,
            "y": 289
          }
        ],
        "parent": "db372094-acc6-467b-b44d-495606208445"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ad140f0c-9769-436e-8cf1-99e711223b84",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "9.434%",
              "dy": "53.333%",
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
              "dx": "0%",
              "dy": "55%",
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
                "text": "EV_BTN_UP [tick == 0]"
              }
            },
            "position": {
              "distance": 0.507828976039819,
              "offset": 60,
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
        "id": "8b3b0f03-f673-46dc-bf42-fd56300603ca",
        "z": 47,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 137,
            "y": 395
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