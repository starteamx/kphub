import { sidebar } from "vuepress-theme-hope";

export default sidebar({
  "/": [
    {
      text: "前端开发",
      icon: "laptop-code",
      prefix: "frontend/",
      link: "frontend/",
      expanded: true,
      collapsible: true,
      children: "structure",
    },
    {
      text: "自媒体写作",
      icon: "laptop-code",
      prefix: "writing/",
      link: "writing/",
      expanded: true,
      collapsible: true,
      children: "structure",
    },
  ],
});
