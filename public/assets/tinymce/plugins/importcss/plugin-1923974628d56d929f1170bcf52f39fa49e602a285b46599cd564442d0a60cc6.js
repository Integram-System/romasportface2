tinymce.PluginManager.add("importcss",function(t){function e(t){var e=tinymce.Env.cacheSuffix;return"string"==typeof t&&(t=t.replace("?"+e,"").replace("&"+e,"")),t}function n(e){var n=t.settings,i=n.skin!==!1?n.skin||"lightgray":!1;if(i){var r=n.skin_url;return r=r?t.documentBaseURI.toAbsolute(r):tinymce.baseURL+"/skins/"+i,e===r+"/content"+(t.inline?".inline":"")+".min.css"}return!1}function i(t){return"string"==typeof t?function(e){return-1!==e.indexOf(t)}:t instanceof RegExp?function(e){return t.test(e)}:t}function r(i,r){function s(t,i){var a,l=t.href;if(l=e(l),l&&r(l,i)&&!n(l)){o(t.imports,function(t){s(t,!0)});try{a=t.cssRules||t.rules}catch(u){}o(a,function(t){t.styleSheet?s(t.styleSheet,!0):t.selectorText&&o(t.selectorText.split(","),function(t){c.push(tinymce.trim(t))})})}}var c=[],a={};o(t.contentCSS,function(t){a[t]=!0}),r||(r=function(t,e){return e||a[t]});try{o(i.styleSheets,function(t){s(t)})}catch(l){}return c}function s(e){var n,i=/^(?:([a-z0-9\-_]+))?(\.[a-z0-9_\-\.]+)$/i.exec(e);if(i){var r=i[1],s=i[2].substr(1).split(".").join(" "),c=tinymce.makeMap("a,img");return i[1]?(n={title:e},t.schema.getTextBlockElements()[r]?n.block=r:t.schema.getBlockElements()[r]||c[r.toLowerCase()]?n.selector=r:n.inline=r):i[2]&&(n={inline:"span",title:e.substr(1),classes:s}),t.settings.importcss_merge_classes!==!1?n.classes=s:n.attributes={"class":s},n}}var c=this,o=tinymce.each;t.on("renderFormatsMenu",function(e){var n=t.settings,a={},l=n.importcss_selector_converter||s,u=i(n.importcss_selector_filter),f=e.control;t.settings.importcss_append||f.items().remove();var m=[];tinymce.each(n.importcss_groups,function(t){t=tinymce.extend({},t),t.filter=i(t.filter),m.push(t)}),o(r(e.doc||t.getDoc(),i(n.importcss_file_filter)),function(e){if(-1===e.indexOf(".mce-")&&!a[e]&&(!u||u(e))){var n,i=l.call(c,e);if(i){var r=i.name||tinymce.DOM.uniqueId();if(m)for(var s=0;s<m.length;s++)if(!m[s].filter||m[s].filter(e)){m[s].item||(m[s].item={text:m[s].title,menu:[]}),n=m[s].item.menu;break}t.formatter.register(r,i);var o=tinymce.extend({},f.settings.itemDefaults,{text:i.title,format:r});n?n.push(o):f.add(o)}a[e]=!0}}),o(m,function(t){f.add(t.item)}),e.control.renderNew()}),c.convertSelectorToFormat=s});