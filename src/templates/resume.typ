#let name = "Lucas Philippe"

#set document(
  title: name + "'s Resume",
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
    "Curitiba, Brazil",
    link("https://www.linkedin.com/in/lucasphi/")[LinkedIn],
    link("https://github.com/Caslus")[Github],
  )
)

= Summary
*Software Engineer* with technical leadership experience, guiding development teams and maintaining high-availability enterprise systems. Proven ability to enhance system performance and stability in large-scale financial applications processing millions of dollars daily. Expertise spans modern stacks (*React, TypeScript, Go, Node.js*) and enterprise technologies (*Java, Spring, OracleSQL*). Fluent in English and Portuguese, with intermediate Spanish and basic Japanese proficiency.


= Experience
#exp(
  title: "Software Engineer",
  subtitle: "Bradesco Seguros",
  location: "",
  period: "Jan 2025 - Present",
)[
  #list(
    [Lead a sustainment team of 6 analysts responsible for the stability and optimization of a critical reimbursement system processing over \$3 million USD daily.],
    [Serve as the primary technical contact for business stakeholders during production incidents, communicating impact, gathering requirements for fixes, and coordinating resolution strategies.],
    [Direct root cause analysis for production issues using code debugging and log analysis (Dynatrace, Grafana), ensuring high availability for over 5,000 simultaneous users.],
    [Develop targeted bug fixes, performance enhancements, and stability improvements with Java and Spring to resolve active incidents and prevent their recurrence.
    ]
  )
]

#exp(
  title: "Frontend Developer",
  subtitle: "Ligga Telecom",
  location: "",
  period: "Jun 2024 - Dec 2024",
)[
  #list(
    [Designed, implemented, tested, deployed, and maintained a React Native mobile application with over 200,000 monthly active users, collaborating with UX/UI designers and backend developers to ensure seamless integration and user experience.],
    [Partnered with product and business teams to translate strategic goals into key features for a customer-facing web application built with React and TypeScript.],
    [Integrated and unified customer-facing applications with 3 distinct billing systems from different vendors, simplifying the user journey into a cohesive and efficient experience.]
  )
]

#exp(
  title: "Software Engineer Intern",
  subtitle: "E-Governe",
  location: "",
  period: "Oct 2022 - Dec 2023",
)[
  #list(
    [Collaborated with senior developers to migrate legacy Oracle SQL procedures into PostgreSQL, achieving a significant cost reduction annually in licensing while enhancing database performance.],
    [Worked closely with customers to build over 10 new scalable and fault-tolerant report generation routes with Java Spring.],
    [Designed and coded interactive, responsive and easy to use web pages for over 150 public schools using Angular, RxJs and TypeScript.]
  )
]

#exp(
  title: "Programming Teaching Assistant",
  subtitle: "Pontifical Catholic University of Paraná",
  location: "",
  period: "Mar 2023 - Jun 2023",
)[
  #list(
    [Tutored Object-Oriented Programming (OOP) with the Java programming language to a class of about 40 students, emphasizing conceptual understanding of topics and helping them to enhance computer science and problem-solving skills.],
    [Provided one-on-one tutoring and support, ensuring software engineering best practices and leading to a higher average test score compared to another class of the same course.],
  )
]

= Education
#exp(
  title: "Pontifical Catholic University of Paraná (PUCPR)",
  subtitle: "Bachelor of Science in Software Engineering",
  location: "Curitiba, Brazil",
  period: "Jan 2021 - Dec 2025 (Expected)"
)[
  #list(
    [Elected Vice-President of the Software Engineering Academic Center, representing over 400 students and leading the organization of the Polytechnic School Academic Week.]
  )
]

// just so it doesn't crop the list
\
= Technical Skills
#list(
  [*Languages*: Typescript, Javascript, Java, Go],
  [*Frontend*: HTML, CSS, React, Angular, React Native],
  [*Backend*: Node.js, Spring],
  [*Databases*: SQL, PostgreSQL, OracleSQL, MySQL, MongoDB],
  [*DevOps & Cloud*: AWS, Azure, Docker, Git, CI/CD (GitHub Actions, Azure Pipelines)],
  [*Server Management*: Linux, Bash Scripting, NGINX]
)

= Certifications
#exp(
  title: "AWS Certified Cloud Practitioner (CLF-C02)",
  subtitle: "Amazon Web Services (AWS)",
  location: "",
  period: "Sep 2025"
)[]

#exp(
  title: "Red Hat Training: Getting Started with Linux Fundamentals (RH104)",
  subtitle: "Red Hat",
  location: "",
  period: "May 2025"
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
  title: "Web Application Development with React",
  subtitle: "Pontifical Catholic University of Paraná",
  location: "",
  period: "Jun 2024"
)[]

#exp(
  title: "Software Development Training",
  subtitle: "Pontifical Catholic University of Paraná",
  location: "",
  period: "Jan 2022"
)[]

= Languages
#list(
  [*Portuguese*: Native],
  [*English*: Fluent],
  [*Spanish*: Intermediate],
  [*Japanese*: Basic]
)

= Achievements and activities
#exp(
  title: "Volunteer",
  subtitle: "Instituto Água e Terra (IAT)",
  location: "",
  period: "Sep 2024 - Sep 2025"
)[
  Worked as part of a dedicated team to assist in environmental conservation efforts, transporting essential materials such as stone and wood to restore hiking trails in the hills of Curitiba.
]

#exp(
  title: "Challenge Based Learning Hackathon",
  subtitle: "Apple Developer Academy",
  location: "",
  period: "Oct 2022"
)[
  Leveraged prototyping tools and design thinking methodologies to solve real-world problems with dynamic groups, presenting a solution to organizers by the end of the event.
]

#exp(
  title: "XIX Brazilian Computing Olympiad (OBI 2017)",
  subtitle: "State University of Campinas",
  location: "",
  period: "Jun 2017"
)[
  Competed in the first and second phase of the Brazilian Computing Olympiad, solving complex problems in a limited time frame and using algorithms and data structures to solve problems efficiently.
]

#exp(
  title: "2016 Paralympic Game Jam - Best Game (Public Choice)",
  subtitle: "Pontifical Catholic University of Paraná",
  location: "",
  period: "Aug 2016"
)[
  Received the public choice award for the best game developed during the 2016 Paralympic Game Jam, a 48-hour game development competition.
]