---
layout: post
title: "定制自己的Visual Studio的Debugger Visualizer"
date: 2012-07-16
comments: true
categories: [CSharp, Debug]
---
又加了一个debugger visualizer的例子。

![debugger visualizer](https://raw.github.com/fresky/fresky.github.io/source/images/debugvisualizer.png)

更新了代码，见<a href="https://github.com/fresky/DebuggerAttribute">这里</a>。代码里包含了下面的属性：<br />
	[DebuggerTypeProxy]
	[DebuggerDisplay]
	[DebuggerVisualizer]
	[DebuggerStepThrough]
	[DebuggerHidden]
	[Conditional("DEBUG")]
	[DebuggerBrowsable]
	[DebuggerVisualizer]
	