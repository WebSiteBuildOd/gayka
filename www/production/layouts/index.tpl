{extends "file:layouts/layout.tpl"}
{block 'content'}
    {include 'file:includes/banner-main.tpl'}
    {include 'file:includes/present-brands.tpl'}
    {include 'file:includes/advantages.tpl'}
    {include 'file:includes/form-order.tpl'}
    {include 'file:includes/map.tpl'}
    {include 'file:includes/reviews-slider.tpl'}
    {include 'file:includes/articles-slider.tpl'}
    {include 'file:includes/there-question.tpl'}

    <div class="section__page-content">
        <div class="container">
            [[*content]]
        </div>
    </div>
{/block}
