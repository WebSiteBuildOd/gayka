{extends "file:layouts/layout.tpl"}
{block 'content'}
    {include 'file:includes/banner-main.tpl'}
    {include 'file:includes/present-brands.tpl'}

    <div class="section__page-content">
        <div class="container">
            [[*content]]

        </div>
    </div>
{/block}
