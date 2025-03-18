import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "vitepress-quarto-docker",
  description: "Reproducible polyglot documentation",
  srcDir: './docs',
  base: '/vitepress-quarto-docker',
  vite: {
    server: {
      allowedHosts: [
        'danlooo.github.io',
      ],
    }
  },
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Examples', link: '/examples' }
    ],

    sidebar: [
       { text: 'Examples', link: '/examples.md' },
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/danlooo/vitepress-quarto-docker' }
    ],

    search: {
      provider: 'local'
    }
  }
})
