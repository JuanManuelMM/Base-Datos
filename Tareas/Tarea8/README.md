### Tarea2 consultas
##Juan Manuel Morales Martín

Consultas a realizar:

1. Listar los nombres de los usuarios
```sql
  SELECT nombre FROM usuario
```
2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
```sql
SELECT max(saldo) from usuario where sexo='M'
```
3. Listar nombre y teléfono de los usuarios con teléfono TOMTON, BLACK o DREAMS
```sql
SELECT nombre, telefono FROM usuario where marca='TOMTOM' or marca='BLACK' or marca='DREAMS'
```
4. Contar los usuarios sin saldo o inactivos
```sql
select count(usuario.nombre) from usuario where activo='0'
```
5. Listar el login de los usuarios con nivel 1, 2 o 3
```sql
select Usuario.usuario from Usuario where usuario.nivel='1' or usuario.nivel='2' or usuario.nivel='3'
```
6. Listar los números de teléfono con saldo menor o igual a 300
```sql
select usuario.telefono from usuario where saldo <= 300
```
7. Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
```sql
select sum(saldo) from usuario where compañia='NEXTEL'
```sql

8. Contar el número de usuarios por compañía telefónica
```sql
select count(usuario) from usuario GROUP by usuario.compañia='IUSACELL', usuario.compañia='MOVISTAR',usuario.compañia='TELCEL' ,usuario.compañia='UNEFON',usuario.compañia='AXEL',usuario.compañia='AT&T'
```
9. Contar el número de usuarios por nivel
```sql
SELECT count(usuario) from usuario group by 
nivel='0', 
nivel='1', 
nivel='2',
nivel='3'
```
10. Listar el login de los usuarios con nivel 2
SELECT usuario.usuario from usuario where nivel='2'
11. Mostrar el email de los usuarios que usan gmail
```sql
SELECT usuario.email from usuario where usuario.email REGEXP 'gmail';
```
12. Listar nombre y teléfono de los usuarios con teléfono LG4, KINKI o MOT
```sql
select usuario.nombre, usuario.telefono from usuario where marca='LG4'
or marca='KINKI' or marca='MOT'
```
13. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG4 o KINKI
```sql
select usuario.nombre, usuario.telefono from usuario where not marca='LG4'
or not marca='KINKI' or not marca='MOT'
```
14. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL
```sql
select usuario.usuario from usuario where usuario.compañia='IUSACELL'
```
15. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL
```sql
select usuario.usuario from usuario where not usuario.compañia='TELCEL'
```
16. Calcular el saldo promedio de los usuarios que tienen teléfono marca TOMTON
```sql
select avg(saldo) from usuario where usuario.marca='TOMTON'select avg(saldo) from usuario where usuario.marca='TOMTON'
```
17. Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
```SQL
select usuario.usuario, usuario.telefono from usuario where compañia='IUSACELL' or compañia='AXEL'
```
18. Mostrar el email de los usuarios que no usan yahoo
```sql
select usuario.email from usuario where not usuario.email REGEXP 'yahoo'
```
19. Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL
```SQL
select usuario.usuario, usuario.telefono from usuario where not compañia='IUSACELL' or not compañia='TELCEL'
```
20. Listar el login y teléfono de los usuarios con compañia telefónica UNEFON
```sql
select usuario.usuario, usuario.telefono from usuario where compañia='UNEFON' 
```
22. Listar las diferentes marcas de celular en orden alfabético descendentemente
23. Listar las diferentes compañias en orden alfabético aleatorio
24. Listar el login de los usuarios con nivel 0 o 2
25. Calcular el saldo promedio de los usuarios que tienen teléfono marca LG4
26. Listar el login de los usuarios con nivel 1 o 3
27. Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACK
28. Listar el login de los usuarios con nivel 3
29. Listar el login de los usuarios con nivel 0
30. Listar el login de los usuarios con nivel 1
31. Contar el número de usuarios por sexo
32. Listar el login y teléfono de los usuarios con compañia telefónica AT&T
33. Listar las diferentes compañias en orden alfabético descendentemente
34. Listar el logn de los usuarios inactivos
35. Listar los números de teléfono sin saldo
36. Calcular el saldo mínimo de los usuarios de sexo “Hombre”
37. Listar los números de teléfono con saldo mayor a 300.
