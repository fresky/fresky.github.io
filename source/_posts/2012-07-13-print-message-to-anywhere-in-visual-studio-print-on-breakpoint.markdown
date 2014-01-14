---
layout: post
title: "如何把 Visutal studio中的“print-on-breakpoint”消息打印在程序的任何地方"
date: 2012-07-13
comments: true
categories: [CSharp, Debug]
---
这个问题<a href="http://stackoverflow.com/questions/7756250/in-vs-make-print-on-breakpoint-use-the-console">visual studio - In VS, make print-on-breakpoint use the console - Stack Overflow</a>说明了怎么做。<br />我结合之前这篇<a href="http://www.cnblogs.com/fresky/articles/2133378.html">文章</a>做了个小例子，放在<a href="https://github.com/fresky/DebuggerAttribute">github</a>上。<br />几个截图：<br />1. 定制debug显示信息。<br />&nbsp;<img style="max-width: 800px;" src="http://images.cnblogs.com/cnblogs_com/fresky/201207/201207131721013084.png" /><br />2. 隐藏函数调用。<br /><img style="max-width: 800px;" src="http://images.cnblogs.com/cnblogs_com/fresky/201207/201207131722538406.png" /><br />3. 输出 “print-on-breakpoint”消息在output上。<br /><img style="max-width: 800px;" src="http://images.cnblogs.com/cnblogs_com/fresky/201207/201207131723227528.png" /><br /><blockquote></blockquote>