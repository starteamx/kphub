import { defineUserConfig } from "vuepress";

import theme from "./theme.js";

// 根据环境变量设置 base
const base = process.env.DEPLOY_TARGET === 'gh-pages' ? '/kphub/' : '/';

export default defineUserConfig({
  base,  // 动态设置 base

  locales: {
    "/": {
      lang: "en-US",
      title: "Docs Demo",
      description: "A docs demo for vuepress-theme-hope",
    },
    "/zh/": {
      lang: "zh-CN",
      title: "文档演示",
      description: "vuepress-theme-hope 的文档演示",
    },
  },

  theme,

  // Enable it with pwa
  // shouldPrefetch: false,
});
