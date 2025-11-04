import {defineConfig} from "astro/config"
import sitemap from "@astrojs/sitemap"
import tailwindcss from "@tailwindcss/vite"
export default defineConfig({
  output: "static",
  site: "https://skin.golmc.cz",
  integrations: [sitemap()],
  vite: {plugins: [tailwindcss()]}
})
