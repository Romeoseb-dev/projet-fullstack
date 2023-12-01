CREATE TABLE langages(
   id          INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,langage     VARCHAR(10) NOT NULL
  ,description VARCHAR(318) NOT NULL
  ,image       VARCHAR(134) NOT NULL
);
INSERT INTO langages(id,langage,description,image) VALUES (1,'Javascript','JavaScript est un langage de programmation de haut niveau, interprété, orienté objet et principalement utilisé pour le développement web. Il permet d''ajouter des fonctionnalités interactives aux pages web, mais il peut également être utilisé côté serveur (avec Node.js) et pour le développement d''applications diverses','https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png');
INSERT INTO langages(id,langage,description,image) VALUES (2,'Html','HTML, acronyme de HyperText Markup Language, est le langage de balisage standard utilisé pour créer et structurer le contenu des pages web','https://cdn-icons-png.flaticon.com/512/732/732212.png');
INSERT INTO langages(id,langage,description,image) VALUES (3,'Css','CSS, acronyme de Cascading Style Sheets, est un langage de feuilles de style utilisé pour décrire la présentation visuelle des documents HTML (et XML)','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/CSS3_logo_and_wordmark.svg/1200px-CSS3_logo_and_wordmark.svg.png');
INSERT INTO langages(id,langage,description,image) VALUES (4,'Sql','SQL, acronyme de Structured Query Language, est un langage de programmation spécialisé conçu pour la gestion et la manipulation de données stockées dans des bases de données relationnelles','https://www.sqlfr.com/wp-content/uploads/2022/04/sql-1024x572.jpg');
INSERT INTO langages(id,langage,description,image) VALUES (5,'Ruby','Ruby est un langage de programmation polyvalent qui peut être utilisé pour diverses tâches, tant du côté front-end que du côté back-end. Cependant, Ruby est plus fréquemment associé au développement back-end, en particulier lorsqu''il est utilisé avec le framework Ruby on Rails','https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Ruby_logo.svg/1200px-Ruby_logo.svg.png');
INSERT INTO langages(id,langage,description,image) VALUES (6,'Php','PHP (Hypertext Preprocessor) est généralement utilisé pour le développement côté serveur (back-end). PHP est un langage de script côté serveur qui est principalement utilisé pour générer des pages web dynamiques, gérer des bases de données, et effectuer des tâches côté serveur','https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1200px-PHP-logo.svg.png');


CREATE TABLE eleves(
   id          INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT
  ,prenom      VARCHAR(7) NOT NULL
  ,nom         VARCHAR(7) NOT NULL
  ,age         INTEGER  NOT NULL
  ,langages_id INTEGER  NOT NULL
  ,Foreign Key (langages_id) REFERENCES langages(id)
);
INSERT INTO eleves(id,prenom,nom,age,langages_id) VALUES (1,'John','Deuf',24,1);
INSERT INTO eleves(id,prenom,nom,age,langages_id) VALUES (2,'Mehdi','Cament',34,2);
INSERT INTO eleves(id,prenom,nom,age,langages_id) VALUES (3,'Luc','Arne',40,3);
INSERT INTO eleves(id,prenom,nom,age,langages_id) VALUES (4,'Anna','Konda',23,2);
INSERT INTO eleves(id,prenom,nom,age,langages_id) VALUES (5,'Honnete','Camille',33,4);