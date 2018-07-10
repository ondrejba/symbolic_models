# Symbolic Models #

This repository contains a few examples of symbolic models. The 
solvers and the zum_examples are from a course BI-ZUM taught at the Czech Technical
University.

## Models ##

### Stack Blocks ###

#### Instance-level description ####

*stack_blocks/instance_level/long*

Each block is uniquely identified.

Long domain description derived from a standard example:

```
java -jar planners/JGraphplan.jar stack_blocks/instance_level/long/domain.pddl stack_blocks/instance_level/long/stack_3_blocks.pddl
```

Short domain description that uses object types:

*stack_blocks/instance_level/short_with_types*

```
java -jar planners/JGraphplan.jar stack_blocks/instance_level/short_with_types/domain.pddl stack_blocks/instance_level/short_with_types/stack_3_blocks.pddl
``` 

#### Goal-level description ####

*stack_blocks/goal_level*

Instead of identifying each block, the symbolic state is defined by the highest stack of blocks and the state of the robotic hand (full / empty).

The pick action assumes that you do not pick an object from the highest stack. 
The place action assumes that you place an object on the highest stack. The input is the current state and the next state, which is quite clunky.

Overall, enumerating the states by hand and defining how they follow after one another is weird.

```
java -jar planners/JGraphplan.jar stack_blocks/goal_level/domain.pddl stack_blocks/goal_level/stack_3_blocks.pddl
```

## Usage ##

Solve a STRIPS problem:
```
java -jar planners/JGraphplan.jar <domain> <problem>
```

Example:
```
java -jar planners/JGraphplan.jar zum_examples/blocks/blocks.pddl zum_examples/blocks/blocks-3.pddl
```

Solve an ADL problem ([solver link](https://github.com/pellierd/pddl4j)):
```
java -jar planners/pddl4j-3.7.1.jar -o <domain> -f <problem>
```