/*!
 * # Semantic UI - Popup
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */

(function(e,t,n,r){t=typeof t!="undefined"&&t.Math==Math?t:typeof self!="undefined"&&self.Math==Math?self:Function("return this")(),e.fn.popup=function(i){var s=e(this),o=e(n),u=e(t),a=e("body"),f=s.selector||"",l=!0,c=(new Date).getTime(),h=[],p=arguments[0],d=typeof p=="string",v=[].slice.call(arguments,1),m;return s.each(function(){var s=e.isPlainObject(i)?e.extend(!0,{},e.fn.popup.settings,i):e.extend({},e.fn.popup.settings),g=s.selector,y=s.className,b=s.error,w=s.metadata,E=s.namespace,S="."+s.namespace,x="module-"+E,T=e(this),N=e(s.context),C=e(s.scrollContext),k=e(s.boundary),L=s.target?e(s.target):T,A,O,M=0,_=!1,D=!1,P=this,H=T.data(x),B,j,F,I;I={initialize:function(){I.debug("Initializing",T),I.createID(),I.bind.events(),!I.exists()&&s.preserve&&I.create(),I.observeChanges(),I.instantiate()},instantiate:function(){I.verbose("Storing instance",I),H=I,T.data(x,H)},observeChanges:function(){"MutationObserver"in t&&(B=new MutationObserver(I.event.documentChanged),B.observe(n,{childList:!0,subtree:!0}),I.debug("Setting up mutation observer",B))},refresh:function(){s.popup?A=e(s.popup).eq(0):s.inline&&(A=L.nextAll(g.popup).eq(0),s.popup=A),s.popup?(A.addClass(y.loading),O=I.get.offsetParent(),A.removeClass(y.loading),s.movePopup&&I.has.popup()&&I.get.offsetParent(A)[0]!==O[0]&&(I.debug("Moving popup to the same offset parent as activating element"),A.detach().appendTo(O))):O=s.inline?I.get.offsetParent(L):I.has.popup()?I.get.offsetParent(A):a,O.is("html")&&O[0]!==a[0]&&(I.debug("Setting page as offset parent"),O=a),I.get.variation()&&I.set.variation()},reposition:function(){I.refresh(),I.set.position()},destroy:function(){I.debug("Destroying previous module"),B&&B.disconnect(),A&&!s.preserve&&I.removePopup(),clearTimeout(I.hideTimer),clearTimeout(I.showTimer),I.unbind.close(),I.unbind.events(),T.removeData(x)},event:{start:function(t){var n=e.isPlainObject(s.delay)?s.delay.show:s.delay;clearTimeout(I.hideTimer),D||(I.showTimer=setTimeout(I.show,n))},end:function(){var t=e.isPlainObject(s.delay)?s.delay.hide:s.delay;clearTimeout(I.showTimer),I.hideTimer=setTimeout(I.hide,t)},touchstart:function(e){D=!0,I.show()},resize:function(){I.is.visible()&&I.set.position()},documentChanged:function(t){[].forEach.call(t,function(t){t.removedNodes&&[].forEach.call(t.removedNodes,function(t){if(t==P||e(t).find(P).length>0)I.debug("Element removed from DOM, tearing down events"),I.destroy()})})},hideGracefully:function(t){var r=e(t.target),i=e.contains(n.documentElement,t.target),s=r.closest(g.popup).length>0;t&&!s&&i?(I.debug("Click occurred outside popup hiding popup"),I.hide()):I.debug("Click was inside popup, keeping popup open")}},create:function(){var t=I.get.html(),n=I.get.title(),r=I.get.content();t||r||n?(I.debug("Creating pop-up html"),t||(t=s.templates.popup({title:n,content:r})),A=e("<div/>").addClass(y.popup).data(w.activator,T).html(t),s.inline?(I.verbose("Inserting popup element inline",A),A.insertAfter(T)):(I.verbose("Appending popup element to body",A),A.appendTo(N)),I.refresh(),I.set.variation(),s.hoverable&&I.bind.popup(),s.onCreate.call(A,P)):L.next(g.popup).length!==0?(I.verbose("Pre-existing popup found"),s.inline=!0,s.popup=L.next(g.popup).data(w.activator,T),I.refresh(),s.hoverable&&I.bind.popup()):s.popup?(e(s.popup).data(w.activator,T),I.verbose("Used popup specified in settings"),I.refresh(),s.hoverable&&I.bind.popup()):I.debug("No content specified skipping display",P)},createID:function(){F=(Math.random().toString(16)+"000000000").substr(2,8),j="."+F,I.verbose("Creating unique id for element",F)},toggle:function(){I.debug("Toggling pop-up"),I.is.hidden()?(I.debug("Popup is hidden, showing pop-up"),I.unbind.close(),I.show()):(I.debug("Popup is visible, hiding pop-up"),I.hide())},show:function(e){e=e||function(){},I.debug("Showing pop-up",s.transition);if(I.is.hidden()&&(!I.is.active()||!I.is.dropdown())){I.exists()||I.create();if(s.onShow.call(A,P)===!1){I.debug("onShow callback returned false, cancelling popup animation");return}!s.preserve&&!s.popup&&I.refresh(),A&&I.set.position()&&(I.save.conditions(),s.exclusive&&I.hideAll(),I.animate.show(e))}},hide:function(e){e=e||function(){};if(I.is.visible()||I.is.animating()){if(s.onHide.call(A,P)===!1){I.debug("onHide callback returned false, cancelling popup animation");return}I.remove.visible(),I.unbind.close(),I.restore.conditions(),I.animate.hide(e)}},hideAll:function(){e(g.popup).filter("."+y.visible).each(function(){e(this).data(w.activator).popup("hide")})},exists:function(){return A?s.inline||s.popup?I.has.popup():A.closest(N).length>=1?!0:!1:!1},removePopup:function(){I.has.popup()&&!s.popup&&(I.debug("Removing popup",A),A.remove(),A=r,s.onRemove.call(A,P))},save:{conditions:function(){I.cache={title:T.attr("title")},I.cache.title&&T.removeAttr("title"),I.verbose("Saving original attributes",I.cache.title)}},restore:{conditions:function(){return I.cache&&I.cache.title&&(T.attr("title",I.cache.title),I.verbose("Restoring original attributes",I.cache.title)),!0}},supports:{svg:function(){return typeof SVGGraphicsElement===r}},animate:{show:function(t){t=e.isFunction(t)?t:function(){},s.transition&&e.fn.transition!==r&&T.transition("is supported")?(I.set.visible(),A.transition({animation:s.transition+" in",queue:!1,debug:s.debug,verbose:s.verbose,duration:s.duration,onComplete:function(){I.bind.close(),t.call(A,P),s.onVisible.call(A,P)}})):I.error(b.noTransition)},hide:function(t){t=e.isFunction(t)?t:function(){},I.debug("Hiding pop-up");if(s.onHide.call(A,P)===!1){I.debug("onHide callback returned false, cancelling popup animation");return}s.transition&&e.fn.transition!==r&&T.transition("is supported")?A.transition({animation:s.transition+" out",queue:!1,duration:s.duration,debug:s.debug,verbose:s.verbose,onComplete:function(){I.reset(),t.call(A,P),s.onHidden.call(A,P)}}):I.error(b.noTransition)}},change:{content:function(e){A.html(e)}},get:{html:function(){return T.removeData(w.html),T.data(w.html)||s.html},title:function(){return T.removeData(w.title),T.data(w.title)||s.title},content:function(){return T.removeData(w.content),T.data(w.content)||T.attr("title")||s.content},variation:function(){return T.removeData(w.variation),T.data(w.variation)||s.variation},popup:function(){return A},popupOffset:function(){return A.offset()},calculations:function(){var e=L[0],n=k[0]==t,r=s.inline||s.popup&&s.movePopup?L.position():L.offset(),i=n?{top:0,left:0}:k.offset(),o={},a=n?{top:u.scrollTop(),left:u.scrollLeft()}:{top:0,left:0},f;return o={target:{element:L[0],width:L.outerWidth(),height:L.outerHeight(),top:r.top,left:r.left,margin:{}},popup:{width:A.outerWidth(),height:A.outerHeight()},parent:{width:O.outerWidth(),height:O.outerHeight()},screen:{top:i.top,left:i.left,scroll:{top:a.top,left:a.left},width:k.width(),height:k.height()}},s.setFluidWidth&&I.is.fluid()&&(o.container={width:A.parent().outerWidth()},o.popup.width=o.container.width),o.target.margin.top=s.inline?parseInt(t.getComputedStyle(e).getPropertyValue("margin-top"),10):0,o.target.margin.left=s.inline?I.is.rtl()?parseInt(t.getComputedStyle(e).getPropertyValue("margin-right"),10):parseInt(t.getComputedStyle(e).getPropertyValue("margin-left"),10):0,f=o.screen,o.boundary={top:f.top+f.scroll.top,bottom:f.top+f.scroll.top+f.height,left:f.left+f.scroll.left,right:f.left+f.scroll.left+f.width},o},id:function(){return F},startEvent:function(){return s.on=="hover"?"mouseenter":s.on=="focus"?"focus":!1},scrollEvent:function(){return"scroll"},endEvent:function(){return s.on=="hover"?"mouseleave":s.on=="focus"?"blur":!1},distanceFromBoundary:function(e,t){var n={},r,i;return t=t||I.get.calculations(),r=t.popup,i=t.boundary,e&&(n={top:e.top-i.top,left:e.left-i.left,right:i.right-(e.left+r.width),bottom:i.bottom-(e.top+r.height)},I.verbose("Distance from boundaries determined",e,n)),n},offsetParent:function(t){var n=t!==r?t[0]:T[0],i=n.parentNode,s=e(i);if(i){var o=s.css("transform")==="none",u=s.css("position")==="static",a=s.is("html");while(i&&!a&&u&&o)i=i.parentNode,s=e(i),o=s.css("transform")==="none",u=s.css("position")==="static",a=s.is("html")}return s&&s.length>0?s:e()},positions:function(){return{"top left":!1,"top center":!1,"top right":!1,"bottom left":!1,"bottom center":!1,"bottom right":!1,"left center":!1,"right center":!1}},nextPosition:function(e){var t=e.split(" "),n=t[0],r=t[1],i={top:"bottom",bottom:"top",left:"right",right:"left"},o={left:"center",center:"right",right:"left"},u={"top left":"top center","top center":"top right","top right":"right center","right center":"bottom right","bottom right":"bottom center","bottom center":"bottom left","bottom left":"left center","left center":"top left"},a=n=="top"||n=="bottom",f=!1,l=!1,c=!1;_||(I.verbose("All available positions available"),_=I.get.positions()),I.debug("Recording last position tried",e),_[e]=!0,s.prefer==="opposite"&&(c=[i[n],r],c=c.join(" "),f=_[c]===!0,I.debug("Trying opposite strategy",c)),s.prefer==="adjacent"&&a&&(c=[n,o[r]],c=c.join(" "),l=_[c]===!0,I.debug("Trying adjacent strategy",c));if(l||f)I.debug("Using backup position",c),c=u[e];return c}},set:{position:function(e,t){if(L.length===0||A.length===0){I.error(b.notFound);return}var n,i,o,u,a,f,l,c;t=t||I.get.calculations(),e=e||T.data(w.position)||s.position,n=T.data(w.offset)||s.offset,i=s.distanceAway,o=t.target,u=t.popup,a=t.parent;if(o.width===0&&o.height===0&&!I.is.svg(o.element))return I.debug("Popup target is hidden, no action taken"),!1;s.inline&&(I.debug("Adding margin to calculation",o.margin),e=="left center"||e=="right center"?(n+=o.margin.top,i+=-o.margin.left):e=="top left"||e=="top center"||e=="top right"?(n+=o.margin.left,i-=o.margin.top):(n+=o.margin.left,i+=o.margin.top)),I.debug("Determining popup position from calculations",e,t),I.is.rtl()&&(e=e.replace(/left|right/g,function(e){return e=="left"?"right":"left"}),I.debug("RTL: Popup position updated",e)),M==s.maxSearchDepth&&typeof s.lastResort=="string"&&(e=s.lastResort);switch(e){case"top left":f={top:"auto",bottom:a.height-o.top+i,left:o.left+n,right:"auto"};break;case"top center":f={bottom:a.height-o.top+i,left:o.left+o.width/2-u.width/2+n,top:"auto",right:"auto"};break;case"top right":f={bottom:a.height-o.top+i,right:a.width-o.left-o.width-n,top:"auto",left:"auto"};break;case"left center":f={top:o.top+o.height/2-u.height/2+n,right:a.width-o.left+i,left:"auto",bottom:"auto"};break;case"right center":f={top:o.top+o.height/2-u.height/2+n,left:o.left+o.width+i,bottom:"auto",right:"auto"};break;case"bottom left":f={top:o.top+o.height+i,left:o.left+n,bottom:"auto",right:"auto"};break;case"bottom center":f={top:o.top+o.height+i,left:o.left+o.width/2-u.width/2+n,bottom:"auto",right:"auto"};break;case"bottom right":f={top:o.top+o.height+i,right:a.width-o.left-o.width-n,left:"auto",bottom:"auto"}}f===r&&I.error(b.invalidPosition,e),I.debug("Calculated popup positioning values",f),A.css(f).removeClass(y.position).addClass(e).addClass(y.loading),l=I.get.popupOffset(),c=I.get.distanceFromBoundary(l,t);if(I.is.offstage(c,e)){I.debug("Position is outside viewport",e);if(M<s.maxSearchDepth)return M++,e=I.get.nextPosition(e),I.debug("Trying new position",e),A?I.set.position(e,t):!1;if(!s.lastResort)return I.debug("Popup could not find a position to display",A),I.error(b.cannotPlace,P),I.remove.attempts(),I.remove.loading(),I.reset(),s.onUnplaceable.call(A,P),!1;I.debug("No position found, showing with last position")}return I.debug("Position is on stage",e),I.remove.attempts(),I.remove.loading(),s.setFluidWidth&&I.is.fluid()&&I.set.fluidWidth(t),!0},fluidWidth:function(e){e=e||I.get.calculations(),I.debug("Automatically setting element width to parent width",e.parent.width),A.css("width",e.container.width)},variation:function(e){e=e||I.get.variation(),e&&I.has.popup()&&(I.verbose("Adding variation to popup",e),A.addClass(e))},visible:function(){T.addClass(y.visible)}},remove:{loading:function(){A.removeClass(y.loading)},variation:function(e){e=e||I.get.variation(),e&&(I.verbose("Removing variation",e),A.removeClass(e))},visible:function(){T.removeClass(y.visible)},attempts:function(){I.verbose("Resetting all searched positions"),M=0,_=!1}},bind:{events:function(){I.debug("Binding popup events to module"),s.on=="click"&&T.on("click"+S,I.toggle),s.on=="hover"&&l&&T.on("touchstart"+S,I.event.touchstart),I.get.startEvent()&&T.on(I.get.startEvent()+S,I.event.start).on(I.get.endEvent()+S,I.event.end),s.target&&I.debug("Target set to element",L),u.on("resize"+j,I.event.resize)},popup:function(){I.verbose("Allowing hover events on popup to prevent closing"),A&&I.has.popup()&&A.on("mouseenter"+S,I.event.start).on("mouseleave"+S,I.event.end)},close:function(){(s.hideOnScroll===!0||s.hideOnScroll=="auto"&&s.on!="click")&&C.one(I.get.scrollEvent()+j,I.event.hideGracefully),s.on=="hover"&&D&&(I.verbose("Binding popup close event to document"),o.on("touchstart"+j,function(e){I.verbose("Touched away from popup"),I.event.hideGracefully.call(P,e)})),s.on=="click"&&s.closable&&(I.verbose("Binding popup close event to document"),o.on("click"+j,function(e){I.verbose("Clicked away from popup"),I.event.hideGracefully.call(P,e)}))}},unbind:{events:function(){u.off(j),T.off(S)},close:function(){o.off(j),C.off(j)}},has:{popup:function(){return A&&A.length>0}},is:{offstage:function(t,n){var r=[];return e.each(t,function(e,t){t<-s.jitter&&(I.debug("Position exceeds allowable distance from edge",e,t,n),r.push(e))}),r.length>0?!0:!1},svg:function(e){return I.supports.svg()&&e instanceof SVGGraphicsElement},active:function(){return T.hasClass(y.active)},animating:function(){return A!==r&&A.hasClass(y.animating)},fluid:function(){return A!==r&&A.hasClass(y.fluid)},visible:function(){return A!==r&&A.hasClass(y.visible)},dropdown:function(){return T.hasClass(y.dropdown)},hidden:function(){return!I.is.visible()},rtl:function(){return T.css("direction")=="rtl"}},reset:function(){I.remove.visible(),s.preserve?e.fn.transition!==r&&A.transition("remove transition"):I.removePopup()},setting:function(t,n){if(e.isPlainObject(t))e.extend(!0,s,t);else{if(n===r)return s[t];s[t]=n}},internal:function(t,n){if(e.isPlainObject(t))e.extend(!0,I,t);else{if(n===r)return I[t];I[t]=n}},debug:function(){!s.silent&&s.debug&&(s.performance?I.performance.log(arguments):(I.debug=Function.prototype.bind.call(console.info,console,s.name+":"),I.debug.apply(console,arguments)))},verbose:function(){!s.silent&&s.verbose&&s.debug&&(s.performance?I.performance.log(arguments):(I.verbose=Function.prototype.bind.call(console.info,console,s.name+":"),I.verbose.apply(console,arguments)))},error:function(){s.silent||(I.error=Function.prototype.bind.call(console.error,console,s.name+":"),I.error.apply(console,arguments))},performance:{log:function(e){var t,n,r;s.performance&&(t=(new Date).getTime(),r=c||t,n=t-r,c=t,h.push({Name:e[0],Arguments:[].slice.call(e,1)||"",Element:P,"Execution Time":n})),clearTimeout(I.performance.timer),I.performance.timer=setTimeout(I.performance.display,500)},display:function(){var t=s.name+":",n=0;c=!1,clearTimeout(I.performance.timer),e.each(h,function(e,t){n+=t["Execution Time"]}),t+=" "+n+"ms",f&&(t+=" '"+f+"'"),(console.group!==r||console.table!==r)&&h.length>0&&(console.groupCollapsed(t),console.table?console.table(h):e.each(h,function(e,t){console.log(t.Name+": "+t["Execution Time"]+"ms")}),console.groupEnd()),h=[]}},invoke:function(t,n,i){var s=H,o,u,a;return n=n||v,i=P||i,typeof t=="string"&&s!==r&&(t=t.split(/[\. ]/),o=t.length-1,e.each(t,function(n,i){var a=n!=o?i+t[n+1].charAt(0).toUpperCase()+t[n+1].slice(1):t;if(e.isPlainObject(s[a])&&n!=o)s=s[a];else{if(s[a]!==r)return u=s[a],!1;if(!e.isPlainObject(s[i])||n==o)return s[i]!==r?(u=s[i],!1):!1;s=s[i]}})),e.isFunction(u)?a=u.apply(i,n):u!==r&&(a=u),e.isArray(m)?m.push(a):m!==r?m=[m,a]:a!==r&&(m=a),u}},d?(H===r&&I.initialize(),I.invoke(p)):(H!==r&&H.invoke("destroy"),I.initialize())}),m!==r?m:this},e.fn.popup.settings={name:"Popup",silent:!1,debug:!1,verbose:!1,performance:!0,namespace:"popup",observeChanges:!0,onCreate:function(){},onRemove:function(){},onShow:function(){},onVisible:function(){},onHide:function(){},onUnplaceable:function(){},onHidden:function(){},on:"hover",boundary:t,addTouchEvents:!0,position:"top left",variation:"",movePopup:!0,target:!1,popup:!1,inline:!1,preserve:!1,hoverable:!1,content:!1,html:!1,title:!1,closable:!0,hideOnScroll:"auto",exclusive:!1,context:"body",scrollContext:t,prefer:"opposite",lastResort:!1,delay:{show:50,hide:70},setFluidWidth:!0,duration:200,transition:"scale",distanceAway:0,jitter:2,offset:0,maxSearchDepth:15,error:{invalidPosition:"The position you specified is not a valid position",cannotPlace:"Popup does not fit within the boundaries of the viewport",method:"The method you called is not defined.",noTransition:"This module requires ui transitions <https://github.com/Semantic-Org/UI-Transition>",notFound:"The target or popup you specified does not exist on the page"},metadata:{activator:"activator",content:"content",html:"html",offset:"offset",position:"position",title:"title",variation:"variation"},className:{active:"active",animating:"animating",dropdown:"dropdown",fluid:"fluid",loading:"loading",popup:"ui popup",position:"top left center bottom right",visible:"visible"},selector:{popup:".ui.popup"},templates:{escape:function(e){var t=/[&<>"'`]/g,n=/[&<>"'`]/,r={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},i=function(e){return r[e]};return n.test(e)?e.replace(t,i):e},popup:function(t){var n="",i=e.fn.popup.settings.templates.escape;return typeof t!==r&&(typeof t.title!==r&&t.title&&(t.title=i(t.title),n+='<div class="header">'+t.title+"</div>"),typeof t.content!==r&&t.content&&(t.content=i(t.content),n+='<div class="content">'+t.content+"</div>")),n}}}})(jQuery,window,document);