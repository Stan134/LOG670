//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
V\u00e9rification qu'il n'y a aucun v\u00e9hicule de type B qui attent plus longtemps que le temps d'\u00e9quit\u00e9 plus le temps de traverser de tous les v\u00e9hicule devant lui.
*/
E[] not( forall(i : id_vehicule) VAB(i).Attente and (VAB(i).tempsAttente < EQUITE_TEMPS  + (NB_INSTANCES_VEH * TEMPS_TRAVERSER_PONT)))

/*
V\u00e9rification qu'il n'y a aucun v\u00e9hicule de type A qui attent plus longtemps que le temps d'\u00e9quit\u00e9 plus le temps de traverser de tous les v\u00e9hicule devant lui.
*/
E[] not( forall(i : id_vehicule) VAA(i).Attente and (VAA(i).tempsAttente < EQUITE_TEMPS  + (NB_INSTANCES_VEH * TEMPS_TRAVERSER_PONT)))

/*

*/
E[] not (forall(i : id_vehicule_p)  (forall(j : id_vehicule)  VAPB(i).EstSurPont and VAA(j).EstSurPont))

/*

*/
E[] not (forall(i : id_vehicule_p)  (forall(j : id_vehicule)  VAPA(i).EstSurPont and VAB(j).EstSurPont))

/*
V\u00e9rification pour \u00e9viter qu'il y aie des collision
*/
E[] not (forall(i : id_vehicule)  (forall(j : id_vehicule)  VAA(i).EstSurPont and VAB(j).EstSurPont))
