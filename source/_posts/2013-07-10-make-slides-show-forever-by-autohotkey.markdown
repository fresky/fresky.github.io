---
layout: post
title: "用Autohotkey让powerpoint幻灯片一直播放"
date: 2013-07-10
comments: true
categories: Tool
---
<p>有台电脑专门接了个大电视循环播放一个幻灯片，但是有时候会弹出一些对话框，比如windows要更新之类的，这样的话powerpoint就不是active的进城了，这样幻灯片就会停下来，还需要人去手动点一下，非常麻烦。</p>  <p>可以用<a href="http://www.autohotkey.com/">autohotkey</a>的脚本来解决这个问题，安装完autohotkey之后，写一个新的脚本，内容如下：</p>  <div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">   <table><tbody>       <tr>         <td>           <pre style="line-height: 125%; margin: 0px">1
2
3
4
5
6</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">SetTitleMatchMode 1
IfWinExist PowerPoint Slide Show
	WinActivate
;<span style="color: #0000ff">else</span>
	;Run <span style="color: #a31515">&quot;powerpointpath/POWERPNT.EXE&quot;</span> /s <span style="color: #a31515">&quot;slidespath&quot;</span>
return</pre>
        </td>
      </tr>
    </tbody></table>
</div>


这个脚本用到了autohotkey的三个命令：

<p><a href="http://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm">SetTitleMatchMode</a>，设置窗口标题的匹配模式，这里设为1意思是窗口的标题以给定字符串开始。</p>

<p><a href="http://www.autohotkey.com/docs/commands/IfWinExist.htm">IfWinExist / IfWinNotExist</a>，判断正在播放幻灯片的窗口是否存在。</p>

<p><a href="http://www.autohotkey.com/docs/commands/WinActivate.htm">WinActivate</a>，如果存在，就激活这个窗口，这样幻灯片就会继续播放了。</p>

<p>当然，也可以在上面的那个else里面写上如果这个窗口不存在就运行powerpoint，并且播放幻灯片。从<a href="http://office.microsoft.com/en-us/powerpoint-help/command-line-switches-for-powerpoint-2007-and-the-powerpoint-viewer-2007-HA010153889.aspx">Command-line switches for PowerPoint</a>可以找到powerpnt.exe的命令行参数，给个/s表明要播放幻灯片。</p>