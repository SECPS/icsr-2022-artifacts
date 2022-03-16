Attribute "component": {
    description: "Specifies if the given product is a partial one",
    defaultValue: "false",
    type: "String"
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

Product "Mount": {
	name: "Mount",
	isAbstract: true,
	component: "true"
}

Product "Rack1": {
	name: "Rack1",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack2", "IronFrame" ],
	component: "true"
}

Product "Rack2": {
	name: "Rack2",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack1", "IronFrame" ],
	component: "true"
}

Product "IronFrame": {
	name: "IronFrame",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack2", "Rack1" ],
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
	requires: [ "FiltertankS" ],
	excludes: [ "FreshwaterTankXL" ],
	component: "true"
}

Product "FreshwaterTankXL": {
	name: "FreshwaterTankXL",
	isAbstract: false,
	implements: [ "FreshwaterTank" ],
	requires: [ "FiltertankXL", "WastewaterTankXL" ],
	excludes: [ "FreshwaterTankS" ],
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
	requires: [ "FreshwaterTankS" ],
	excludes: [ "FiltertankXL", "WastewaterTankXL", "Rack2", "Valve2", "Tube3" ],
	component: "true"
}

Product "FiltertankXL": {
	name: "FiltertankXL",
	isAbstract: false,
	implements: [ "Filtertank" ],
	requires: [ "WastewaterTankXL", "FreshwaterTankXL", "Rack2", "Tube3", "Valve2" ],
	excludes: [ "FiltertankS" ],
	component: "true"
}

Product "WastewaterTankXL": {
	name: "WastewaterTankXL",
	isAbstract: false,
	requires: [ "FiltertankXL", "FreshwaterTankXL" ],
	component: "true"
}

Product "Nanofilter": {
	name: "Nanofilter",
	isAbstract: false,
	children: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
	requires: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
	excludes: [ "IronFrame" ],
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

Product "CompletedTank": {
	name: "CompletedTank",
	isAbstract: true,
	requires: [ "Mount", "FreshwaterTank", "Filtertank", "Valve", "Valve1" , "Tube", "Tube1", "Tube2", "Charcoal" ],
}

Product "CompletedTank-1": {
	name: "CompletedTank-1",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "IronFrame", "FreshwaterTankS", "FiltertankS", "CharcoalBone" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-2": {
	name: "CompletedTank-2",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "IronFrame", "FreshwaterTankS", "FiltertankS", "CharcoalActive"  ],
	excludes: [ "CompletedTank-1", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-3": {
	name: "CompletedTank-3",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack1", "FreshwaterTankS", "FiltertankS", "CharcoalBone", "Nanofilter" ],
	excludes: [ "CompletedTank-2", "CompletedTank-1", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-4": {
	name: "CompletedTank-4",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack1", "FreshwaterTankS", "FiltertankS", "CharcoalActive", "Nanofilter" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-1", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-5": {
	name: "CompletedTank-5",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-1", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-6": {
	name: "CompletedTank-6",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "CompletedWastewaterTank", "FiltertankXL", "CharcoalActive", "Tube3" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-1", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-7": {
	name: "CompletedTank-7",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [  "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalBone", "Tube3", "Nanofilter" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-1", "CompletedTank-8" ]
}

Product "CompletedTank-8": {
	name: "CompletedTank-8",
	isAbstract: false,
	implements: [ "CompletedTank" ],
	requires: [ "Rack2", "FreshwaterTankXL", "WastewaterTankXL", "Valve2", "FiltertankXL", "CharcoalActive", "Tube3", "Nanofilter" ],
	excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-1" ]
}

Constraint "Constraint1": {
	definition: "FiltertankS, Nanofilter, Rack1 -> FiltertankS and Nanofilter implies Rack1"
}

Constraint "Constraint2": {
	definition: "Rack1, FiltertankS, Nanofilter -> Rack1 and FiltertankS implies Nanofilter"
}
