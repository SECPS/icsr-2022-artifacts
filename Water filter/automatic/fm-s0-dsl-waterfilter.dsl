Attribute "component": {unit: "null", defaultValue: "false", description: "Specifies if the given product is a partial one", type: "String"}
Product "CharcoalBone": {implements: ["Charcoal"], component: "true", excludes: ["CharcoalActive"], name: "CharcoalBone", isAbstract: false}
Product "Tube": {component: "true", name: "Tube", isAbstract: true}
Product "Sand": {component: "true", name: "Sand", isAbstract: false}
Product "FreshwaterTankXL": {implements: ["FreshwaterTank"], component: "true", excludes: ["FreshwaterTankS"], name: "FreshwaterTankXL", isAbstract: false, requires: ["FiltertankXL","WastewaterTankXL"]}
Product "IronFrame": {implements: ["Mount"], component: "true", excludes: ["Rack2","Rack1"], name: "IronFrame", isAbstract: false}
Product "Mount": {component: "true", name: "Mount", isAbstract: true}
Product "Valve2": {implements: ["Valve"], component: "true", name: "Valve2", isAbstract: false}
Product "Valve1": {implements: ["Valve"], component: "true", name: "Valve1", isAbstract: false}
Product "Filtertank": {component: "true", name: "Filtertank", isAbstract: true}
Product "FiltertankXL": {implements: ["Filtertank"], component: "true", excludes: ["FiltertankS"], name: "FiltertankXL", isAbstract: false, requires: ["WastewaterTankXL","FreshwaterTankXL","Rack2","Tube3","Valve2"]}
Product "FreshwaterTankS": {implements: ["FreshwaterTank"], component: "true", excludes: ["FreshwaterTankXL"], name: "FreshwaterTankS", isAbstract: false, requires: ["FiltertankS"]}
Product "Tube2": {implements: ["Tube"], component: "true", name: "Tube2", isAbstract: false}
Product "Tube3": {implements: ["Tube"], component: "true", name: "Tube3", isAbstract: false}
Product "Valve": {component: "true", name: "Valve", isAbstract: true}
Product "NanofilterHull": {component: "true", name: "NanofilterHull", isAbstract: false}
Product "Membrane": {component: "true", name: "Membrane", isAbstract: false}
Product "Tube1": {implements: ["Tube"], component: "true", name: "Tube1", isAbstract: false}
Product "Nanofilter": {component: "true", excludes: ["IronFrame"], children: ["NanofilterHull","NanofilterMaterial","Membrane"], name: "Nanofilter", isAbstract: false}
Product "NanofilterMaterial": {component: "true", name: "NanofilterMaterial", isAbstract: false}
Product "Rack2": {implements: ["Mount"], component: "true", excludes: ["IronFrame","Rack1"], name: "Rack2", isAbstract: false}
Product "waterfilter.dsl_products": {name: "waterfilter.dsl_products", isAbstract: true, requires: ["Charcoal","Tube","Tube2","FreshwaterTank","Valve","Mount","Valve1","Tube1","Filtertank","Sand"]}
Product "Rack1": {implements: ["Mount"], component: "true", excludes: ["IronFrame","Rack2"], name: "Rack1", isAbstract: false}
Product "WastewaterTankXL": {component: "true", name: "WastewaterTankXL", isAbstract: false, requires: ["FiltertankXL","FreshwaterTankXL"]}
Product "FiltertankS": {implements: ["Filtertank"], component: "true", excludes: ["FiltertankXL","WastewaterTankXL","Rack2","Valve2","Tube3"], name: "FiltertankS", isAbstract: false, requires: ["FreshwaterTankS"]}
Product "FreshwaterTank": {component: "true", name: "FreshwaterTank", isAbstract: true}
Product "waterfilter.dsl_products_1": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_3","waterfilter.dsl_products_4","waterfilter.dsl_products_8","waterfilter.dsl_products_2","waterfilter.dsl_products_7","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_1", isAbstract: false, requires: ["NanofilterMaterial","FreshwaterTankXL","Rack2","Tube3","WastewaterTankXL","NanofilterHull","CharcoalBone","Valve2","Membrane","Nanofilter","FiltertankXL"]}
Product "CharcoalActive": {implements: ["Charcoal"], component: "true", excludes: ["CharcoalBone"], name: "CharcoalActive", isAbstract: false}
Product "waterfilter.dsl_products_8": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_3","waterfilter.dsl_products_4","waterfilter.dsl_products_1","waterfilter.dsl_products_2","waterfilter.dsl_products_7","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_8", isAbstract: false, requires: ["FreshwaterTankXL","CharcoalActive","Rack2","Tube3","WastewaterTankXL","Valve2","FiltertankXL"]}
Product "waterfilter.dsl_products_6": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_3","waterfilter.dsl_products_4","waterfilter.dsl_products_1","waterfilter.dsl_products_8","waterfilter.dsl_products_2","waterfilter.dsl_products_7","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_6", isAbstract: false, requires: ["NanofilterMaterial","FreshwaterTankXL","CharcoalActive","Rack2","Tube3","WastewaterTankXL","NanofilterHull","Valve2","Membrane","Nanofilter","FiltertankXL"]}
Product "waterfilter.dsl_products_7": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_3","waterfilter.dsl_products_4","waterfilter.dsl_products_1","waterfilter.dsl_products_8","waterfilter.dsl_products_2","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_7", isAbstract: false, requires: ["FiltertankS","IronFrame","FreshwaterTankS","CharcoalBone"]}
Product "waterfilter.dsl_products_4": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_3","waterfilter.dsl_products_1","waterfilter.dsl_products_8","waterfilter.dsl_products_2","waterfilter.dsl_products_7","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_4", isAbstract: false, requires: ["NanofilterMaterial","FiltertankS","NanofilterHull","FreshwaterTankS","CharcoalBone","Membrane","Nanofilter","Rack1"]}
Product "waterfilter.dsl_products_5": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_3","waterfilter.dsl_products_4","waterfilter.dsl_products_1","waterfilter.dsl_products_8","waterfilter.dsl_products_2","waterfilter.dsl_products_7"], name: "waterfilter.dsl_products_5", isAbstract: false, requires: ["FiltertankS","CharcoalActive","IronFrame","FreshwaterTankS"]}
Product "waterfilter.dsl_products_2": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_3","waterfilter.dsl_products_4","waterfilter.dsl_products_1","waterfilter.dsl_products_8","waterfilter.dsl_products_7","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_2", isAbstract: false, requires: ["FreshwaterTankXL","Rack2","Tube3","WastewaterTankXL","CharcoalBone","Valve2","FiltertankXL"]}
Product "Charcoal": {component: "true", name: "Charcoal", isAbstract: true}
Product "waterfilter.dsl_products_3": {implements: ["waterfilter.dsl_products"], excludes: ["waterfilter.dsl_products_6","waterfilter.dsl_products_4","waterfilter.dsl_products_1","waterfilter.dsl_products_8","waterfilter.dsl_products_2","waterfilter.dsl_products_7","waterfilter.dsl_products_5"], name: "waterfilter.dsl_products_3", isAbstract: false, requires: ["NanofilterMaterial","FiltertankS","CharcoalActive","NanofilterHull","FreshwaterTankS","Membrane","Nanofilter","Rack1"]}
Constraint "Constraint1": {definition: "FiltertankS,Nanofilter,Rack1 -> FiltertankS and Nanofilter implies Rack1"}
Constraint "Constraint2": {definition: "Rack1,FiltertankS,Nanofilter -> Rack1 and FiltertankS implies Nanofilter"}
