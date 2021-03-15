This is the computational model to support the following paper:
https://nil.cs.uno.edu/publications/papers/farrell2016asking.pdf

Instructions to run:
1. Create the state-space: `java -jar Narrative/glaive.jar -d scott-domain.pddl -p married_problem.pddl -ws scott-space.pddl`
2. Generate the plan: `java -jar Narrative/glaive.jar -d scott-domain.pddl -p married_problem.pddl -rs scott-space.pddl -o scott_solution.pddl`

More:
http://stephengware.com/projects/glaive/
