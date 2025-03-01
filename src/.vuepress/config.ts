import { defineUserConfig } from "vuepress";
import theme from "./theme.js";


// 根据环境变量设置 base
const base = process.env.DEPLOY_TARGET === 'gh-pages' ? '/kphub/' : '/';

export default defineUserConfig({
  base,  // 动态设置 base

  locales: {
    "/": {
      lang: "zh-CN",
      title: "全栈开发知识库",
      description: "全栈开发知识库",
    },
  },

  theme,

  // Enable it with pwa
  // shouldPrefetch: false,
});
