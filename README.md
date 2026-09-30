# 🖥️ Arjun Saha Portfolio

A sleek, modern, and responsive personal portfolio built with Next.js, TypeScript and Tailwind CSS.

[GitHub Profile](https://github.com/sillyfellow21)

[🔗 Portfolio repository](https://github.com/sillyfellow21/portfolio-arjun)

All you need to know about me, my projects and skills can be found here. Personalize the portfolio by modifying `src/pages/index.tsx` and `src/styles/globals.css` to emulate your own portfolio.

## 🎉 Features
- **Responsive Design**: The portfolio is designed to be fully responsive, providing an optimal viewing experience across a wide range of devices from desktops to mobile phones.
- **Easy Customization**: The portfolio structure is straightforward and well organized, making it easy to customize and showcase your unique set of skills and projects.
- **Stunning UI/UX Design**: The portfolio boasts a sleek and modern design, using smooth animations to capture the attention of potential employers or clients.
- **Interactive UI**: Utilizing modern web development techniques, the portfolio offers an interactive user interface that enhances user experience, such as `locomotive-scroll` and `framer-motion`.

## 🚀 Getting Started

### Prerequisites
To get started with this portfolio, ensure that you have the following installed on your system:
- Node.js
- npm
- git

## 🛠️ Installation
Follow the steps below to clone and run this project on your local system:

```bash
# Clone the repository
$ git clone https://github.com/sillyfellow21/portfolio-arjun.git

# Navigate to the project directory
$ cd portfolio-arjun
```

<br />

Then install the required dependencies:
```bash
# Install dependencies
$ npm install

# Start the development server:
$ npm run dev
```
Now, open your browser and navigate to `http://localhost:3000` to view your portfolio live.

## 🐳 Deployment
The portfolio ships with a production-ready Docker setup that builds the app and serves it behind nginx:

```bash
# Build the image and start the stack
$ docker compose up -d --build
```

The site is then served on `http://localhost`.

### Vercel

Import the repository at [vercel.com/new](https://vercel.com/new); the Next.js build is detected automatically and no configuration is required.

`og:url` and `rel="canonical"` are resolved at build time from whichever host serves the page. Vercel exposes `NEXT_PUBLIC_VERCEL_URL`, which the app picks up on its own, so preview and production deployments stay correct without hardcoding a domain. To point them at a custom domain instead, set `NEXT_PUBLIC_SITE_URL` (see `.env.example`). For the Docker path, pass it as a build argument so it is baked into the bundle:

```bash
$ NEXT_PUBLIC_SITE_URL=https://example.com docker compose up -d --build
```