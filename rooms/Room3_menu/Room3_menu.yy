{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "Room3_menu",
  "creationCodeFile": "${project_dir}/rooms/Room3_menu/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    { "name": "inst_1FC036E1", "path": "rooms/Room3_menu/Room3_menu.yy" },
    { "name": "inst_695AFAE5", "path": "rooms/Room3_menu/Room3_menu.yy" }
  ],
  "isDnd": false,
  "layers": [
    {
      "resourceType": "GMRInstanceLayer",
      "resourceVersion": "1.0",
      "name": "Instances_1",
      "depth": 0,
      "effectEnabled": true,
      "effectType": "none",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "instances": [
        {
          "resourceType": "GMRInstance",
          "resourceVersion": "1.0",
          "name": "inst_1FC036E1",
          "colour": 4294967295,
          "frozen": false,
          "hasCreationCode": false,
          "ignore": false,
          "imageIndex": 0,
          "imageSpeed": 1.0,
          "inheritCode": false,
          "inheritedItemId": null,
          "inheritItemSettings": false,
          "isDnd": false,
          "objectId": {
            "name": "obj_botao_jogar",
            "path": "objects/obj_botao_jogar/obj_botao_jogar.yy"
          },
          "properties": [],
          "rotation": 0.0,
          "scaleX": 1.0,
          "scaleY": 1.0,
          "x": 960.0,
          "y": 736.0
        },
        {
          "resourceType": "GMRInstance",
          "resourceVersion": "1.0",
          "name": "inst_695AFAE5",
          "colour": 4294967295,
          "frozen": false,
          "hasCreationCode": false,
          "ignore": false,
          "imageIndex": 0,
          "imageSpeed": 1.0,
          "inheritCode": false,
          "inheritedItemId": null,
          "inheritItemSettings": false,
          "isDnd": false,
          "objectId": {
            "name": "obj_music",
            "path": "objects/obj_music/obj_music.yy"
          },
          "properties": [],
          "rotation": 0.0,
          "scaleX": 1.0,
          "scaleY": 1.0,
          "x": 0.0,
          "y": 32.0
        }
      ],
      "layers": [],
      "properties": [],
      "userdefinedDepth": false,
      "visible": true
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_ctrl",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 100,
      "effectEnabled": true,
      "effectType": "_filter_outline",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_OutlineColour", "type": 1, "value": "#FFFFFFFF" },
        { "name": "g_OutlineRadius", "type": 0, "value": "2" },
        { "name": "g_OutlinePixelScale", "type": 0, "value": "1" }
      ],
      "spriteId": {
        "name": "spr_ctrl",
        "path": "sprites/spr_ctrl/spr_ctrl.yy"
      },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 1550,
      "y": 420
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_F",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 200,
      "effectEnabled": true,
      "effectType": "_filter_outline",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_OutlineColour", "type": 1, "value": "#FFFFFFFF" },
        { "name": "g_OutlineRadius", "type": 0, "value": "2" },
        { "name": "g_OutlinePixelScale", "type": 0, "value": "1" }
      ],
      "spriteId": { "name": "spr_f", "path": "sprites/spr_f/spr_f.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 150,
      "y": 420
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_wasd",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 300,
      "effectEnabled": true,
      "effectType": "_filter_outline",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_OutlineColour", "type": 1, "value": "#FFFFFFFF" },
        { "name": "g_OutlineRadius", "type": 0, "value": "2" },
        { "name": "g_OutlinePixelScale", "type": 0, "value": "1" }
      ],
      "spriteId": {
        "name": "spr_keywasd",
        "path": "sprites/spr_keywasd/spr_keywasd.yy"
      },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 80,
      "y": 200
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_setas",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 400,
      "effectEnabled": true,
      "effectType": "_filter_outline",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_OutlineColour", "type": 1, "value": "#FFFFFFFF" },
        { "name": "g_OutlineRadius", "type": 0, "value": "2" },
        { "name": "g_OutlinePixelScale", "type": 0, "value": "1" }
      ],
      "spriteId": {
        "name": "spr_keysetas",
        "path": "sprites/spr_keysetas/spr_keysetas.yy"
      },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 1550,
      "y": 200
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_pink",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 500,
      "effectEnabled": true,
      "effectType": "_filter_screenshake",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_Magnitude", "type": 0, "value": "6" },
        { "name": "g_ShakeSpeed", "type": 0, "value": "0.02" },
        {
          "name": "g_NoiseTexture",
          "type": 2,
          "value": "_filter_screenshake_noise"
        }
      ],
      "spriteId": {
        "name": "spr_pinkmenu",
        "path": "sprites/spr_pinkmenu/spr_pinkmenu.yy"
      },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": -130,
      "y": 500
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_frog",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 600,
      "effectEnabled": true,
      "effectType": "_filter_screenshake",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_Magnitude", "type": 0, "value": "6" },
        { "name": "g_ShakeSpeed", "type": 0, "value": "0.02" },
        {
          "name": "g_NoiseTexture",
          "type": 2,
          "value": "_filter_screenshake_noise"
        }
      ],
      "spriteId": {
        "name": "spr_frogmenu",
        "path": "sprites/spr_frogmenu/spr_frogmenu.yy"
      },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 1300,
      "y": 500
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg_menu",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 700,
      "effectEnabled": true,
      "effectType": "_filter_screenshake",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_Magnitude", "type": 0, "value": "12" },
        { "name": "g_ShakeSpeed", "type": 0, "value": "0.01" },
        {
          "name": "g_NoiseTexture",
          "type": 2,
          "value": "_filter_screenshake_noise"
        }
      ],
      "spriteId": {
        "name": "spr_logomenu",
        "path": "sprites/spr_logomenu/spr_logomenu.yy"
      },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 400,
      "y": -200
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg5",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 800,
      "effectEnabled": true,
      "effectType": "_filter_heathaze",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": true,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_Distort1Speed", "type": 0, "value": "0.064" },
        { "name": "g_Distort2Speed", "type": 0, "value": "0.08" },
        { "name": "g_Distort1Scale", "type": 0, "value": "13.3" },
        { "name": "g_Distort1Scale", "type": 0, "value": "1.3" },
        { "name": "g_Distort2Scale", "type": 0, "value": "33.3" },
        { "name": "g_Distort2Scale", "type": 0, "value": "3.3" },
        { "name": "g_Distort1Amount", "type": 0, "value": "4" },
        { "name": "g_Distort2Amount", "type": 0, "value": "4" },
        { "name": "g_ChromaSpreadAmount", "type": 0, "value": "0" },
        { "name": "g_CamOffsetScale", "type": 0, "value": "1" },
        {
          "name": "g_DistortTexture",
          "type": 2,
          "value": "_filter_heathaze_noise_sprite"
        }
      ],
      "spriteId": { "name": "spr_bg5", "path": "sprites/spr_bg5/spr_bg5.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg4",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 900,
      "effectEnabled": true,
      "effectType": null,
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": true,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [],
      "spriteId": { "name": "spr_bg3", "path": "sprites/spr_bg3/spr_bg3.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": false,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg2",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 1000,
      "effectEnabled": true,
      "effectType": "_filter_contrast",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": 0.0,
      "htiled": true,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [
        { "name": "g_ContrastIntensity", "type": 0, "value": "0.9" },
        { "name": "g_ContrastBrightness", "type": 0, "value": "1" }
      ],
      "spriteId": { "name": "spr_bg2", "path": "sprites/spr_bg2/spr_bg2.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg3",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 2197815295,
      "depth": 1100,
      "effectEnabled": true,
      "effectType": "none",
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": -0.2,
      "htiled": true,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [],
      "spriteId": { "name": "spr_bg4", "path": "sprites/spr_bg4/spr_bg4.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg1",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 2197815295,
      "depth": 1200,
      "effectEnabled": true,
      "effectType": null,
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": -0.1,
      "htiled": true,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [],
      "spriteId": { "name": "spr_bg1", "path": "sprites/spr_bg1/spr_bg1.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "bg0",
      "animationFPS": 30.0,
      "animationSpeedType": 0,
      "colour": 4294967295,
      "depth": 1300,
      "effectEnabled": true,
      "effectType": null,
      "gridX": 32,
      "gridY": 32,
      "hierarchyFrozen": false,
      "hspeed": -0.02,
      "htiled": true,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "inheritSubLayers": true,
      "inheritVisibility": true,
      "layers": [],
      "properties": [],
      "spriteId": { "name": "spr_bg0", "path": "sprites/spr_bg0/spr_bg0.yy" },
      "stretch": false,
      "userdefinedAnimFPS": false,
      "userdefinedDepth": false,
      "visible": true,
      "vspeed": 0.0,
      "vtiled": false,
      "x": 0,
      "y": 0
    }
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy"
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1920
  },
  "sequenceId": null,
  "views": [
    {
      "hborder": 310,
      "hport": 1080,
      "hspeed": 100,
      "hview": 1080,
      "inherit": false,
      "objectId": null,
      "vborder": 360,
      "visible": false,
      "vspeed": 100,
      "wport": 1920,
      "wview": 1920,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 310,
      "hport": 1080,
      "hspeed": 100,
      "hview": 720,
      "inherit": false,
      "objectId": null,
      "vborder": 360,
      "visible": false,
      "vspeed": 100,
      "wport": 950,
      "wview": 630,
      "xport": 970,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    },
    {
      "hborder": 32,
      "hport": 768,
      "hspeed": -1,
      "hview": 768,
      "inherit": false,
      "objectId": null,
      "vborder": 32,
      "visible": false,
      "vspeed": -1,
      "wport": 1366,
      "wview": 1366,
      "xport": 0,
      "xview": 0,
      "yport": 0,
      "yview": 0
    }
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false
  },
  "volume": 1.0
}
