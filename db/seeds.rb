# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

steven = Director.create(
  name: 'Steven Spielberg',
  age: 74
);
michael = Director.create(
  name: 'Michael Bay',
  age: 56
);

Movie.create(
  name: 'Jurassic Park',
  description: 'Os paleontólogos Alan Grant, Ellie Sattler e o matemático Ian Malcolm fazem parte de um seleto grupo escolhido para visitar uma ilha habitada por dinossauros criados a partir de DNA pré-histórico. O idealizador do projeto e bilionário John Hammond garante a todos que a instalação é completamente segura. Mas após uma queda de energia, os visitantes descobrem, aos poucos, que vários predadores ferozes estão soltos e à caça.',
  genre: 'aventura',
  censorship: false,
  director_id: steven.id
);
Movie.create(
  name: 'E.T. O Extraterrestre',
  description: 'O garoto Elliott faz amizade com um pequeno alienígena inofensivo que está bem longe do seu planeta. Ele decide manter a adorável criatura em segredo e em casa após apresentá-la aos irmãos.',
  genre: 'ficção científica',
  censorship: false,
  director_id: steven.id
);
Movie.create(
  name:'Bad Boys',
  description: 'Em Miami, os detetives Mike Lowrey e Marcus Burnett trocam de identidade enquanto investigam assassinatos ligados ao roubo de uma carga de 100 milhões de dólares em heroína, que recentemente confiscaram.',
  genre: 'ação',
  censorship: true,
  director_id: michael.id
);
Movie.create(
  name: 'Transformers',
  description: 'O destino da humanidade está em jogo quando duas raças de robôs, os Autobots e os vilões Decepticons, chegam à Terra. Os robôs possuem a capacidade de se transformarem em diferentes objetos mecânicos enquanto buscam a chave do poder supremo com a ajuda do jovem Sam.',
  genre: 'ação',
  censorship: false,
  director_id: michael.id
);
