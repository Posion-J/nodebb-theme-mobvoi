<div class="card background-link-container" style="border-color: {../bgColor}">
	{{{each ./posts}}}
	<!-- IF @first -->
	<div component="category/posts" itemprop="text" class="forum-excellent">
		<a class="background-link" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->"></a>
		<span class="ticwatch-type">TicWatch Pro 3 Ultra Gps</span>
		<div class="content">
			{posts.content}
		</div>
		<p class="post-bottom">
			<a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(posts.user, "sm", true)}</a>
			<span id="user-header-name" class="visible-xs-inline">{posts.user.displayname}</span>
			<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				<span class="post-time">{../timestampISO}</span>
				<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}bbb</span>
			</a>
		</p>
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
			<small>[[global:topics]]</small>
			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
		</div>
		<!-- <div class="comment-number">
			<div class="col-md-1 hidden-sm hidden-xs stats">
				<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
				<small>aaa</small>		
			</div>
			<div class="col-md-1 hidden-sm hidden-xs stats">
				<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
				<small>{../totalPostCount}</small>
			</div>
		</div> -->
	</div>
	<!-- <img src="https://d1yt8qkhp8oydd.cloudfront.net/ticbuy/img/index-0627-1.jpg" alt="" class="plate-content-right"> -->
	<video src="https://d1yt8qkhp8oydd.cloudfront.net/ticbuy/img/about-id-13.mp4" class="plate-content-right" controls></video>
	<!-- ENDIF @first -->
	{{{end}}}

	<!-- IF !../posts.length -->
	<div component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->




</div>
