<div class="card background-link-container" style="border-color: {../bgColor}">
	{{{each ./posts}}}
	<!-- IF @first -->
	<div component="category/posts" itemprop="text" class="forum-excellent">
		<a class="background-link" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->"></a>
		<div class="content">
			{posts.content}
		</div>
		<p class="post-bottom">
			<a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(posts.user, "sm", true)}</a>
			<span id="user-header-name" class="visible-xs-inline">{posts.user.displayname}</span>
			<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				<span class="post-time">{../timestampISO}</span>
			</a>
		</p>
	</div>
	<img src="https://d1yt8qkhp8oydd.cloudfront.net/ticbuy/img/index-0627-1.jpg" alt="" class="plate-content-right">
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
