README

to run, clone, cd and then ruby Election.rb.


My response to the question:

Voter Drive

Create a REPL-driven voting simulation. It should work like this.
 
This is the main menu:
 
What would you like to do? Create, List, Update, or Vote
 
When I type Create:
 
What would you like to create? Politician or Person
 
When I type Politician:
Name?
 
Party? Democrat or Republican
 
When I type Person:
Name?
 
Politics? Liberal, Conservative, Tea Party, Socialist, or Neutral
 
When creating something is done, return to the main menu.
 
When I type List, then output a list of all the created characters.
List
* Politician, Charlie Crist, Democrat
* Voter, Juha Mikkola, Socialist
 
When I type Update, then allow me to update a character.
Update
 
Name?
Charlie Crist
 
New name?
 
New Party?    # if a politician
New Politics? # if a voter
 
When I type Vote, start the simulation.
 
First, run a campaign. Every politician should visit every voter and do a stump speech.
 
If a politician is a Republican, he has a
- 90% chance of convincing a Tea Party voter to vote for him
- 75% chance of convincing a Conservative voter to vote for him
- 50% chance of convincing a Neutral voter to vote for him
- 25% chance of convincing a Liberal voter to vote for him
- 10% chance of convincing a Socialist voter to vote for him
 
If a politician is a Democrat, he has a
- 90% chance of convincing a Socialist voter to vote for him
- 75% chance of convincing a Liberal voter to vote for him
- 50% chance of convincing a Neutral voter to vote for him
- 25% chance of convincing a Conservative voter to vote for him
- 10% chance of convincing a Tea Party voter to vote for him
 
You may want to learn what this Ruby expression does.
rand(100)
 
This expression has a 50% chance of returning 0-49 and a 50% chance of returning 50-99. Hopefully you can figure out the rest.
 
The campaign is done when every voter has listened to at least one stump speech.
 
When the campaign is done, tally up the votes and determine the winner.
 
Note that Politicians are also Voters, but they will always vote for themselves.
 
After every stump speech
- puts a comment from the Voter indicating whether or not he has changed his mind
- if the Voter is also Politician, puts a comment condemning what was said in the speech
 
This would be a good opportunity to practice using TDD on a large project.