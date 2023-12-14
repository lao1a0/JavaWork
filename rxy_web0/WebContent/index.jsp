<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welocme to RXY's Home</title>
   
    <!--  页面美化 -->
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" type="image/x-icon" href="img/title.svg"/> <!--在 title 添加网站图标  -->
    
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/aos.css" rel="stylesheet">
    
    <link href="css/append.css" rel="stylesheet">
    
    <!-- main style -->
    <link href="css/style.css" rel="stylesheet">
    
</head>

<body>
   
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">

            <div class="preloader" aria-busy="true" aria-label="Loading, please wait." role="progressbar">
            </div>

        </div>
    </div>
    <!-- ./Preloader -->
    
    <!-- header -->
    <header class="navbar-fixed-top">
        <nav>
            <ul>
                <li><a href="#about">基本资料</a></li>
                <li><a href="#experience">学习经历</a></li>
                <li><a href="#projects">最新动态</a></li>
                <li><a href="#contact">联系我</a></li>
            </ul>
        </nav>
    </header>
    <!-- ./header -->
    
    <!-- home -->
    <div class="section" id="home" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="disply-table">
                <div class="table-cell" data-aos="fade-up" data-aos-delay="0">
                    <h4>Steve Jobs</h4>
                    <h1>Stay Hungry &<br /> Stay Foolish</h1> </div>
            </div>
        </div>
    </div>
    <!-- ./home -->
    
    <!-- about -->
    <div class="section" id="about">
        <div class="container">
            <div class="col-md-6" data-aos="fade-up">
                <h4>01</h4>
                <h1 class="size-50">Know <br /> About me</h1>
                <div class="h-50"></div>
                <p>信1803——饶欣宇</p>
                <p>不会唱,也不会跳,更不会rap,web学习时长3个月的个人练习生</p>
                <div class="h-50"></div> <img src="img/Signature.svg" width="230" alt="" />
                <div class="h-50"></div>
            </div>
            <div class="col-md-6 about-img-div">
                <div class="about-border" data-aos="fade-up" data-aos-delay=".5"></div>
                <img src="img/about.jpg" width="400" style="padding:20px" class="img-responsive" alt="" align="right" data-aos="fade-right" data-aos-delay="0" />
            </div>
        </div>
    <!-- ./about -->
    
    <!-- experience  -->
    <div class="section" id="experience">
        <div class="container">
            <div class="col-md-12">
                <h4>02</h4>
                <h1 class="size-50">Learning <br /> Experience</h1>
                <div class="h-50"></div>
            </div>
            <div class="col-md-12">
                <ul class="timeline">
                    <li class="timeline-event" data-aos="fade-up">
                        <label class="timeline-event-icon"></label>
                        <div class="timeline-event-copy">
                            <p class="timeline-event-thumbnail">2020-2-10 Django</p>
                            <h3>Django采用了MVC的软件设计模式</h3>
                            <h4>Django是一个开放源代码的Web应用框架，由Python写成</h4>
                            <p><strong>写了一个小的demo</strong>
                                <br><a href="https://github.com/thinkforanameissohard"><br>详情请点击我的github</a></p>
                        </div>
                    </li>
                    <li class="timeline-event" data-aos="fade-up" data-aos-delay=".2">
                        <label class="timeline-event-icon"></label>
                        <div class="timeline-event-copy">
                            <p class="timeline-event-thumbnail">2020-2-25 三件套</p>
                            <h3>Html5 CSS JS</h3>
                            <h4>框加 美化 效率</h4>
                            <p>偏向美工，选一个布局，选一个颜色，选一个背景头都要炸了</p>
                        </div>
                    </li>
                    <li class="timeline-event" data-aos="fade-up" data-aos-delay=".4">
                        <label class="timeline-event-icon"></label>
                        <div class="timeline-event-copy">
                            <p class="timeline-event-thumbnail">2020-3-15 jQuery</p>
                            <h3>jQuery是一个JS库，极大地简化了JS编程</h3>
                            <h4>简单易学，学过就忘</h4>
                            <p><strong>jQuery UI,jQuery mobile好多好多</strong>
                                <br>要记的太多了，不时常用用就要忘啊</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- ./experience -->
    
    <!-- projects -->
    <div class="section" id="projects">
        <div class="container">
            <div class="col-md-12">
                <h4>03</h4>
                <h1 class="size-50">My <br /> dynamic state</h1> 
            </div>
            <!-- main container -->
            <div class="main-container portfolio-inner clearfix">
                <!-- portfolio div -->
                <div class="portfolio-div">
                    <div class="portfolio">
                        <!-- portfolio_filter -->
                        <div class="categories-grid wow fadeInLeft">
                            <nav class="categories">
                                <ul class="portfolio_filter">
                                    <li><a href="" class="active" data-filter="*">所有</a></li>
                                    <li><a href="" data-filter=".reading">读书</a></li>
                                    <li><a href="" data-filter=".CTF">CTF</a></li>
                                    <li><a href="" data-filter=".math">算法</a></li>
                                    <li><a href="" data-filter=".other">杂七杂八</a></li>
                                    <li><a href="" data-filter=".gossip">碎碎念</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- portfolio_filter -->
                        
                        <!-- portfolio_container -->
                        <div class="no-padding portfolio_container clearfix" data-aos="fade-up">
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6  gossip CTF">
                                <a id="demo01" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/01.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"><span>Upload labs 靶场测试</span> <em>2019-10-12</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 ads math">
                                <a id="demo02" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/03.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"><span>素数快速生成</span> <em>2020-03-16 09:42</em></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 reading">
                                <a id="demo03" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/02.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>圆圈正义——罗翔</span> <em>2020-04-17</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 gossip other">
                                <a id="demo04" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/04.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>拦截hao.123的广告和百度热点</span> <em>2020-04-12</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 math other">
                                <a id="demo05" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/05.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>哈夫曼树</span> <em>2019-11-18</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 reading">
                                <a id="demo06" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/010.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>如何判断第一个节区头的RVA</span> <em>2020-03-09</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 reading other">
                                <a id="demo07" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/06.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>从可执行文件中删除.reloc节区</span> <em> 2020-03-08</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 reading other">
                                <a id="demo08" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/07.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>《逆向工程核心原理》书本案例</span> <em>2019-11-02</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                            
                            <!-- single work -->
                            <div class="col-md-4 col-sm-6 reading other">
                                <a id="demo09" href="#animatedModal" class="portfolio_item"> <img src="img/portfolio/08.jpg" alt="image" class="img-responsive" />
                                    <div class="portfolio_item_hover">
                                        <div class="portfolio-border clearfix">
                                            <div class="item_info"> <span>王爽《汇编》第三版检测11.2解析</span> <em>2019-10-08</em> </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- end single work -->
                        </div>
                        <!-- end portfolio_container -->
                    </div>
                    <!-- portfolio -->
                </div>
                <!-- end portfolio div -->
            </div>
            <!-- end main container -->
        </div>
    </div>
    <!-- ./projects -->
    
    <!-- contact -->
    <div class="section" id="contact">
        <div class="container">
            <div class="col-md-12">
                <h4>04</h4>
                <h1 class="size-50">Contact  Me</h1>
                <div class="h-50"></div>
            </div>
            <div class="heading_img">
            <img src="img/6.jpg" alt="">
          </div>
            <div class="col-md-8" >
                <form class="contact-bg" id="contact-form" name="contact"  action="content.jsp" method="post" novalidate>
                    <input type="text" name="name" class="form-control" placeholder="Your Name" />
                    <input type="email" name="email" class="form-control" placeholder="Your E-mail" />
                    <input type="text" name="phone" class="form-control" placeholder="Phone Number" />
                    <textarea name="message" class="form-control" placeholder="Your Message" style="height:120px"></textarea>
                    <button id="submit" type="submit" name="submit" class="btn btn-glance">Send</button>
                </form>
            </div>            
        </div>
    </div>
   
    <!-- footer -->
    <div style="text-align:center;margin:0px auto;">
          <div class="clearfix"></div>
          Copyright &copy; 2019.Company name All rights reserved.公网安备xxxxx号京ICP证xxx号 <!-- 假的备案，能在本机环境允许 -->
          <div class="h-50"></div>
    </div>
    <!-- ./contact -->

    <!--DEMO01-->
    <!-- 
             还没有部署好，先跳转到我的博客，后期准备直接显示内容
     -->
    <div id="animatedModal" class="popup-modal">
     <iframe src="https://www.cnblogs.com/chrysanthemum/category/1653558.html" style="border: 2px solid blue;height:100%;width: 100%;">
      </iframe>
    </div>
    <!-- jQuery -->
    <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <!--  plugins  -->
    <script src="https://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/jquery.validate.min.js"></script>

    <!--  main script  -->
    <script src="js/custom.js"></script>	
</body>
</html>