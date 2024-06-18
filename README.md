# <p align="center">🇷🇴: Acest cod NetLogo simulează un sistem simplu de colectare a resurselor și de construire de structuri, implicând trei categorii: muncitori, resurse și clădiri.</p>
## Simularea se desfășoară astfel:

### Inițializare (procedura setup):

- Lumea este curățată și patch-urile sunt setate la o anumită culoare.
- Un număr specificat de muncitori și resurse sunt create și plasate aleatoriu.
- Muncitorii sunt vizualizați ca persoane, iar resursele sunt vizualizate ca arbori.

### Simulare (procedura go):
- Simularea rulează până când nu mai rămân resurse.
- Muncitorii se mișcă aleatoriu, colectează resurse dacă sunt pe același patch cu o resursă și încearcă să construiască structuri când au colectat suficiente resurse.

### Comportamentul muncitorilor:
- Mișcare (procedura move): muncitorii se rotesc într-o direcție aleatorie și se deplasează cu un pas înainte.
- Colectarea resurselor (procedura gather-resources): muncitorii colectează o resursă dacă sunt pe același patch cu o resursă și își măresc numărul de resurse colectate.
- Construirea structurilor (procedura build-structures): când numărul de resurse al unui muncitor atinge un anumit prag, acesta construiește o structură, vizualizată ca o casă, și numărul de resurse colectate scade cu valoarea pragului.

### Managementul resurselor (procedura resources-at-patch):
- Acest reporter verifică dacă există resurse pe patch-ul curent al unui muncitor.

 # <p align="center">🇬🇧: This NetLogo code simulates a simple resource collection and building construction system involving three breeds: workers, resources, and buildings.</p> 
 ## The simulation proceeds as follows:

### Initialization (setup procedure):

- The world is cleared and the patches are set to a specific color.
- A specified number of workers and resources are created and placed at random positions.
- Workers are visualized as persons, and resources are visualized as trees.

### Simulation (go procedure):
- The simulation runs until no resources are left.
- Workers move randomly, collect resources if they are on the same patch as a resource, and attempt to build structures when they have collected enough resources.

### Worker Behavior:
- Movement (move procedure): workers turn a random direction and move forward by one step.
- Resource Collection (gather-resources procedure): workers collect a resource if they are on the same patch as a resource and increase their resource count.
- Building Construction (build-structures procedure): when a worker's resource count reaches a certain threshold, they build a structure, visualized as a house, and their resource count is decreased by the threshold amount.

### Resource Management (resources-at-patch procedure):
- This reporter checks for resources at the current patch of a worker.
