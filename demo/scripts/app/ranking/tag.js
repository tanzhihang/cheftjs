riot.tag('ranking', '<div class="ui-tooltips ui-tooltips-vip"> <div class="ui-tooltips-cnt ui-border-b">好基友推荐排行榜</div> </div> <button class="ui-btn-lg" ontouchstart="{add}">增加一行</button> <ul class="ui-grid-trisect grid-header"> <li> 手机号 </li> <li> 推荐人数 </li> <li> 日期 </li> </ul> <ul class="ui-list ui-list-text ui-border-tb"> <li class="ui-border-t" each="{ranking.data}" ontouchstart="{parent.edit}"> <div class="ranking-badge ranking-badge ranking1" ontouchstart="{parent.remove}">{id}</div> <ul class="ui-grid-trisect" style="width: 95%;"> <li> {phone} </li> <li style="text-align: center;">&nbsp;{number}人</li> <li style="text-align: right;">{date}</li> </ul> </li> </ul>', function(opts) {
          app.mixin(this, require('./'));
    
});
