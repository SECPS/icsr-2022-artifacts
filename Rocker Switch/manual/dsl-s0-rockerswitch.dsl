Attribute "component": {
    description: "Specifies if the given product is a partial one",
    defaultValue: "false",
    type: "String"
}

Product "Socket": {
  name: "Socket",
  isAbstract: false,
  component: "true"
}

Product "Pole1_1": {
  name: "Pole 1_1",
  isAbstract: false,
  component: "true"
}

Product "Neutral1_1": {
  name: "Neutral 1_1",
  isAbstract: false,
  component: "true"
}

Product "Changeover1": {
  name: "Changeover 1",
  isAbstract: false,
  component: "true"
}

Product "Rocker1_1": {
  name: "Rocker 1_1",
  isAbstract: false, 
  component: "true"
}

Product "Off1_1": {
  name: "Off 1_1",
  isAbstract: false, 
  component: "true"
}

Product "Screw": {
  name: "Screw",
  isAbstract: true,
  component: "true"
}

Product "Screw1_1": {
  name: "Screw 1_1",
  isAbstract: false,
  implements: [ "Screw" ],
  component: "true"
}

Product "Screw1_2": {
  name: "Screw 1_2",
  isAbstract: false,
  implements: [ "Screw" ],
  component: "true"
}

Product "O_Ring": {
  name: "O_Ring",
  isAbstract: true,
  component: "true"
}

Product "O_Ring1_1": {
  name: "O_Ring 1_1",
  isAbstract: false,
  implements: [ "O_Ring" ],
  component: "true"
}

Product "O_Ring1_2": {
  name: "O_Ring 1_2",
  isAbstract: false,
  implements: [ "O_Ring" ],
  component: "true"
}

Product "Claw": {
  name: "Claw",
  isAbstract: true,
  component: "true"
}

Product "Claw1_1": {
  name: "Claw 1_1",
  isAbstract: false,
  implements: [ "Claw" ],
  component: "true"
}

Product "Claw1_2": {
  name: "Claw 1_2",
  isAbstract: false,
  implements: [ "Claw" ],
  component: "true"
}

Product "Rockerswitch": {
  name: "Rockerswitch",
  isAbstract: true,
  requires: [ "Socket", "Screw", "O_Ring", "Claw", "Screw1_1", "O_Ring1_1", "Claw1_1", "Screw1_2", "O_Ring1_2", "Claw1_2", "Rocker1_1", "Off1_1", "Pole1_1" ],
}

Product "Rockerswitch_A": {
  name: "Rockerswitch_A",
  isAbstract: false,
  implements: [ "Rockerswitch"],
  requires: [ "Changeover1" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D"]
}

Product "Rockerswitch_B": {
  name: "Rockerswitch_B",
  isAbstract: false,
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1_1", "Changeover1" ],
  excludes: [ "Rockerswitch_A", "Rockerswitch_C", "Rockerswitch_D"]
}

Product "Rockerswitch_C": {
  name: "Rockerswitch_C",
  isAbstract: false,
  implements: [ "Rockerswitch" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_A", "Rockerswitch_D"]
}

Product "Rockerswitch_D": {
  name: "Rockerswitch_D",
  isAbstract: false,
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1_1" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_A"]
}
