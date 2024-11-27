# Personal Page with Astro and Typst

This is a personal page built using [Astro](https://astro.build/), [Tailwind](https://tailwindcss.com/) and [Typst](https://typst.app/), with GitHub Actions automating the build process, generating an up-to-date resume, and deploying to GitHub Pages.

## Overview

The site was designed to be easy to maintain, leveraging automation for key tasks. Every push to the repository triggers a GitHub Action workflow that builds the site, generates a new version of the resume using Typst, and automatically deploys everything to GitHub Pages.

## Why Astro?

It's fast, allows for modern web development with minimal overhead, and it's perfect for creating a highly optimized static personal page that loads quickly and efficiently.

## Why Typst?

Typst is used for generating my resume because it allows me to focus on content instead of formatting, I used to spend hours on Word trying to adjust line breaks. It also integrates smoothly into my build pipeline, allowing my resume to be automatically updated every time I push changes to the repository.

## Lighthouse PageSpeed Insights

### Desktop

[![Google Lighthouse PageSpeed Insights](lighthouse_results/desktop/pagespeed.svg)](htmlpreview.github.io?https://raw.githubusercontent.com/Caslus/lucasphilippe/refs/heads/main/lighthouse_results/desktop/lucasphilippe_com.html)

Run the test yourself: [Google Lighthouse PageSpeed Insights](https://pagespeed.web.dev/report?url=https%3A%2F%2Flucasphilippe.com%2F&form_factor=desktop)

### Mobile

[![Google Lighthouse PageSpeed Insights](lighthouse_results/mobile/pagespeed.svg)](htmlpreview.github.io?https://raw.githubusercontent.com/Caslus/lucasphilippe/refs/heads/main/lighthouse_results/mobile/lucasphilippe_com.html)

Run the test yourself: [Google Lighthouse PageSpeed Insights](https://pagespeed.web.dev/report?url=https%3A%2F%2Flucasphilippe.com%2F&form_factor=mobile)

## Author

This project is built by [Lucas Philippe](https://lucasphilippe.com).

## License

This project is distributed under the [MIT license](LICENSE).
