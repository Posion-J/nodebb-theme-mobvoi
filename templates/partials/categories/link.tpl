<!-- IF ../isSection -->
{../name}
<!-- ELSE -->
<!-- IF ../link -->
<a href="{../link}" itemprop="url">
<!-- ELSE -->
<a href="{config.relative_path}/category/{../slug}" itemprop="url">
<!-- ENDIF ../link -->
{../name}
</a>
<a href="{config.relative_path}/category/{../slug}" itemprop="url" class="see-more">
<!-- ENDIF ../link -->
See more >
</a>
<!-- ENDIF ../isSection -->