import{_ as e}from"./plugin-vue_export-helper-DlAUqK2U.js";import{c as l,b as a,g as n,d as i,o as t}from"./app-BDvd4hg1.js";const h={};function p(r,s){return t(),l("div",null,[s[0]||(s[0]=a('<h1 id="css-规则参考" tabindex="-1"><a class="header-anchor" href="#css-规则参考"><span>CSS @规则参考</span></a></h1><p>CSS @规则是用于指示 CSS 如何表现的特殊语句。本文档提供了 CSS @规则的完整参考。</p><h2 id="常用-规则" tabindex="-1"><a class="header-anchor" href="#常用-规则"><span>常用 @规则</span></a></h2><table><thead><tr><th>@规则</th><th>描述</th><th>示例</th></tr></thead><tbody><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@media" target="_blank" rel="noopener noreferrer">@media</a></td><td>根据媒体查询结果应用样式</td><td><code>@media screen and (max-width: 600px) { ... }</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@import" target="_blank" rel="noopener noreferrer">@import</a></td><td>导入其他样式表</td><td><code>@import url(&quot;styles.css&quot;);</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@font-face" target="_blank" rel="noopener noreferrer">@font-face</a></td><td>定义可下载的自定义字体</td><td><code>@font-face { font-family: &#39;MyFont&#39;; src: url(&#39;myfont.woff2&#39;); }</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@keyframes" target="_blank" rel="noopener noreferrer">@keyframes</a></td><td>定义动画关键帧</td><td><code>@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@supports" target="_blank" rel="noopener noreferrer">@supports</a></td><td>根据浏览器对 CSS 特性的支持情况应用样式</td><td><code>@supports (display: grid) { ... }</code></td></tr></tbody></table>',4)),n(" 此处将根据数据自动生成 @规则表格 "),s[1]||(s[1]=a('<h2 id="其他-规则" tabindex="-1"><a class="header-anchor" href="#其他-规则"><span>其他 @规则</span></a></h2><table><thead><tr><th>@规则</th><th>描述</th><th>示例</th></tr></thead><tbody><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@charset" target="_blank" rel="noopener noreferrer">@charset</a></td><td>指定样式表的字符编码</td><td><code>@charset &quot;UTF-8&quot;;</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@page" target="_blank" rel="noopener noreferrer">@page</a></td><td>定义打印文档时的页面样式</td><td><code>@page { margin: 2cm; }</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@namespace" target="_blank" rel="noopener noreferrer">@namespace</a></td><td>定义 XML 命名空间</td><td><code>@namespace url(http://www.w3.org/1999/xhtml);</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@counter-style" target="_blank" rel="noopener noreferrer">@counter-style</a></td><td>定义自定义计数器样式</td><td><code>@counter-style circled-alpha { ... }</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@property" target="_blank" rel="noopener noreferrer">@property</a></td><td>定义自定义 CSS 属性</td><td><code>@property --my-color { syntax: &#39;&lt;color&gt;&#39;; inherits: false; initial-value: #c0ffee; }</code></td></tr><tr><td><a href="https://developer.mozilla.org/zh-CN/docs/Web/CSS/@layer" target="_blank" rel="noopener noreferrer">@layer</a></td><td>声明级联层，控制样式优先级</td><td><code>@layer framework, custom;</code></td></tr></tbody></table>',2)),n(" 此处将根据数据自动生成其他 @规则表格 "),s[2]||(s[2]=a(`<h2 id="使用示例" tabindex="-1"><a class="header-anchor" href="#使用示例"><span>使用示例</span></a></h2><div class="language-css line-numbers-mode" data-highlighter="shiki" data-ext="css" data-title="css" style="--shiki-light:#383A42;--shiki-dark:#abb2bf;--shiki-light-bg:#FAFAFA;--shiki-dark-bg:#282c34;"><pre class="shiki shiki-themes one-light one-dark-pro vp-code"><code><span class="line"><span style="--shiki-light:#A0A1A7;--shiki-light-font-style:italic;--shiki-dark:#7F848E;--shiki-dark-font-style:italic;">/* @media 示例 */</span></span>
<span class="line"><span style="--shiki-light:#A626A4;--shiki-dark:#C678DD;">@media</span><span style="--shiki-light:#986801;--shiki-dark:#ABB2BF;"> screen</span><span style="--shiki-light:#383A42;--shiki-dark:#56B6C2;"> and</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> (max-width: </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">768</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">px</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">) {</span></span>
<span class="line"><span style="--shiki-light:#E45649;--shiki-dark:#E06C75;">  body</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    font-size: </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">14</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">px</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  </span></span>
<span class="line"><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">  .sidebar</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    display: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">none</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">}</span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#A0A1A7;--shiki-light-font-style:italic;--shiki-dark:#7F848E;--shiki-dark-font-style:italic;">/* @font-face 示例 */</span></span>
<span class="line"><span style="--shiki-light:#A626A4;--shiki-dark:#C678DD;">@font-face</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  font-family: </span><span style="--shiki-light:#50A14F;--shiki-dark:#98C379;">&#39;MyCustomFont&#39;</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  src: </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">url</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#50A14F;--shiki-dark:#98C379;">&#39;fonts/mycustomfont.woff2&#39;</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">) </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">format</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#50A14F;--shiki-dark:#98C379;">&#39;woff2&#39;</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">),</span></span>
<span class="line"><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">       url</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#50A14F;--shiki-dark:#98C379;">&#39;fonts/mycustomfont.woff&#39;</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">) </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">format</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#50A14F;--shiki-dark:#98C379;">&#39;woff&#39;</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">);</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  font-weight: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">normal</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  font-style: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">normal</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  font-display: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">swap</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">}</span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#A0A1A7;--shiki-light-font-style:italic;--shiki-dark:#7F848E;--shiki-dark-font-style:italic;">/* @keyframes 示例 */</span></span>
<span class="line"><span style="--shiki-light:#A626A4;--shiki-dark:#C678DD;">@keyframes</span><span style="--shiki-light:#383A42;--shiki-light-font-style:inherit;--shiki-dark:#E06C75;--shiki-dark-font-style:italic;"> slideIn</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  0% {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    transform: </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">translateX</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">-100</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">%</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">);</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    opacity: </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">0</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  100% {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    transform: </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">translateX</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">0</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">);</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    opacity: </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">1</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">}</span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">.animated</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  animation: slideIn </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">0.5</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">s</span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;"> ease-out</span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;"> forwards</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">}</span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#A0A1A7;--shiki-light-font-style:italic;--shiki-dark:#7F848E;--shiki-dark-font-style:italic;">/* @supports 示例 */</span></span>
<span class="line"><span style="--shiki-light:#A626A4;--shiki-dark:#C678DD;">@supports</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> (display: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">grid</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">) {</span></span>
<span class="line"><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">  .container</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    display: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">grid</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    grid-template-columns: </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">repeat</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">auto-fill</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">, </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">minmax</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">200</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">px</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">, </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">1</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">fr</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">));</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    gap: </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">20</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">px</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">}</span></span>
<span class="line"></span>
<span class="line"><span style="--shiki-light:#A626A4;--shiki-dark:#C678DD;">@supports</span><span style="--shiki-light:#383A42;--shiki-dark:#56B6C2;"> not</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> (display: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">grid</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">) {</span></span>
<span class="line"><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">  .container</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    display: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">flex</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    flex-wrap: </span><span style="--shiki-light:#383A42;--shiki-dark:#D19A66;">wrap</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  </span></span>
<span class="line"><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">  .container</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> &gt;</span><span style="--shiki-light:#E45649;--shiki-dark:#E06C75;"> *</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;"> {</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    width: </span><span style="--shiki-light:#0184BC;--shiki-dark:#56B6C2;">calc</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">(</span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">33.333</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">%</span><span style="--shiki-light:#383A42;--shiki-dark:#56B6C2;"> -</span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;"> 20</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">px</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">);</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">    margin: </span><span style="--shiki-light:#986801;--shiki-dark:#D19A66;">10</span><span style="--shiki-light:#986801;--shiki-dark:#E06C75;">px</span><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">;</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">  }</span></span>
<span class="line"><span style="--shiki-light:#383A42;--shiki-dark:#ABB2BF;">}</span></span></code></pre><div class="line-numbers" aria-hidden="true" style="counter-reset:line-number 0;"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div><h2 id="浏览器兼容性" tabindex="-1"><a class="header-anchor" href="#浏览器兼容性"><span>浏览器兼容性</span></a></h2>`,3)),n(" 此处将根据数据自动生成兼容性表格 "),s[3]||(s[3]=i("h2",{id:"相关资源",tabindex:"-1"},[i("a",{class:"header-anchor",href:"#相关资源"},[i("span",null,"相关资源")])],-1)),s[4]||(s[4]=i("ul",null,[i("li",null,[i("a",{href:"https://developer.mozilla.org/zh-CN/docs/Web/CSS/At-rule",target:"_blank",rel:"noopener noreferrer"},"MDN CSS @规则")]),i("li",null,[i("a",{href:"https://www.w3.org/Style/CSS/",target:"_blank",rel:"noopener noreferrer"},"CSS 规范")])],-1))])}const o=e(h,[["render",p],["__file","01-At规则参考.html.vue"]]),B=JSON.parse('{"path":"/frontend/CSS/%E5%8F%82%E8%80%83/04-At%E8%A7%84%E5%88%99/01-At%E8%A7%84%E5%88%99%E5%8F%82%E8%80%83.html","title":"CSS @规则参考","lang":"zh-CN","frontmatter":{"title":"CSS @规则参考","icon":"css","order":1,"description":"CSS @规则参考 CSS @规则是用于指示 CSS 如何表现的特殊语句。本文档提供了 CSS @规则的完整参考。 常用 @规则 其他 @规则 使用示例 浏览器兼容性 相关资源 MDN CSS @规则 CSS 规范","head":[["meta",{"property":"og:url","content":"https://vuepress-theme-hope-docs-demo.netlify.app/kphub/frontend/CSS/%E5%8F%82%E8%80%83/04-At%E8%A7%84%E5%88%99/01-At%E8%A7%84%E5%88%99%E5%8F%82%E8%80%83.html"}],["meta",{"property":"og:site_name","content":"全栈开发知识库"}],["meta",{"property":"og:title","content":"CSS @规则参考"}],["meta",{"property":"og:description","content":"CSS @规则参考 CSS @规则是用于指示 CSS 如何表现的特殊语句。本文档提供了 CSS @规则的完整参考。 常用 @规则 其他 @规则 使用示例 浏览器兼容性 相关资源 MDN CSS @规则 CSS 规范"}],["meta",{"property":"og:type","content":"article"}],["meta",{"property":"og:locale","content":"zh-CN"}],["meta",{"property":"og:updated_time","content":"2025-03-04T06:09:51.000Z"}],["meta",{"property":"article:modified_time","content":"2025-03-04T06:09:51.000Z"}],["script",{"type":"application/ld+json"},"{\\"@context\\":\\"https://schema.org\\",\\"@type\\":\\"Article\\",\\"headline\\":\\"CSS @规则参考\\",\\"image\\":[\\"\\"],\\"dateModified\\":\\"2025-03-04T06:09:51.000Z\\",\\"author\\":[{\\"@type\\":\\"Person\\",\\"name\\":\\"Kpsmart\\",\\"url\\":\\"https://studyup.tech\\"}]}"]]},"headers":[{"level":2,"title":"常用 @规则","slug":"常用-规则","link":"#常用-规则","children":[]},{"level":2,"title":"其他 @规则","slug":"其他-规则","link":"#其他-规则","children":[]},{"level":2,"title":"使用示例","slug":"使用示例","link":"#使用示例","children":[]},{"level":2,"title":"浏览器兼容性","slug":"浏览器兼容性","link":"#浏览器兼容性","children":[]},{"level":2,"title":"相关资源","slug":"相关资源","link":"#相关资源","children":[]}],"git":{"createdTime":1741068591000,"updatedTime":1741068591000,"contributors":[{"name":"guanrunbai","username":"guanrunbai","email":"470626708@qq.com","commits":1,"url":"https://github.com/guanrunbai"}]},"readingTime":{"minutes":1.62,"words":486},"filePathRelative":"frontend/CSS/参考/04-At规则/01-At规则参考.md","localizedDate":"2025年3月4日","autoDesc":true}');export{o as comp,B as data};
