---
layout: post
title: "如何定制Windows系统右键菜单"
date: 2013-06-28
comments: true
categories: Other
---
<p>今天心血来潮把几个自己常用的工具定制到了系统的右键菜单。包括notepad++，7zip，还有复制文件全路径和文件夹路径。下面简单介绍一下步骤。</p>  <h3>1. Windows系统右键菜单对应的注册表位置</h3>  <p>Windows系统的右键菜单对应着如下的注册表位置。</p>  <p>1）所有文件的右键菜单：</p>  <p><a href="http://images.cnitblog.com/blog/163228/201306/28180933-152759b897fe4977b209b13f33bb1069.png"><img style="background-image: none; border-bottom: 0px; border-left: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; border-top: 0px; border-right: 0px; padding-top: 0px" title="image" border="0" alt="image" src="http://images.cnitblog.com/blog/163228/201306/28180934-a0f7aa9dd8db455589982b7c9b288f30.png" width="244" height="212" /></a></p>  <p>2）所有目录的右键菜单：</p>  <p><a href="http://images.cnitblog.com/blog/163228/201306/28180935-09f19fa288304de48ca38d8ed3d28959.png"><img style="background-image: none; border-bottom: 0px; border-left: 0px; padding-left: 0px; padding-right: 0px; display: inline; border-top: 0px; border-right: 0px; padding-top: 0px" title="image" border="0" alt="image" src="http://images.cnitblog.com/blog/163228/201306/28180935-c0df8dc65c8d403f9f42e82fbed45099.png" width="308" height="116" /></a></p>  <h3>2.添加自己定制的右键菜单</h3>  <p>1）如下的代码存为.reg文件，双击就能把注册表键值导入到注册表中。</p>  <div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">   <table><tbody>       <tr>         <td>           <pre style="line-height: 125%; margin: 0px"> 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">Windows Registry Editor Version 5.00

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\Notepad++]</span>
@=<span style="color: #a31515">&quot;Notepad++&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\notepad++ico.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\Notepad++\command]</span>
@=<span style="color: #a31515">&quot;\&quot;...\\notepad++.exe\&quot; \&quot;%1\&quot;&quot;</span>


<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\7zip]</span>
@=<span style="color: #a31515">&quot;7zip&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\7zipico.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\7zip\Command]</span>
@=<span style="color: #a31515">&quot;\&quot;...\\7z.exe\&quot; a \&quot;%1\&quot;.zip \&quot;%1\&quot;&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\Directory\shell\7zip]</span>
@=<span style="color: #a31515">&quot;7zip&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\7zipico.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\Directory\shell\7zip\command]</span>
@=<span style="color: #a31515">&quot;\&quot;...\\7z.exe\&quot; a \&quot;%1\&quot;.zip \&quot;%1\&quot;&quot;</span>


<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFileFullName]</span>
@=<span style="color: #a31515">&quot;Copy File FullName&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\fullpath.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFileFullName\Command]</span>
@=<span style="color: #a31515">&quot;...\\copyfullname.bat \&quot;%1\&quot;&quot;</span>


<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFileName]</span>
@=<span style="color: #a31515">&quot;Copy File Name&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\name.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFileName\Command]</span>
@=<span style="color: #a31515">&quot;...\\copyname.bat \&quot;%1\&quot;&quot;</span>


<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFolderName]</span>
@=<span style="color: #a31515">&quot;Copy Folder Name&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\folder.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFolderName\Command]</span>
@=<span style="color: #a31515">&quot;...\\copyfolder.bat \&quot;%1\&quot;&quot;</span>


<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\Directory\shell\CopyFolderName]</span>
@=<span style="color: #a31515">&quot;Copy Folder Name&quot;</span>
&quot;Icon&quot;=<span style="color: #a31515">&quot;...\\folder.ico&quot;</span>
&quot;Position&quot;=<span style="color: #a31515">&quot;Middle&quot;</span>

<span style="color: #0000ff">[</span>HKEY_CLASSES_ROOT<span style="color: #0000ff">\Directory\shell\CopyFolderName\command]</span>
@=<span style="color: #a31515">&quot;...\\copyname.bat \&quot;%1\&quot;&quot;</span></pre>
        </td>
      </tr>
    </tbody></table>
</div>





<p>2）如下的代码是删除上面添加这些注册表键值。</p>

<div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">
  <table><tbody>
      <tr>
        <td>
          <pre style="line-height: 125%; margin: 0px"> 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
14
15</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">Windows Registry Editor Version 5.00

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\Notepad++]</span>

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\7zip]</span>

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\Directory\shell\7zip]</span>

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFileFullName]</span>

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFileName]</span>

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\*\shell\CopyFolderName]</span>

<span style="color: #0000ff">[</span>-HKEY_CLASSES_ROOT<span style="color: #0000ff">\Directory\shell\CopyFolderName]</span></pre>
        </td>
      </tr>
    </tbody></table>
</div>



<p>3）简单说明</p>

<p>其实就是把当前的文件或者文件夹作为参数（%1）传给你需要的应用。各个应用的命令行参数可以自己去查帮助。比如我的7zip使用的是压缩命令，命令行参数就是</p>

<div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">
  <table><tbody>
      <tr>
        <td>
          <pre style="line-height: 125%; margin: 0px">1</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">7z.exe a “%1<span style="color: #a31515">&quot;.zip &quot;</span>%1&quot;</pre>
        </td>
      </tr>
    </tbody></table>
</div>



<p>把当前文件或者文件夹放入名为文件（夹）名加上.zip的压缩包中。</p>

<p>&#160;</p>

<p>关于复制文件名和文件夹名的命令，我是用了如下的bat文件，分别存在了copyfullname.bat</p>

<div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">
  <table><tbody>
      <tr>
        <td>
          <pre style="line-height: 125%; margin: 0px">1
2</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">@<span style="color: #0000ff">echo</span> <span style="color: #0000ff">off</span>
<span style="color: #0000ff">echo</span> %~1 | clip</pre>
        </td>
      </tr>
    </tbody></table>
</div>

<p>copyname.bat</p>

<div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">
  <table><tbody>
      <tr>
        <td>
          <pre style="line-height: 125%; margin: 0px">1
2</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">@<span style="color: #0000ff">echo</span> <span style="color: #0000ff">off</span>
<span style="color: #0000ff">echo</span> %~nx1 | clip</pre>
        </td>
      </tr>
    </tbody></table>
</div>

<p>copyfolder.bat三个bat中。</p>

<div style="border-bottom: gray 0.1em solid; border-left: gray 0.8em solid; padding-bottom: 0.2em; padding-left: 0.6em; width: auto; padding-right: 0.6em; background: #ffffff; overflow: auto; border-top: gray 0.1em solid; border-right: gray 0.1em solid; padding-top: 0.2em">
  <table><tbody>
      <tr>
        <td>
          <pre style="line-height: 125%; margin: 0px">1
2</pre>
        </td>

        <td>
          <pre style="line-height: 125%; margin: 0px">@<span style="color: #0000ff">echo</span> <span style="color: #0000ff">off</span>
<span style="color: #0000ff">echo</span> %~dp1 | clip</pre>
        </td>
      </tr>
    </tbody></table>
</div>

<p>其实就是把当前参数放进了剪切板里。</p>

<p>下面列举了关于%1的一些常见用法。</p>

<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 删除引号(&quot;)，扩充 %1
  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~f1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 将 %1 扩充到一个完全合格的路径名

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~d1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 仅将 %1 扩充到一个驱动器号

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~p1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 仅将 %1 扩充到一个路径

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~n1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 仅将 %1 扩充到一个文件名

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~x1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 仅将 %1 扩充到一个文件扩展名

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~s1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 扩充的路径指含有短名

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~a1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 将 %1 扩充到文件属性

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~t1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 将 %1 扩充到文件的日期/时间

  <br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; %~z1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - 将 %1 扩充到文件的大小</p>



<h3>3. 效果</h3>

<p><a href="http://images.cnitblog.com/blog/163228/201306/28180935-73b2aea7a1ba46f6abbdef4606806ff9.png"><img style="background-image: none; border-bottom: 0px; border-left: 0px; padding-left: 0px; padding-right: 0px; display: inline; border-top: 0px; border-right: 0px; padding-top: 0px" title="image" border="0" alt="image" src="http://images.cnitblog.com/blog/163228/201306/28180936-fb87d3a0b6c1421e83d1daa4b8734eb7.png" width="523" height="201" /></a></p>