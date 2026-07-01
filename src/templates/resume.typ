#let name = "Lucas Philippe"

#set document(
  author: name
)
#set text(font: "libertinus serif", size: 10pt, lang: "en")
#set page(
  margin: (
    top: 1.2cm,
    bottom: 1.2cm,
    left: 2cm,
    right: 2cm
  )
)
#set list(tight: true, indent: 4mm)
#set par(leading: 0.4em)

#show heading: it => [
  #set text(10pt, weight: "bold")
  #pad(bottom: 0.2mm)[
    #pad(top: 6pt, bottom: -10pt, it.body)
    #line(length: 100%, stroke: 0.25pt)
  ]
]
#show link: underline

#let title(
  name: "",
  subtitles: ()
) = {
  align(center)[
    #block(text(weight: "light", 2.2em, name))
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
    {
      grid(
        columns: (auto, 1fr),
        row-gutter: 1.5mm,
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
    link("mailto:hello@lucasphilippe.com")[hello\@lucasphilippe.com],
    "Curitiba, Brazil",
    link("https://www.linkedin.com/in/lucasphi/")[LinkedIn],
    link("https://github.com/Caslus")[Github],
  )
)

= Summary
*Software Engineer* experienced in leading development teams and optimizing high-availability financial systems processing millions of USD daily. Proficient in *Java, Spring, Go, React, and TypeScript*; multilingual with fluency in English and native Portuguese, alongside intermediate Spanish and basic Japanese skills.

= Experience
#exp(
  title: "Software Engineer",
  subtitle: "Bradesco Seguros",
  location: "Curitiba, Brazil",
  period: "Jan 2025 - Present",
)[
  #list(
    [Resolved *77%* of production errors in a customer-facing application by leveraging *Dynatrace* to isolate and fix a systemic asset-handling bottleneck within web portlets.],
    [Cut backend endpoint response times by *90%* by refactoring core *Java Spring* method implementations, simplifying *Oracle SQL* database logic, and eliminating redundant external REST API calls.],
    [Led 6 analysts through production incidents and code debt cleanup, utilizing *Grafana* and log analysis to resolve high-frequency bugs for a *\$5.0M USD/day* reimbursement platform.],
    [Automated repetitive internal workflows by developing dedicated application endpoints and *Bash* scripts triggered by *Linux* cron jobs, eliminating manual operational overhead.]
  )
]

#exp(
  title: "Frontend Developer",
  subtitle: "Ligga Telecom",
  location: "Curitiba, Brazil",
  period: "Jun 2024 - Dec 2024",
)[
  #list(
    [Designed, implemented and maintained a *React Native* mobile app with *200,000+* monthly active users, collaborating across teams to ensure a seamless user experience.],
    [Partnered with product teams to translate strategic goals into key features for a web application built with *React* and *TypeScript*.],
    [Unified customer-facing applications with 3 distinct vendor billing platforms, simplifying the user journey.]
  )
]

#exp(
  title: "Software Engineer Intern",
  subtitle: "E-Governe",
  location: "Curitiba, Brazil",
  period: "Oct 2022 - Dec 2023",
)[
  #list(
    [Migrated legacy *Oracle SQL* procedures to *PostgreSQL*, significantly reducing annual licensing costs while improving database performance.],
    [Worked closely with customers to build *10+* scalable and fault-tolerant reporting routes using *Java Spring*.],
    [Coded responsive, interactive web interfaces for *150+* public schools using *Angular*, *RxJS*, and *TypeScript*.]
  )
]

= Education
#exp(
  title: "Pontifical Catholic University of Paraná (PUCPR)",
  subtitle: "Bachelor of Science in Software Engineering",
  location: "Curitiba, Brazil",
  period: "Jan 2021 - Dec 2025"
)[
  #list(
    [Served as Vice-President of the Software Engineering Academic Center, representing *400+* students and coordinating regional technical events.],
    [Tutored Object-Oriented Programming (OOP) concepts in Java to *40+* students as a Programming Teaching Assistant (Mar 2023 - Jun 2023).]
  )
]

= Technical Skills
#list(
  [*Software Engineering*: Java, Spring, Go, TypeScript, JavaScript, Node.js, REST APIs, OOP, RxJS],
  [*Frontend & Mobile*: React, React Native, Angular, HTML, CSS],
  [*Data Architecture*: OracleSQL, PostgreSQL, MySQL, MongoDB, Database Migration, Query Optimization],
  [*Infrastructure & Cloud*: AWS, Docker, Git, GitHub Actions, Linux, Bash Scripting, NGINX, Cron Jobs],
  [*Observability & SRE*: Dynatrace, Grafana, Log Analysis, Incident Management]
)

= Certifications
#list(
  [*AWS Certified Cloud Practitioner (CLF-C02)* (2025)],
  [*Red Hat*: Getting Started with Linux Fundamentals (RH104) (2025)],
)

= Languages
#list(
  [*Portuguese*: Native],
  [*English*: Fluent],
  [*Spanish*: Intermediate],
  [*Japanese*: Basic]
)

= Achievements and Activities
#list(
  [*Challenge Based Learning Hackathon* · Apple Developer Academy (Oct 2022)],
  [*XIX Brazilian Computing Olympiad (OBI 2017)* · University of Campinas (UNICAMP) (2017)],
)