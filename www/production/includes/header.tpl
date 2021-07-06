<header class="page-header">
    <div class="page-header__head">
        <div class="container">
            <div class="page-header__head__content">
                <a href="/" class="page-header__logo"></a>
                <div class="page-header__block-info">
                    <ul class="page-header__infos">
                        <li class="max-768-h">
                            <div class="page-header__infos__item">
                                <div class="img">
                                    <img src="assets/production/img/head_icon_1.png" alt="">
                                </div>
                                <div class="content">
                                    <div class="title">[[%word_1? &namespace=`langs`]]</div>
                                    <div class="info">[[#147.m_times_work]]</div>
                                </div>
                            </div>
                        </li>

                        <li class="max-1200-h">
                            <div class="page-header__infos__item">
                                <div class="img">
                                    <img src="assets/production/img/head_icon_2.png" alt="">
                                </div>
                                <div class="content">
                                    <div class="title">[[%word_2? &namespace=`langs`]]</div>
                                    <div class="info">[[#147.m_diagn]]</div>
                                </div>
                            </div>
                        </li>

                        <li class="max-992-h">
                            <div class="page-header__infos__item">
                                <div class="img">
                                    <img src="assets/production/img/head_icon_3.png" alt="">
                                </div>
                                <div class="content">
                                    <div class="title">[[%word_3? &namespace=`langs`]]</div>
                                    <a href="tel:[[#147.m_phones:phoneFormat]]" class="info">[[#147.m_phones]]</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <button class="btn-default btn-call-me">[[%word_4? &namespace=`langs`]]</button>

                    <button class="btn-menu-show"></button>
                </div>
            </div>
        </div>
    </div>
    <div class="page-header__nav max-992-h">
        <div class="container">
            <div class="page-header__nav__content">
                <div class="header-nav-item header-nav-item-menu page-header__nav__locations ">
                    <div class="nav-item__title">Киев</div>
                    <div class="nav-item__content">
                        <ul>
                            [[++g_sities]]
                        </ul>
                    </div>
                </div>

                <div class="header-nav-other">
                    <div class="header-nav-item header-nav-item-menu">
                        <div class="nav-item__title">ГЕО</div>
                        <div class="nav-item__content">
                            <ul>
                                <li><a href="">Киев</a></li>
                                <li><a href="">Одесса</a></li>
                                <li><a href="">Одесса</a></li>
                                <li><a href="">Одесса</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="header-nav-item header-nav-item-menu">
                        <div class="nav-item__title">Типичные поломки</div>
                        <div class="nav-item__content">
                            <ul>
                                <li>
                                    <a href="">Выезд мастера</a>
                                    <div class="nav-item__content nav-item__content__sub">
                                        <ul>
                                            <li><a href="service.php">Ремонт стиральных машин</a></li>
                                            <li><a href="">Бренды стиральных машин</a></li>
                                            <li><a href="">Мастера в вашем городе</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="">Диагностика (при выполнении ремонта)</a>
                                    <div class="nav-item__content nav-item__content__sub">
                                        <ul>
                                            <li><a href="service.php">Ремонт стиральных машин</a></li>
                                            <li><a href="">Бренды стиральных машин</a></li>
                                            <li><a href="">Мастера в вашем городе</a></li>
                                        </ul>
                                    </div></li>
                                <li><a href="">Диагностика (в случае отказа от ремонта)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                                <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="header-nav-item">
                        <div class="nav-item__title"><a href="">Блог мастера</a></div>
                    </div>

                    <div class="header-nav-item ">
                        <div class="nav-item__title"><a href="">Коды ошибок</a></div>
                    </div>

                    <div class="header-nav-item item__langs-switch">
                        <div class="langs-switch">
                        {if $_modx->context['key'] == 'web'}<a href="/ua/">UA</a>{/if}
                        {if $_modx->context['key'] == 'ua'}<a href="/">RU</a>{/if}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>

<div class="popup-menu-mobile popup-default">
    <button class="btn-close-popup"></button>
    <div class="content-popup">
        <div class="c-top">
            <div class="logo-center text-center"><a href="" class="logo-popup"></a></div>
            <div class="menu-popup-nav-other">
                <div class="header-nav-item header-nav-item-menu">
                    <div class="nav-item__title">ГЕО</div>
                    <div class="nav-item__content">
                        <ul>
                            <li><a href="">Киев</a></li>
                            <li><a href="">Одесса</a></li>
                            <li><a href="">Одесса</a></li>
                            <li><a href="">Одесса</a></li>
                        </ul>
                    </div>
                </div>

                <div class="header-nav-item header-nav-item-menu">
                    <div class="nav-item__title">Типичные поломки</div>
                    <div class="nav-item__content">
                        <ul>
                            <li>
                                <a href="">Выезд мастера</a>
                                <div class="nav-item__content nav-item__content__sub">
                                    <ul>
                                        <li><a href="service.php">Ремонт стиральных машин</a></li>
                                        <li><a href="">Бренды стиральных машин</a></li>
                                        <li><a href="">Мастера в вашем городе</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="">Диагностика (при выполнении ремонта)</a>
                                <div class="nav-item__content nav-item__content__sub">
                                    <ul>
                                        <li><a href="service.php">Ремонт стиральных машин</a></li>
                                        <li><a href="">Бренды стиральных машин</a></li>
                                        <li><a href="">Мастера в вашем городе</a></li>
                                    </ul>
                                </div></li>
                            <li><a href="">Диагностика (в случае отказа от ремонта)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                            <li><a href="">Замена ТЭНа (водонагревателя)</a></li>
                        </ul>
                    </div>
                </div>

                <div class="header-nav-item">
                    <div class="nav-item__title"><a href="">Блог мастера</a></div>
                </div>

                <div class="header-nav-item ">
                    <div class="nav-item__title"><a href="">Коды ошибок</a></div>
                </div>
            </div>
        </div>
        <div class="c-bottom">
            <ul class="page-header__infos">
                <li>
                    <div class="page-header__infos__item">
                        <div class="img">
                            <img src="assets/production/img/head_icon_1.png" alt="">
                        </div>
                        <div class="content">
                            <div class="title">Время работы:</div>
                            <div class="info">Пн-Вс  8:00-22:00</div>
                        </div>
                    </div>
                </li>

                <li class="">
                    <div class="page-header__infos__item">
                        <div class="img">
                            <img src="assets/production/img/head_icon_2.png" alt="">
                        </div>
                        <div class="content">
                            <div class="title">Диагностика:</div>
                            <div class="info">БЕСПЛАТНО</div>
                        </div>
                    </div>
                </li>

                <li class="">
                    <div class="page-header__infos__item">
                        <div class="img">
                            <img src="assets/production/img/head_icon_3.png" alt="">
                        </div>
                        <div class="content">
                            <div class="title">Телефон в Киеве:</div>
                            <div class="info">(044)777-77-77</div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</div>
