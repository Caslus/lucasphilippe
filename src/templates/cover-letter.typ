#let name = "Lucas Philippe"

#set document(
  title: name + "'s Cover Letter",
  author: name
)
#set text(font: "libertinus serif", size: 12pt, lang: "en")
#set page(
  margin: (
    top: 2cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm
  )
)
#set par(leading: 1.0em, spacing: 2.0em)
#show heading: it => [
  #set text(16pt, weight: "bold")
    #pad(it.body)
    #v(1.0em)
]

#let title(
  name: "",
  subtitles: ()
) = {
  align(center)[
    #block(text(weight: "light", 2.5em, name))
    #subtitles.join(" · ")
    #v(2.0em)
  ]
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

= Dear Lorem Ipsum,

 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vitae ornare arcu, nec fringilla nisi. Vestibulum id hendrerit enim. Donec fringilla felis quis iaculis fermentum. Curabitur sodales ullamcorper neque. Nam ornare, purus ut sagittis pellentesque, ipsum mi ultrices velit, eu mattis diam arcu quis ex. Integer non ex varius, accumsan ipsum eu, aliquam mi. Aliquam erat volutpat. Nulla ultrices ut est at faucibus. Sed mauris erat, sollicitudin non nisl ac, auctor vehicula erat. Sed eu elit ac eros placerat molestie eget eu neque.

Vestibulum dapibus pellentesque magna, ut viverra diam aliquet et. Aliquam in neque purus. Morbi vulputate a justo vel porttitor. Morbi at scelerisque lacus. Curabitur volutpat justo elementum vulputate fringilla. Praesent suscipit neque a turpis hendrerit, congue egestas tortor ultricies. In ac enim a leo vulputate tincidunt non a sem.

Sed tempus arcu erat, id tempus magna viverra eget. Fusce tempor justo vel pellentesque elementum. Nunc accumsan sapien ac velit luctus congue et et nisl. Vestibulum iaculis id nunc quis aliquet. Quisque nec enim vel purus fringilla facilisis. Fusce eget vehicula urna. Maecenas ornare nisl non elit pretium, a maximus tortor viverra. Cras dignissim nulla orci, sed tristique ligula bibendum ut. Aenean suscipit gravida hendrerit. Integer rhoncus vestibulum venenatis. Donec sit amet varius ligula, et posuere purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sed nisi orci. In et tortor eu lectus lobortis rutrum. Nullam ut ligula sed felis lacinia blandit.

#v(1.0em)

Sincerely,\
$name$
