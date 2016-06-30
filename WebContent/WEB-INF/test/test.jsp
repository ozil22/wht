<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords"
	content="html5,jquery,ui,widgets,ajax,ria,web framekwork,web development,easy,easyui,datagrid,treegrid,tree">
<meta name="description"
	content="jQuery EasyUI will show you the live demo of components.">
<title>Live Demo - jQuery EasyUI</title>
<link rel="stylesheet" href="/css/main.css" type="text/css" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
</head>

<!-- js转化毫秒为时间格式代码 -->
<script type="text/javascript">
	var format = function(time, format) {
		var t = new Date(time);
		var tf = function(i) {
			return (i < 10 ? '0' : '') + i
		};
		return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a) {
			switch (a) {
			case 'yyyy':
				return tf(t.getFullYear());
				break;
			case 'MM':
				return tf(t.getMonth() + 1);
				break;
			case 'mm':
				return tf(t.getMinutes());
				break;
			case 'dd':
				return tf(t.getDate());
				break;
			case 'HH':
				return tf(t.getHours());
				break;
			case 'ss':
				return tf(t.getSeconds());
				break;
			}
			;
		});
	};
	alert(format(1396178344662, 'yyyy-MM-dd HH:mm:ss'));
</script>



<input class="easyui-datebox"
	data-options="formatter:myformatter,parser:myparser"></input>
<script type="text/javascript">
	function myformatter(date) {
		var y = date.getFullYear();
		var m = date.getMonth() + 1;
		var d = date.getDate();
		return y + '-' + (m < 10 ? ('0' + m) : m) + '-'
				+ (d < 10 ? ('0' + d) : d);
	}
	function myparser(s) {
		if (!s)
			return new Date();
		var ss = (s.split('-'));
		var y = parseInt(ss[0], 10);
		var m = parseInt(ss[1], 10);
		var d = parseInt(ss[2], 10);
		if (!isNaN(y) && !isNaN(m) && !isNaN(d)) {
			return new Date(y, m - 1, d);
		} else {
			return new Date();
		}
	}
</script>




















<body>
	<div id="header">
		<div id="header-inner">
			<table cellpadding="0" cellspacing="0" style="width: 100%;">
				<tr>
					<td rowspan="2" style="width: 20px;"></td>
					<td style="height: 52px;">
						<div style="color: #fff; font-size: 22px; font-weight: bold;">
							<a href="/index.php"
								style="color: #fff; font-size: 22px; font-weight: bold; text-decoration: none">jQuery
								EasyUI</a>
						</div>
						<div style="color: #fff">
							<a href="/index.php" style="color: #fff; text-decoration: none">easyui
								helps you build your web pages easily!</a>
						</div>
					</td>
					<td
						style="padding-right: 5px; text-align: right; vertical-align: bottom;">
						<div id="topmenu">
							<a href="/index.php">Home</a> <a href="/demo/main/index.php">Demo</a>
							<a href="/tutorial/index.php">Tutorial</a> <a
								href="/documentation/index.php">Documentation</a> <a
								href="/download/index.php">Download</a> <a
								href="/extension/index.php">Extension</a> <a href="/contact.php">Contact</a>
							<a href="/forum/index.php">Forum</a>
						</div>
					</td>
				</tr>
			</table>
		</div>

	</div>
	<div id="mainwrap">
		<div id="content">

			<link rel="stylesheet" type="text/css"
				href="/easyui/themes/default/easyui.css">
			<link rel="stylesheet" type="text/css" href="/easyui/themes/icon.css">
			<link rel="stylesheet" type="text/css" href="/easyui/demo/demo.css">
			<link rel="stylesheet" href="/css/main.css" type="text/css" />
			<link rel="stylesheet" href="/css/demo1.css" type="text/css" />
			<link type="text/css" rel="stylesheet"
				href="../../prettify/prettify.css"></link>
			<script src="../../prettify/prettify.js"></script>
			<script type="text/javascript" src="/easyui/jquery-1.8.0.min.js"></script>
			<script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
			<script type="text/javascript" src="/easyui/jquery.edatagrid.js"></script>
			<script type="text/javascript" src="/easyui/datagrid-detailview.js"></script>
			<script type="text/javascript" src="/easyui/datagrid-groupview.js"></script>
			<script type="text/javascript" src="/easyui/datagrid-bufferview.js"></script>
			<script type="text/javascript" src="/easyui/datagrid-scrollview.js"></script>


			<div style="direction: ltr">
				<div class="submenu"
					style="margin-bottom: -10px; padding-left: 20px">
					<a href="../../demo/main/index.php">Web Demos</a> <a
						href="../../demo-mobile/main/index.php">Mobile Demos</a> <a
						href="../../themebuilder/index.php">Theme Builder</a>
				</div>
				<div
					style="position: relative; width: 20px; height: 20px; left: 58px; top: 1px">
					<div class="submenu-arrow"></div>
					<div class="submenu-arrow-inner"></div>
				</div>
			</div>
			<div class="plugins">
				<ul>
					<li><a href='javascript:void(0)'
						onclick="open2('Application')">Application</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Panel')">Panel</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Accordion')">Accordion</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Tabs')">Tabs</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Layout')">Layout</a></li>
					<li><a href='javascript:void(0)' onclick="open2('DataGrid')">DataGrid</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('PropertyGrid')">PropertyGrid</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Tree')">Tree</a></li>
					<li><a href='javascript:void(0)' onclick="open2('TreeGrid')">TreeGrid</a></li>
					<li><a href='javascript:void(0)' onclick="open2('LinkButton')">LinkButton</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Menu')">Menu</a></li>
					<li><a href='javascript:void(0)' onclick="open2('MenuButton')">MenuButton</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('SplitButton')">SplitButton</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Pagination')">Pagination</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('ProgressBar')">ProgressBar</a></li>
					<li><a href='javascript:void(0)' onclick="open2('SearchBox')">SearchBox</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Form')">Form</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Combo')">Combo</a></li>
					<li><a href='javascript:void(0)' onclick="open2('ComboBox')">ComboBox</a></li>
					<li><a href='javascript:void(0)' onclick="open2('ComboGrid')">ComboGrid</a></li>
					<li><a href='javascript:void(0)' onclick="open2('ComboTree')">ComboTree</a></li>
					<li><a href='javascript:void(0)' onclick="open2('NumberBox')">NumberBox</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('NumberSpinner')">NumberSpinner</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Calendar')">Calendar</a></li>
					<li><a href='javascript:void(0)' onclick="open2('DateBox')">DateBox</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('DateTimeBox')">DateTimeBox</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('TimeSpinner')">TimeSpinner</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Slider')">Slider</a></li>
					<li><a href='javascript:void(0)'
						onclick="open2('ValidateBox')">ValidateBox</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Window')">Window</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Dialog')">Dialog</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Messager')">Messager</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Draggable')">Draggable</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Droppable')">Droppable</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Resizable')">Resizable</a></li>
					<li><a href='javascript:void(0)' onclick="open2('Tooltip')">Tooltip</a></li>
				</ul>
			</div>
			<div>
				<div
					style="width: 742px; float: right; background: #fff; border: 1px solid #ddd;">
					<div id="demo"
						data-options="href:'../../easyui/demo/tabs/basic.html',border:false,onLoad:onLoad"
						style="padding: 20px; overflow: hidden; min-height: 300px"></div>
					<div
						style="height: 40px; line-height: 40px; padding: 0 20px; background: #fafafa; border: 1px solid #ddd; border-width: 1px 0">
						<h2 style="margin: 0">Source Code</h2>
					</div>
					<div id="code"
						style="height: 260px; overflow: auto; direction: ltr;"></div>
				</div>
				<div>
					<h3 style="border-bottom: 1px solid #ddd; padding: 18px 0 0 10px">Tabs</h3>
					<ul class='pitem'>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/basic.html',this)">Basic</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/autoheight.html',this)">Auto
								Height</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/hover.html',this)">Hover
								Tabs</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/nestedtabs.html',this)">Nested
								Tabs</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/striptools.html',this)">Strip
								Tools</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/tabstools.html',this)">Tabs
								Tools</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/tabposition.html',this)">Tab
								Position</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/fixedwidth.html',this)">Fixed
								Tab Width</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/tabimage.html',this)">Tabs
								with Images</a></li>
						<li><a href='javascript:void(0)'
							onclick="open1('../../easyui/demo/tabs/dropdown.html',this)">Tabs
								with DropDown</a></li>
					</ul>
				</div>
				<div style="clear: both"></div>
			</div>

			<div id="setting" style="position: absolute;">
				<table>
					<tr>
						<td><span style="color: #999">Themes:</span></td>
						<td><select id="cb-theme"
							data-options="editable:false,panelHeight:'auto',onChange:onChangeTheme">
								<option value='default' selected>Default</option>
								<option value='gray'>Gray</option>
								<option value='black'>Black</option>
								<option value='bootstrap'>Bootstrap</option>
								<option value='metro'>Metro</option>
								<option value='metro-blue'>Metro Blue</option>
								<option value='metro-gray'>Metro Gray</option>
								<option value='metro-green'>Metro Green</option>
								<option value='metro-orange'>Metro Orange</option>
								<option value='metro-red'>Metro Red</option>
						</select></td>
						<td><span style="color: #999">RTL:</span></td>
						<td><input id="ck-rtl" type="checkbox" onclick="open2()">
						</td>
					</tr>
				</table>
			</div>


			<script>
				$(function() {
					$('#demo').panel();
					$('#cb-theme').combobox();
					var dp = $('#demo').offset();
					if ($('#ck-rtl').is(':checked')) {
						$('body').addClass('demo-rtl');
						$('#setting').css({
							left : (dp.left + 15),
							top : (dp.top + 18)
						});
					} else {
						$('#setting').css(
								{
									left : (dp.left + $('#demo').outerWidth()
											- $('#setting').outerWidth() - 15),
									top : (dp.top + 18)
								});
					}
				});
				function onLoad(data) {
					data = data.replace(/(\r\n|\r|\n)/g, '\n');
					data = data.replace(/\t/g, '    ');
					$('#code')
							.html(
									'<pre name="code" class="prettyprint linenums" style="border:0"></pre>');
					$('#code').find('pre').text(data);
					prettyPrint();
				}
				function onChangeTheme(theme) {
					var link = $('#content').find('link:first');
					link
							.attr('href', '/easyui/themes/' + theme
									+ '/easyui.css');
				}
				var currPlugin = 'Tabs';
				var currPageItem = 'Basic';
				function open1(url, a) {
					currPageItem = $(a).text();
					$('body>div.menu-top').menu('destroy');
					$('body>div.window>div.window-body').window('destroy');
					$('#demo').panel('refresh', url);
				}
				function open2(plugin) {
					if (plugin) {
						currPlugin = plugin;
						currPageItem = '';
					}
					var href = '?plugin=' + currPlugin + '&theme='
							+ $('#cb-theme').combobox('getValue');
					href += '&dir='
							+ ($('#ck-rtl').is(':checked') ? 'rtl' : 'ltr');
					href += '&pitem=' + currPageItem;
					location.href = href;
				}
			</script>

			﻿
		</div>
	</div>
	<div id="footer">
		<div>Copyright © 2010-2013 www.jeasyui.com</div>
	</div>
</body>
</html>