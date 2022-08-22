
			<div id="nav-dropdown" class="hidden-xs">
				<!-- IF !maintenanceHeader -->
				<!-- IF config.loggedIn -->

				<!-- ELSE -->
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right">
					<!-- IF allowRegistration -->
					<li>
						<a href="{relative_path}/register">
							<i class="fa fa-pencil fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF config.loggedIn -->
				<!-- IF config.searchEnabled -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET">
							<button id="search-button" type="button" class="btn btn-link"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
							<div class="hidden" id="search-fields">
								<div class="form-group">
									<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
									<a href="#"><i class="fa fa-gears fa-fw advanced-search-link"></i></a>
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
						</form>
						<div id="quick-search-container" class="quick-search-container hidden">
							<div class="checkbox filter-category">
								<label>
									<input type="checkbox" checked><span class="name"></span>
								</label>
							</div>
							<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
							<div class="quick-search-results-container"></div>
						</div>
					</li>
					<li class="visible-xs" id="search-menu">
						<a href="{relative_path}/search">
							<i class="fa fa-search fa-fw"></i> [[global:search]]
						</a>
					</li>
				</ul>
				<!-- ENDIF config.searchEnabled -->

				<ul class="nav navbar-nav navbar-right hidden-xs">
					<li>
						<a href="#" id="reconnect" class="hide" title="[[global:reconnecting-message, {config.siteTitle}]]">
							<i class="fa fa-check"></i>
						</a>
					</li>
				</ul>

				<ul id="main-nav" class="nav navbar-nav">
					{{{each navigation}}}
					<!-- IF function.displayMenuItem, @index -->
					<li class="{navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}">
						<a title="{navigation.title}" class="navigation-link {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
						{{{ if navigation.dropdown }}} href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
							{{{ if navigation.iconClass }}}
							<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
							{{{ end }}}
							{{{ if navigation.text }}}
							<span class="{navigation.textClass}">{navigation.text}</span>
							{{{ end }}}
							{{{ if navigation.dropdown}}}
							<i class="fa fa-caret-down"></i>
							{{{ end }}}
						</a>
						{{{ if navigation.dropdown }}}
						<ul class="dropdown-menu">
							{navigation.dropdownContent}
						</ul>
						{{{ end }}}
					</li>
					<!-- ENDIF function.displayMenuItem -->
					{{{end}}}
				</ul>
				<div class="search-box">
					<div class="menmber">
						<input type="text" placeholder="Menmber">
						<img src="/assets/images/touch/el-icon-arrow-down.png" alt="">
					</div>
					<div class="menmber keywords">
						<input type="text" placeholder="Input keywords">
						<img src="/assets/images/touch/search.png" alt="">
					</div>
				</div>

				<a href="" class="sign-in">
					<img src="/assets/images/header/check.svg" alt="" class="check-in-img">
					<div class="check-in">Check in</div>
				</a>
				<!-- ELSE -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in fa-fw hidden-sm hidden-md hidden-lg"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF !maintenanceHeader -->
			</div>
