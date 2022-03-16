Attribute "component": {unit: "null", defaultValue: "false", description: "Specifies if the given product is a partial one", type: "String"}
Product "Rocker1_1": {component: "true", name: "Rocker 1_1", isAbstract: false}
Product "Led1": {component: "true", name: "Led1", isAbstract: false}
Product "Claw1_1": {implements: ["Claw"], component: "true", name: "Claw 1_1", isAbstract: false}
Product "Claw": {component: "true", name: "Claw", isAbstract: true}
Product "Claw1_2": {implements: ["Claw"], component: "true", name: "Claw 1_2", isAbstract: false}
Product "Changeover1": {component: "true", name: "Changeover 1", isAbstract: false}
Product "rockerswitch_products": {name: "rockerswitch_products", isAbstract: true, requires: ["Claw1_2","O_Ring","Screw","O_Ring1_1","Rocker1_1","Claw","Claw1_1","Socket","Pole1_1","Screw1_2","Screw1_1","Off1_1","O_Ring1_2"]}
Product "rockerswitch_products_3": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_2","rockerswitch_products_1","rockerswitch_products_8","rockerswitch_products_5","rockerswitch_products_6","rockerswitch_products_4"], name: "rockerswitch_products_3", isAbstract: false, requires: ["Changeover1"]}
Product "Screw1_2": {implements: ["Screw"], component: "true", name: "Screw 1_2", isAbstract: false}
Product "rockerswitch_products_2": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_1","rockerswitch_products_8","rockerswitch_products_5","rockerswitch_products_6","rockerswitch_products_3","rockerswitch_products_4"], name: "rockerswitch_products_2", isAbstract: false, requires: ["Changeover1","Led1"]}
Product "rockerswitch_products_5": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_2","rockerswitch_products_1","rockerswitch_products_8","rockerswitch_products_6","rockerswitch_products_3","rockerswitch_products_4"], name: "rockerswitch_products_5", isAbstract: false}
Product "rockerswitch_products_4": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_2","rockerswitch_products_1","rockerswitch_products_8","rockerswitch_products_5","rockerswitch_products_6","rockerswitch_products_3"], name: "rockerswitch_products_4", isAbstract: false, requires: ["Led1","Neutral1_1"]}
Product "rockerswitch_products_7": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_2","rockerswitch_products_1","rockerswitch_products_8","rockerswitch_products_5","rockerswitch_products_6","rockerswitch_products_3","rockerswitch_products_4"], name: "rockerswitch_products_7", isAbstract: false, requires: ["Neutral1_1"]}
Product "rockerswitch_products_6": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_2","rockerswitch_products_1","rockerswitch_products_8","rockerswitch_products_5","rockerswitch_products_3","rockerswitch_products_4"], name: "rockerswitch_products_6", isAbstract: false, requires: ["Changeover1","Led1","Neutral1_1"]}
Product "Off1_1": {component: "true", name: "Off 1_1", isAbstract: false}
Product "rockerswitch_products_8": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_2","rockerswitch_products_1","rockerswitch_products_5","rockerswitch_products_6","rockerswitch_products_3","rockerswitch_products_4"], name: "rockerswitch_products_8", isAbstract: false, requires: ["Changeover1","Neutral1_1"]}
Product "O_Ring": {component: "true", name: "O_Ring", isAbstract: true}
Product "Neutral1_1": {component: "true", name: "Neutral 1_1", isAbstract: false}
Product "O_Ring1_2": {implements: ["O_Ring"], component: "true", name: "O_Ring 1_2", isAbstract: false}
Product "O_Ring1_1": {implements: ["O_Ring"], component: "true", name: "O_Ring 1_1", isAbstract: false}
Product "Screw": {component: "true", name: "Screw", isAbstract: true}
Product "Screw1_1": {implements: ["Screw"], component: "true", name: "Screw 1_1", isAbstract: false}
Product "Pole1_1": {component: "true", name: "Pole 1_1", isAbstract: false}
Product "rockerswitch_products_1": {implements: ["rockerswitch_products"], excludes: ["rockerswitch_products_7","rockerswitch_products_2","rockerswitch_products_8","rockerswitch_products_5","rockerswitch_products_6","rockerswitch_products_3","rockerswitch_products_4"], name: "rockerswitch_products_1", isAbstract: false, requires: ["Led1"]}
Product "Socket": {component: "true", name: "Socket", isAbstract: false}
