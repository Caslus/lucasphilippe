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
  #set text(10pt, weight: "bold")
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
    link("mailto:lucas.phi@pm.me")[lucas.phi\@pm.me],
    "Curitiba, Paraná",
    link("https://www.linkedin.com/in/lucasphi/")[Linkedin],
    link("https://github.com/Caslus")[Github],
  )
)

= Visão Geral
*Engenheiro de Software* com experiência em liderança técnica, orientando equipes de desenvolvimento e mantendo alta disponibilidade em sistemas corporativos. Habilidade comprovada em otimização do desempenho e da estabilidade de aplicações financeiras de grande porte que processam milhões de reais diariamente. Especialista em stacks modernas (*React, TypeScript, Go, Node.js*) e tecnologias corporativas (*Java, Spring, OracleSQL*). Fluente em inglês e português, com espanhol intermediário e japonês básico.


= Experiência
#exp(
  title: "Engenheiro de Software",
  subtitle: "Bradesco Seguros",
  location: "",
  period: "Jan 2025 - Presente",
)[
  #list(
     [Liderança de uma equipe de sustentação com 6 analistas, responsável pela estabilidade e otimização de um sistema crítico de reembolso que processa mais de R\$15 milhões de reais diariamente.],
    [Atuação como principal contato técnico para stakeholders de negócios durante incidentes em produção, comunicando o impacto, coletando requisitos para correções e coordenando estratégias de resolução.],
    [Condução de análise de causa raiz para problemas de produção utilizando depuração de código e análise de logs (Dynatrace, Grafana), garantindo alta disponibilidade para mais de 5.000 usuários simultâneos.],
    [Desenvolvimento de correções de bugs, melhorias de desempenho e otimizações de estabilidade com Java e Spring para resolver incidentes ativos e prevenir sua recorrência.]
  
  )
]

#exp(
  title: "Desenvolvedor Frontend",
  subtitle: "Ligga Telecom",
  location: "",
  period: "Jun 2024 - Dez 2024",
)[
  #list(
    [Projeto, implementação, teste, implantação e manutenção de um aplicativo móvel em React Native com mais de 200.000 usuários ativos mensais, em parceria com designers de UX/UI e desenvolvedores backend.],
    [Colaboração com as equipes de produto e de negócios para traduzir metas estratégicas em funcionalidades chave para uma aplicação web voltada para o cliente, construída com React e TypeScript.],
    [Integração e unificação de aplicações voltadas ao cliente com 3 sistemas de faturamento distintos de diferentes fornecedores, simplificando a jornada do usuário em uma experiência coesa e eficiente.]
  )
]

#exp(
  title: "Estagiário em Engenharia de Software",
  subtitle: "E-Governe",
  location: "",
  period: "Out 2022 - Dez 2023",
)[
  #list(
    [Colaboração com desenvolvedores seniores para migrar procedimentos legados de Oracle SQL para PostgreSQL, alcançando uma significativa redução de custos anuais em licenciamento e melhorando o desempenho do banco de dados.],
    [Criação de 10+ rotas de geração de relatórios escaláveis e tolerantes a falhas com Java Spring para atender necessidades dos clientes.],
    [Projeto e codificação de páginas web interativas, responsivas e de fácil utilização para mais de 150 escolas públicas, usando Angular, RxJs e TypeScript.]
  )
]

#exp(
  title: "Monitor de Programação Orientada a Objetos",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Mar 2023 - Jun 2023",
)[
  #list(
    [Monitoria de Programação Orientada a Objetos (POO) com a linguagem Java para uma turma de aproximadamente 40 alunos, enfatizando a compreensão conceitual e o aprimoramento de habilidades em computação.],
    [Fornecimento de tutoria e suporte individualizado, assegurando as melhores práticas de engenharia de software e contribuindo para uma média de notas superior em comparação com outra turma do mesmo curso.]
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
    [Eleito Vice-Presidente do Centro Acadêmico de Engenharia de Software, representando mais de 400 alunos e liderando a organização da Semana Acadêmica da Escola Politécnica.]
  )
]

= Habilidades Técnicas
#list(
  [*Linguagens*: Typescript, Javascript, Java, Go],
  [*Frontend*: HTML, CSS, React, Angular, React Native],
  [*Backend*: Node.js, Spring],
  [*Bancos de Dados*: SQL, PostgreSQL, OracleSQL, MySQL, MongoDB],
  [*DevOps & Cloud*: AWS, Azure, Docker, Git, CI/CD (GitHub Actions, Azure Pipelines)],
  [*Gerenciamento de Servidores*: Linux, Bash Scripting, NGINX]
)

= Certificações
#exp(
  title: "AWS Certified Cloud Practitioner (CLF-C02)",
  subtitle: "Amazon Web Services (AWS)",
  location: "",
  period: "Set 2025"
)[]

#exp(
  title: "Red Hat Training: Getting Started with Linux Fundamentals (RH104)",
  subtitle: "Red Hat",
  location: "",
  period: "Mai 2025"
)[]

#exp(
  title: "AI Associate",
  subtitle: "Salesforce",
  location: "",
  period: "Nov 2024"
)[]

#exp(
  title: "Scrum Foundation Professional Certificate",
  subtitle: "Certiprof",
  location: "",
  period: "Nov 2024"
)[]

#exp(
  title: "Desenvolvimento de Aplicações Web com React",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Jun 2024"
)[]

#exp(
  title: "Capacitação em Desenvolvimento de Software",
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
  period: "Set 2024 - Set 2025"
)[
  Trabalhei como parte de uma equipe dedicada para a conservação ambiental, transportando materiais essenciais como pedra e madeira para restaurar trilhas nas serras da região metropolitana de Curitiba.
]

#exp(
  title: "Hackathon Challenge Based Learning",
  subtitle: "Apple Developer Academy",
  location: "",
  period: "Out 2022"
)[
  Utilização de ferramentas de prototipagem e metodologias de design thinking para resolver problemas do mundo real em grupos dinâmicos, apresentando uma solução aos organizadores ao final do evento.
]

#exp(
  title: "XIX Olimpíada Brasileira de Informática (OBI 2017)",
  subtitle: "UNICAMP",
  location: "",
  period: "Jun 2017"
)[
  Competição na primeira e segunda fase da Olimpíada Brasileira de Informática, resolvendo problemas complexos em um tempo limitado e utilizando algoritmos e estruturas de dados para solucionar problemas de forma eficiente.
]

#exp(
  title: "2016 Paralympic Game Jam - 1° lugar",
  subtitle: "Pontifícia Universidade Católica do Paraná",
  location: "",
  period: "Ago 2016"
)[
  Recebimento do prêmio de escolha do público pelo melhor jogo desenvolvido durante a Paralympic Game Jam de 2016, uma competição de desenvolvimento de jogos de 48 horas.
]