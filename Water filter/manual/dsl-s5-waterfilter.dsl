Attribute "component": {
    description: "Specifies if the given product is a partial one",
    defaultValue: "false",
    type: "String"
}

Product "WaterflowSensor": {
	name: "WaterflowSensor",
	component: "true"
}

Product "Electricity": {
	name: "Electricity",
	isAbstract: true,
	requires: [ "PlasticFrame" ],
	component: "true"
}

Product "Asia": {
	name: "Asia",
	isAbstract: false,
	implements: [ "Electricity" ],
	excludes: [ "Africa", "Europe", "US" ],
	component: "true"
}

Product "Africa": {
	name: "Africa",
	isAbstract: false,
	implements: [ "Electricity" ],
	excludes: [ "Asia", "Europe", "US" ],
	component: "true"
}

Product "Europe": {
	name: "Europe",
	isAbstract: false,
	implements: [ "Electricity" ],
	excludes: [ "Asia", "Africa",  "US" ],
	component: "true"
}

Product "US": {
	name: "US",
	isAbstract: false,
	implements: [ "Electricity" ],
	excludes: [ "Asia", "Africa",  "Europe" ],
	component: "true"
}

Product "Charcoal": {
	name: "Charcoal",
	isAbstract: true,
	component: "true"
}

Product "CharcoalActive": {
	name: "CharcoalActive",
	isAbstract: false,
	implements: [ "Charcoal" ],
	excludes: [ "CharcoalBone" ],
	component: "true"
}

Product "CharcoalBone": {
	name: "CharcoalBone",
	isAbstract: false,
	implements: [ "Charcoal" ],
	excludes: [ "CharcoalActive" ],
	component: "true"
}

Product "Sand": {
	name: "Sand",
	isAbstract: false,
	component: "true"
}

Product "Valve": {
	name: "Valve",
	isAbstract: true,
	component: "true"
}

Product "Valve1": {
	name: "Valve1",
	isAbstract: false,
	implements: [ "Valve" ],
	component: "true"
}

Product "Valve2": {
	name: "Valve2",
	isAbstract: false,
	implements: [ "Valve" ],
	component: "true"
}

Product "Tube": {
	name: "Tube",
	isAbstract: true,
	component: "true"
}

Product "Tube1": {
	name: "Tube1",
	isAbstract: false,
	implements: [ "Tube" ],
	component: "true"
}

Product "Tube2": {
	name: "Tube2",
	isAbstract: false,
	implements: [ "Tube" ],
	component: "true"
}

Product "Tube3": {
	name: "Tube3",
	isAbstract: false,
	implements: [ "Tube" ],
	component: "true"
}

Product "Pump": {
	name: "Pump",
	isAbstract: true,
	requires: [ "Electricity" ],
	component: "true"
}

Product "PumpXXL": {
	name: "PumpXXL",
	isAbstract: false,
	implements: [ "Pump" ],
	excludes: [ "PumpXL", "PumpS", "PumpXS" ],
	component: "true"
}

Product "PumpXL": {
	name: "PumpXL",
	isAbstract: false,
	implements: [ "Pump" ],
	excludes: [ "PumpXXL", "PumpS", "PumpXS" ],
	component: "true"
}

Product "PumpS": {
	name: "PumpS",
	isAbstract: false,
	implements: [ "Pump" ],
	excludes: [ "PumpXXL", "PumpXL", "PumpXS" ],
	component: "true"
}

Product "PumpXS": {
	name: "PumpXS",
	isAbstract: false,
	implements: [ "Pump" ],
	excludes: [ "PumpXXL", "PumpXL", "PumpS" ],
	component: "true"
}

Product "Mount": {
	name: "Mount",
	isAbstract: true,
	component: "true"
}

Product "PlasticFrame": {
	name: "PlasticFrame",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack1", "Rack2", "IronFrame" ],
	component: "true"
}

Product "Rack1": {
	name: "Rack1",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack2", "IronFrame", "PlasticFrame" ],
	component: "true"
}

Product "Rack2": {
	name: "Rack2",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack1", "IronFrame", "PlasticFrame" ],
	component: "true"
}

Product "IronFrame": {
	name: "IronFrame",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack2", "Rack1", "PlasticFrame" ],
	component: "true"
}

Product "FreshwaterTank": {
	name: "FreshwaterTank",
	isAbstract: true,
	component: "true"
}

Product "FreshwaterTankS": {
	name: "FreshwaterTankS",
	isAbstract: false,
	implements: [ "FreshwaterTank" ],
	requires: [ "FiltertankS", "WastewaterTankS" ],
	excludes: [ "FreshwaterTankXL", "WastewaterTankXL" ],
	component: "true"
}

Product "FreshwaterTankXL": {
	name: "FreshwaterTankXL",
	isAbstract: false,
	implements: [ "FreshwaterTank" ],
	requires: [ "FiltertankXL", "WastewaterTankXL" ],
	excludes: [ "FreshwaterTankS", "WastewaterTankS" ],
	component: "true"
}

Product "Filtertank": {
	name: "Filtertank",
	isAbstract: true,
	requires: [ "Sand" ],
	component: "true"
}

Product "FiltertankS": {
	name: "FiltertankS",
	isAbstract: false,
	implements: [ "Filtertank" ],
	requires: [ "FreshwaterTankS", "WastewaterTankS" ],
	excludes: [ "FiltertankXL", "Rack2", "Valve2", "Tube3" ],
	component: "true"
}

Product "FiltertankXL": {
	name: "FiltertankXL",
	isAbstract: false,
	implements: [ "Filtertank" ],
	requires: [ "WastewaterTankXL", "FreshwaterTankXL", "Tube3", "Valve2" ],
	excludes: [ "FiltertankS", "WastewaterTankS" ],
	component: "true"
}

Product "WastewaterTank": {
	name: "WastewaterTank",
	isAbstract: true,
	component: "true"
}

Product "WastewaterTankXL": {
	name: "WastewaterTankXL",
	isAbstract: false,
	implements: [ "WastewaterTank" ],
	requires: [ "FiltertankXL", "FreshwaterTankXL" ],
	excludes: [ "WastewaterTankS" ],
	component: "true"
}

Product "WastewaterTankS": {
	name: "WastewaterTankS",
	isAbstract: false,
	implements: [ "WastewaterTank" ],
	requires: [ "FiltertankS", "FreshwaterTankS"],
	excludes: [ "WastewaterTankXL" ],
	component: "true"
}

Product "Nanofilter": {
	name: "Nanofilter",
	isAbstract: false,
	children: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
	requires: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
	excludes: [ "IronFrame", "Distillation" ],
	component: "true"
}

Product "NanofilterHull": {
	name: "NanofilterHull",
	isAbstract: false,
	component: "true"
}

Product "NanofilterMaterial": {
	name: "NanofilterMaterial",
	isAbstract: false,
	component: "true"
}

Product "Membrane": {
	name: "Membrane",
	isAbstract: false,
	component: "true"
}

Product "Distillation": {
	name: "Distillation",
	isAbstract: false,
	children: [ "DistillationHeater", "DistillationCooler", "DistillationStirrer"],
	requires: [ "DistillationHeater", "DistillationCooler", "DistillationStirrer", "WastewaterTankXL", "FreshwaterTankXL", "FiltertankXL" ],
	excludes: [ "Nanofilter" ], 
	component: "true"
}

Product "DistillationHeater": {
	name: "DistillationHeater",
	isAbstract: false,
	children: [ "SunHeater", "ElectricHeater" ],
	component: "true"
}

Product "SunHeater": {
	name: "SunHeater",
	isAbstract: false,
	excludes: [ "ElectricHeater" ],
	component: "true"
}

Product "ElectricHeater": {
	name: "ElectricHeater",
	isAbstract: false,
	requires: [ "Electricity" ],
	excludes: [ "SunHeater" ],
	component: "true"
}

Product "DistillationCooler": {
	name: "DistillationCooler",
	isAbstract: false,
	component: "true"
}

Product "DistillationStirrer": {
	name: "DistillationStirrer",
	isAbstract: false,
	component: "true"
}

Product "CompletedTank": {
	name: "CompletedTank",
	isAbstract: true,
	requires: [ "Mount", "FreshwaterTank", "Filtertank", "Valve", "Valve1" , "Tube", "Tube1", "Tube2", "Charcoal", "WastewaterTank" ],
}

Product "CompletedTank-1": {
	name: "CompletedTank-1",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "IronFrame", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalBone" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-2": {
	name: "CompletedTank-2",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "IronFrame", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalActive"  ],
	excludes: [ "CompletedTank-1", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-3": {
	name: "CompletedTank-3",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack1", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalBone", "Nanofilter" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-4": {
	name: "CompletedTank-4",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack1", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalActive", "Nanofilter" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-5": {
	name: "CompletedTank-5",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-6": {
	name: "CompletedTank-6",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-7": {
	name: "CompletedTank-7",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "Nanofilter" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-8": {
	name: "CompletedTank-8",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "Nanofilter" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-9": {
	name: "CompletedTank-9",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "IronFrame", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalBone", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-10": {
	name: "CompletedTank-10",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "IronFrame", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalActive", "WaterflowSensor"  ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-11": {
	name: "CompletedTank-11",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack1", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalBone", "Nanofilter", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-12": {
	name: "CompletedTank-12",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack1", "FreshwaterTankS", "FiltertankS", "WastewaterTankS", "CharcoalActive", "Nanofilter", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-13": {
	name: "CompletedTank-5",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-14": {
	name: "CompletedTank-14",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-15": {
	name: "CompletedTank-15",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "Nanofilter", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-16": {
	name: "CompletedTank-16",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "Nanofilter", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-17": {
	name: "CompletedTank-17",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "Distillation" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-18": {
	name: "CompletedTank-18",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "Distillation" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-19": {
	name: "CompletedTank-19",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "Distillation" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-20": {
	name: "CompletedTank-20",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "Distillation" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-21": {
	name: "CompletedTank-21",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "WaterflowSensor", "Distillation" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-14", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-22", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-22": {
	name: "CompletedTank-22",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "WaterflowSensor", "Distillation" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-15", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-23", "CompletedTank-24" ]
}

Product "CompletedTank-23": {
	name: "CompletedTank-23",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "Distillation", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-16", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-24" ]
}

Product "CompletedTank-24": {
	name: "CompletedTank-24",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "Distillation", "WaterflowSensor" ],
	excludes: [ "CompletedTank-1", "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8", "CompletedTank-9", "CompletedTank-10", "CompletedTank-11", "CompletedTank-12", "CompletedTank-13", "CompletedTank-14", "CompletedTank-15", "CompletedTank-17", "CompletedTank-18", "CompletedTank-19", "CompletedTank-20", "CompletedTank-21", "CompletedTank-22", "CompletedTank-23" ]
}

Constraint "Constraint1": {
	definition: "FiltertankS, Nanofilter, Rack1 -> FiltertankS and Nanofilter implies Rack1"
}

Constraint "Constraint2": {
	definition: "Rack1, FiltertankS, Nanofilter -> Rack1 and FiltertankS implies Nanofilter"
}

Constraint "Constraint3": {
	definition: "PumpXL, PumpXXL, WastewaterTankXL -> PumpXL or PumpXXL implies WastewaterTankXL"
}

Constraint "Constraint4": {
	definition: "PumpXL, PumpXXL, FreshwaterTankXL -> PumpXL or PumpXXL implies FreshwaterTankXL"
}

Constraint "Constraint5": {
	definition: "PumpXL, PumpXXL, FiltertankXL -> PumpXL or PumpXXL implies FiltertankXL"
}

Constraint "Constraint6": {
	definition: "PumpS, PumpXS, WastewaterTankS -> PumpS or PumpXS implies WastewaterTankS"
}

Constraint "Constraint7": {
	definition: "PumpS, PumpXS, FreshwaterTankS -> PumpS or PumpXS implies FreshwaterTankS"
}

Constraint "Constraint8": {
	definition: "PumpS, PumpXS, FiltertankS -> PumpS or PumpXS implies FiltertankS"
}

Constraint "Constraint9": {
	definition: "Pump, ElectricHeater, Electricity -> not Pump and not ElectricHeater implies not Electricity"
}

Constraint "Constraint10": {
	definition: "FiltertankXL, Rack2, PlasticFrame -> FiltertankXL implies Rack2 or PlasticFrame"
}

Constraint "Constraint11": {
	definition: "Europe, US, PumpXXL -> Europe or US implies not PumpXXL"
}