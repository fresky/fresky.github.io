---
layout: post
title: "解决wix生成的msi的license对话框空白的问题"
date: 2013-08-01
comments: true
categories: Installer
---
<p>今天用Wix做之前写的那个<a href="http://www.cnblogs.com/fresky/p/3201511.html">Windows Live Writer的Markdown插件</a>的msi安装包，在wxs文件中用如下的代码添加license文件，结果发现生成msi后license文件框一直是空白。</p><pre>&lt;<strong>WixVariable</strong> Id="WixUILicenseRtf" Value="path\License.rtf" /&gt;</pre><p>google后才发现这是Wix的一个<a href="http://scribefire-next/wix.sourceforge.net/manual-wix3/WixUI_customizations.htm" target="_blank">bug</a>，必须用wordpad来存 rtf文件，不能用word。参见stackoverflow上的这个<a href="http://stackoverflow.com/questions/6380724/wix-specify-licence-shows-nothing">回答</a>。</p>