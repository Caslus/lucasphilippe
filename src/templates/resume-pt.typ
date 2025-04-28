#let name = "Lucas Philippe"

#set document(
  title: "Currículo de " + name,
  author: name
)
#set text(font: "libertinus serif", size: 10pt, lang: "en")
#set page(
  margin: (
    top: 1.5cm,
    bottom: 1.5cm,
    left: 2cm,
    right: 2cm
  )
)
#set list(tight: false, indent: 5mm)
#set par(leading: 0.45em)

#show heading: it => [
  #set text(10pt, weight: "light")
  #pad(bottom: 0.2mm)[
    #pad(top: 0pt, bottom: -10pt, it.body)
    #line(length: 100%, stroke: 0.25pt)
  ]
]
#show link: underline

#let title(
  name: "",
  subtitles: ()
) = {
  align(center)[
    #block(text(weight: "light", 2.5em, name))
    #subtitles.join(" · ")
  ]
}

#let exp(
  body,
  title: "",
  subtitle: "",
  location: "",
  period: ""
) = {
  pad(
    top: 0.1mm,
    bottom: 0.1mm,
    left: 5mm,
    right: 5mm,
    {
      grid(
        columns: (auto, 1fr),
        row-gutter: 2mm,
        align(left, strong(title)),
        align(right, text(gray, location)),
        align(left, emph(subtitle)),
        align(right, text(gray, period))
      )
      body
    }
  )
}

#title(
  name: name,
  subtitles: (
    "+55 (41) 99580-0680",
    link("mailto:lucas.philippe.nunes@gmail.com")[lucas.philippe.nunes\@gmail.com],
    "Curitiba, Paraná",
    link("https://www.linkedin.com/in/lucasphi/")[Linkedin],
    link("https://github.com/Caslus")[Github],
  )
)

= Visão Geral
*Engenheiro de Software* com experiência em projetar, desenvolver e testar aplicações de software em ambientes ágeis, colaborando de forma eficiente com outras equipes para entregar aplicações de alta qualidade utilizando *React, Typescript, Node e Go*. Fluente em inglês e português, com espanhol intermediário e japonês básico.

= Experiência
#exp(
  title: "Engenheiro de Software",
  subtitle: "Bradesco Seguros",
  location: "",
  period: "Jan 2025 - Presente",
)[
  #list(
    [Coordenação de uma equipe de 6 desenvolvedores externos junto com outro colaborador interno, liderando os esforços de manutenção e otimização do sistema de reembolso da empresa, que processa mais de 15 milhões de reais diariamente.],
    [Investigação e resolução de problemas em produção por meio da análise de logs, depuração e melhoria do desempenho do sistema, garantindo a estabilidade para mais de 5.000 usuários simultâneos.],
  [
    Monitoramento da saúde de aplicações utilizando Dynatrace e Grafana, otimização de serviços backend e frontend com Java e Angular, manutenção da integridade de bancos de dados OracleSQL e MongoDB em arquiteturas tanto de microsserviços quanto monolíticas.
  ]
  )
]

#exp(
  title: "Desenvolvedor Frontend",
  subtitle: "Ligga Telecom",
  location: "",
  period: "Jun 2024 - Dez 2024",
)[
  #list(
    [Desenvolvimento, implementação, testes, implantação e manutenção de um aplicativo mobile em React Native com mais de 200.000 usuários ativos mensais, em colaboração com designers UI/UX e desenvolvedores backend para garantir uma integração contínua e boa experiência de usuário.],
    [Colaboração com equipes multidisciplinares, impulsionando decisões estratégicas na construção de uma aplicação web em React e Typescript, utilizada por todos os clientes.],
    [Integração e unificação de aplicações voltadas ao cliente com três sistemas de faturamento distintos de fornecedores variados, simplificando a jornada do usuário em uma experiência coesa e eficiente.]
  )
]

#exp(
  title: "Estagiário em Engenharia de Software",
  subtitle: "E-Governe",
  location: "",
  period: "Out 2022 - Dez 2023",
)[
  #list(
    [Colaboração com desenvolvedores seniors, realizando a migração de procedimentos Oracle SQL legados para PostgreSQL, alcançando uma redução significativa em custos anuais com licenciamento e aprimorando a performance do banco de dados.],
    [Criação de 10+ rotas de geração de relatórios escaláveis e tolerantes a falhas com Java Spring para atender necessidades dos clientes.],
    [Desenvolvimento e codificação de páginas web interativas, responsivas e de fácil utilização para mais de 150 escolas públicas, utilizando Angular, RxJs e TypeScript.]
  )
]

#exp(
  title: "Monitor de Programação Orientada a Objetos",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Mar 2023 - Jun 2023",
)[
  #list(
    [Instrução em Programação Orientada a Objetos (POO) com a linguagem Java para uma turma de cerca de 40 alunos, com ênfase no entendimento conceitual dos tópicos, auxiliando-os a aprimorar habilidades em ciência da computação e resolução de problemas.],
    [Suporte individualizado e acompanhamento para garantir as melhores práticas de engenharia de software, contribuindo para uma média de notas superior em relação a outra turma do mesmo curso.],

  )
]

= Formação Acadêmica
#exp(
  title: "Pontifícia Universidade Católica do Paraná (PUCPR)",
  subtitle: "Engenharia de Software",
  location: "Curitiba, Paraná",
  period: "Jan 2021 - Dez 2025 (Previsão)"
)[
  #list(
    [Eleito Vice-Presidente do Centro Acadêmico de Engenharia de Software em 2024, representando mais de 400 alunos e liderando a organização da Semana Acadêmica da Escola Politécnica, promovendo o trabalho em equipe entre todos os 17 cursos da Escola Politécnica da PUCPR.],
    [Realização de disciplinas como Estruturas de Dados, Algoritmos, Bancos de Dados, Desenvolvimento Web, Arquitetura em Nuvem, Big Data e DevOps, mantendo índice de rendimento acadêmico de 89%.]

  )
]

= Habilidades Técnicas
#list(
  [*Linguagens de programação*: Typescript, Javascript, Go, Java, Python, C\#],
  [*Desenvolvimento Frontend*: HTML, CSS, React, Angular, React Native, Redux, Vite, Tailwind, Jest],
  [*Desenvolvimento Backend*: Node.js, Express, Hono, Java Spring],
  [*Bancos de dados*: SQL, PostgreSQL, OracleSQL, MySQL, MongoDB, Prisma],
  [*DevOps & Cloud*: AWS, Azure, Docker, Docker Compose],
  [*Versionamento & CI/CD*: Git, GitHub, GitHub Actions, Azure Pipelines],
  [*Redes & Segurança*: Redes, DNS, NGINX, SSL/TLS, Segurança de API],
  [*Administração de Servidores*: Linux, Bash scripting, SSH, NGINX]
)

= Certificações
#exp(
  title: "Certificação Scrum Foundation Professional",
  subtitle: "Certiprof",
  location: "",
  period: "Nov 2024"
)[]

#exp(
  title: "Certificação Six Sigma White Belt",
  subtitle: "Aveta Business Institute",
  location: "",
  period: "Jul 2024"
)[]

#exp(
  title: "Desenvolvimento de Aplicações Web com React JS",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Jun 2024"
)[]

#exp(
  title: "Santander 2024 - Preparatório Certificação AWS",
  subtitle: "DIO",
  location: "",
  period: "Mai 2024"
)[]

#exp(
  title: "Capacitação no Desenvolvimento de Software",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Jan 2022"
)[]

= Idiomas
#list(
  [*Português*: Nativo],
  [*Inglês*: Fluente],
  [*Espanhol*: Intermediário],
  [*Japonês*: Básico]
)

= Achievements and activities
#exp(
  title: "Voluntário",
  subtitle: "Instituto Água e Terra (IAT)",
  location: "",
  period: "Set 2024 - Presente"
)[
  Atuação em parte de uma equipe auxiliando o Instituto Água e Terra em esforços de conservação ambiental, transportando materiais essenciais, como pedras e madeira, para restaurar trilhas no Morro Pão de Ló em Curitiba.

]

#exp(
  title: "Hackathon Challenge Based Learning",
  subtitle: "Apple Developer Academy",
  location: "",
  period: "Out 2022"
)[
  Utilização de ferramentas de prototipagem e metodologias de design thinking para resolver problemas do mundo real em grupos dinâmicos, apresentando uma solução para os organizadores ao final do evento.
]

#exp(
  title: "XIX Olimpíada Brasileira de Informática (OBI 2017)",
  subtitle: "UNICAMP",
  location: "",
  period: "Jun 2017"
)[
  Participação na primeira e segunda fase da Olimpíada Brasileira de Informática, resolvendo problemas complexos com tempo limitado e utilizando algoritmos e estruturas de dados para solucionar desafios de forma eficiente.

]

#exp(
  title: "2016 Paralympic Game Jam - 1° lugar",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Ago 2016"
)[
  Recebimento do prêmio de melhor jogo por voto popular, desenvolvido durante a Paralympic Game Jam de 2016, uma competição intensa de 48 horas dedicada ao desenvolvimento de jogos.
]