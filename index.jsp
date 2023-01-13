﻿<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/c5f2e8b9cc.js" crossorigin="anonymous"></script>
    <!-- vue -->
    <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link href="index.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>智慧喜</title>
</head>

<body>
    <header class="header">
        <div style="display: none;">
            <h2>當前訂單</h2>
            <p>狀態　　　　　　　外送員正前往領取衣物<br>
        </div>
    </header>

    <div class="main">
        <div class="nav-container">
            <nav>
                <a href="javascript:void(0)" onclick="openTab(event, 'Home');">
                    <div class="tablink white">
                        <i class="fa-solid fa-house"></i>
                        <p class="cp">首頁</p>
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openTab(event, 'Order');">
                    <div class="tablink"><i class="fa-solid fa-clipboard"></i>
                        <p class="cp">訂單</p>
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openTab(event, 'Comunity');">
                    <div class="tablink"><i class="fa-solid fa-comments"></i>
                        <p class="cp">社群</p>
                    </div>
                </a>
                <a href="javascript:void(0)" onclick="openTab(event, 'Member');">
                    <div class="tablink">
                        <i class="fa-solid fa-user"></i>
                        <p class="cp">會員</p>
                    </div>
                </a>
            </nav>
        </div>
        <div id="Home" class="tab" style="display:block">
            <div class="home">
                <section class="ad">
                    <!-- <img src="https://shop.kenk.com.tw/asset/upload/images/product/841/2dacfaad8b80b61880f24992dd48e1ed.jpg"
                        style="max-width:100%;"> -->
                </section>
                <section class="fu">
                    <div class="fu1" onclick="location.href='site.html';" style="cursor :pointer;">
                        <i class="fa-solid fa-store"></i>
                        <p>查找站點</p>
                    </div>
                    <div class="fu1" onclick="location.href='collect.html';" style="cursor :pointer;">
                        <i class="fa-solid fa-qrcode"></i>
                        <p>領取訂單</p>
                    </div>
                    <div class="fu2" onclick="location.href='orderlist.html';" style="cursor :pointer;">
                        <i class="fa-regular fa-clipboard"></i>
                        <p>建立訂單</p>
                    </div>
                    <div class="lo1">
                        <i class="fa-solid fa-location-crosshairs"></i>
                        <input class="loc" placeholder="您的位置?"></input>
                    </div>
                    <p class="lo1" onclick="location.href='locate.html';" style="cursor :pointer;">
                        <%					
					sql = "SELECT * FROM member" ;
					rs = smt.executeQuery(sql);
					String MemberName = "";
					String CustomerAddress = "";

						while (rs.next()) {
                        MemberName = rs.getString("MemberName");
                        CustomerAddress = rs.getString("CustomerAddress");
						out.println("<p>收件人:"+rs.getString("MemberName")+"所在位置:<br>"+rs.getString("CustomerAddress")+"</p>");
                    }
                    %>
                        <i class="fa-solid fa-location-crosshairs"></i>
            </div>
            </section>
            <article>
            </article>
            <section>
            </section>
        </div>
    </div>

    <div id="Order" class="tab" style="display:none">
        <section>
            <div>
                <h2>當前訂單</h2>
                <p>狀態　　　　　　　外送員正前往領取衣物<br>
                    預定送達時間　　　19:43<br>
                    預定最晚送達時間　20:12<br>
                    外送員　　　　　　王大明<br>
                    金額　　　　　　　$ 117</p>
            </div>
        </section>
        <section>
            <div>
                <h2>評分</h2>

            </div>
        </section>
        <section>
            <div>
                <h2>過往訂單</h2>
                <p>狀態　　　　　　　外送員正前往領取衣物<br>
                    預定送達時間　　　19:43<br>
                    預定最晚送達時間　20:12<br>
                    外送員　　　　　　王大明<br>
                    金額　　　　　　　$ 117</p>
            </div>
        </section>
    </div>
    <div id="Comunity" class="tab" style="display:none">
        <section>
            <div class="storecom">
                <h2>智慧喜社群</h2>
                <select name="store" id="">
                    <option>劉老教授智慧喜 中壢中原店</option>
                </select>
                <div class="com1">
                    <a href="javascript:void(0)" onclick="openrank(event, 'store');">
                        <div class="ranklink">
                            <i class="fa-solid fa-medal"></i></div>
                    </a>
                    <a href="javascript:void(0)" onclick="openrank(event, 'member');">
                        <div class="ranklink">
                            <i class="fa-solid fa-ranking-star"></i>
                        </div>
                    </a>
                </div>
                <div id="store" class="rank" style="display:none">Lorem ipsum dolor sit amet consectetur
                    adipisicing elit. Velit voluptatum dignissimos fugit officia culpa rem nihil, provident
                    minima quo exercitationem esse magnam sequi maiores quasi doloribus tenetur! Quidem, qui
                    animi?</div>
                <div id="member" class="rank" style="display:none">Lorem, ipsum dolor sit amet consectetur
                    adipisicing elit. Voluptatem, nesciunt atque aliquid asperiores numquam maiores, repellendus
                    eveniet excepturi provident ea perferendis! Dignissimos placeat, laborum mollitia voluptate
                    quidem non iste repellat?</div>
            </div>
        </section>
    </div>
    <div id="Member" class="tab" style="display:none">
        <div class="member">
            <div class="me"><i class="fa-regular fa-user"></i>
                <div class="profile">
                    <div class="name">王小明</div>
                    <a href="profile.html">檢視帳戶資料</a>
                </div>
            </div>
            <a href="favorite.html" class="me1"><i class="fa-solid fa-heart"></i>
                <p>最愛店家</p>
            </a>
            <a href="promotion.html" class="me1"><i class="fa-solid fa-gift"></i>
                <p>優惠/獎勵</p>
            </a>
            <a href="scorestore.html" class="me1"><i class="fa-solid fa-star"></i>
                <p>積分</p>
            </a>
            <a href="receipt.html" class="me1"><i class="fa-solid fa-receipt"></i>
                <p>發票</p>
            </a>
        </div>
    </div>
    </div>

</body>

<script>
    function openTab(evt, tabName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("tab");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" white", "");
        }
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.firstElementChild.className += " white";
    }

    function openrank(evt, rankName) {
        var i, x, ranklinks;
        x = document.getElementsByClassName("rank");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        ranklinks = document.getElementsByClassName("ranklink");
        for (i = 0; i < x.length; i++) {
            ranklinks[i].className = ranklinks[i].className.replace(" bg", "");
        }
        document.getElementById(rankName).style.display = "block";
        evt.currentTarget.firstElementChild.className += " bg";
    }
</script>
<%
con.close();
			}
            catch (SQLException sExec) {
                out.println("SQL錯誤!" + sExec.toString());
            }
        }
        catch (ClassNotFoundException err) {
            out.println("class錯誤" + err.toString());
    }
%>

</html>