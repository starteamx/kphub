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
  ],
});
