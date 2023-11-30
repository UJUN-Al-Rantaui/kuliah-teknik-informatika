<?php
    include("header.php");
?>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        :root {
    --secondary-bg : #eaeaea;
    --secondary-bg-2 : #f9f9f9;
    --text-main : white;
    --text-secondary : #222;
    --icon-main-color : rgb(255, 0, 0);
    --icon-secondary-color : #999; 
    }

    .wrapper {
    display : flex ;
    position: fixed;
    align-items: center;
    justify-content: center;
    color : var(--text-secondary);
    text-align : center;
    height :auto;
    width: 50%;
    top: 60vh;
    left: 14%;
}
.card {
    background-color : var(--secondary-bg);
    border : 2px solid var(--secondary-bg-2);
    padding : 28px;
    margin : 8px;
    box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, .5);
}

.card > h1 {
    font-size : 2em;
}
.icons {
    font-size: 48px;
    color : #153066;
    margin-top : 8px ;
}

.card > p {
    font-size : .5em ;
    margin-top: 8px ;
}

.btn {
    font-family: 'Press Start 2P', cursive;
    background-color: #f9f9f9;
    margin-top : 16px;
    padding :8px;
    color: black;
    cursor: pointer;
    border: none;
    width : 100% ;
}

.btn:hover {
    background-color : blue;
    color : white;
    -ms-transform: rotateY(2deg);
    transform : rotate(2deg);
    transition : .3s;
    transition-delay: .3s;
} 
    </style>

    <div class="col-sm-9">
        <h2>Tentang Saya</h2>
        <hr/>
        <div class="well">
        <p>Perkenalkan nama saya <b>Muhammad Junaidi</b> saya iyalah seorang mahasiswa di <b>UNIVERSITAS ISLAM KALIMANTAN MUHAMMAD ARSYAD AL BANJARI</b> Fakultas <b>Teknik Informatika</b>. Mata kuliah yang saya pelajari saat iniadalah Web 1.</p>
        </div>
    </div>
    
    <div class="col-sm-3">
        <div class="sidebar">
            <h2>Universitas Islam Kalimantan Muhammad Arsyad Al Banjari</h2>
            <hr/>
            <div class="well">
                <img class="img" src="latihan_app/img/foto.jpg" width="80%">
            </div>
        </div>
    </div>

    <div class=" wrapper">
        <div class="div  card">
            <h1>YOUTUBE</h1>
            <i class="fa-brands fa-youtube icons"></i>
            <p>Muhammad Junaidi Youtube</p>
            <a CLASS="btn">Subcribe</a> 
        </div>
        <div class="div card">
            <h1>FACEBOOK</h1>
            <i class="fa-brands fa-facebook icons"></i>
            <p>Muhammad Junaidi Facebook</p>
            <a CLASS="btn">Follow</a> 
        </div>
        <div class="div card">
            <h1>ISTAGRAM</h1>
            <i class="fa-brands fa-instagram icons"></i>
            <p>Muhammad Junaidi Instagram</p>
            <a CLASS="btn">Follow</a> 
        </div>
        <div class="div card">
            <h1>WHATSAPP</h1>
            <i class="fa-brands fa-whatsapp icons"></i>
            <p>Muhammad Junaidi Whatsapp</p>
            <a CLASS="btn">Send Message</a> 
        </div>
    </div>
<?php
    include("footer.php");
?>