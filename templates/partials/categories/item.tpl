<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix category-{../cid}">
	<meta itemprop="name" content="{../name}">
	<h2 class="title">
		<!-- IMPORT partials/categories/link.tpl -->
	</h2>
	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="screen">
			<a href="javascript:void(0)">Most liked</a>
			<div class="line"></div>
			<a href="javascript:void(0)" class="latest">Latest</a>
		</div>
		<!-- IMPORT partials/categories/lastpost.tpl -->
		<!-- IMPORT partials/categories/lastpost.tpl -->
		<!-- IF !../link -->
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
			<small>[[global:topics]]</small>
			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
		</div>
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
			<small>[[global:posts]]</small>
		</div>
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>
