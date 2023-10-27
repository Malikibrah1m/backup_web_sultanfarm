<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Landing Page | Sultan Farm</title>
    <link rel="shortcut icon" href="{{ asset('assets/images/logo/sultan.png') }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('assets/images/logo/sultan.png') }}" type="image/png">
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap"
        rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{ asset('landing/css/styles.css') }}" rel="stylesheet" />
</head>

<body id="page-top">
    <!-- Navigation-->
    <nav style="background-color: #C2DCE0;" class="navbar navbar-expand-lg navbar-light fixed-top " id="mainNav">
        <div class="container px-5">
            {{-- <a class="navbar-brand fw-bold" href="#page-top">Sultan Farm</a> --}}
            <a class="navbar-brand fw-bold" href="#page-top">
                <img src="{{ asset('landing/img/logo.png') }}" alt="Logo Sultan Farm"> Sultan Farm
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="bi-list"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                    <li class="nav-item"><a class="nav-link me-lg-3" href="#beranda">Beranda</a></li>
                    <li class="nav-item"><a class="nav-link me-lg-3" href="#tentang">Tentang Kami</a></li>
                    <li class="nav-item"><a class="nav-link me-lg-3" href="#domba">Domba</a></li>
                </ul>
                <a href="{{ route('login') }}" style="background-color: #228896; color: white;"
                    class="btn rounded-pill px-3 mb-2 mb-lg-0">
                    <span class="d-flex align-items-center">
                        <i class="bi-lock-fill me-2"></i>
                        <span class="small">Masuk</span>
                    </span>
                </a>
            </div>
        </div>
    </nav>

    <section id="beranda" style="overflow: hidden;">
        <header class="masthead"
            style="background-color: #C2DCE0; background-size: cover; background-position: center; position: relative;">
            <div class="container px-5" style="width: 100%; height: 100vh; margin-top: -100px;">
                <img id="awan1" src="{{ asset('landing/img/awan1.svg') }}" alt="Awan"
                    style="position: absolute; left: 11%; top: 100px; width: 30%; z-index: 0;">
                <img src="{{ asset('landing/img/pengunungan.png') }}" alt="Pegunungan"
                    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; z-index: 1;">
                <img id="awan2" src="{{ asset('landing/img/awan2.svg') }}" alt="Awan"
                    style="position: absolute; right: 1%; top: 70px; width: 30%; z-index: 2;">
                <img id="awan3" src="{{ asset('landing/img/awan3.svg') }}" alt="Awan"
                    style="position: absolute; left: 50%; top: 180px; width: 15%; z-index: 3;">
                <img id="awan4" src="{{ asset('landing/img/awan4.svg') }}" alt="Awan"
                    style="position: absolute; left: 8%; top: 170px; width: 15%; z-index: 4;">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <!-- Mashead text and app badges-->
                        <div class="mb-5 mb-lg-0 text-center text-lg-start"
                            style="margin-top: 220px; line-height: 1.25; position: relative; z-index: 5;">
                            <p style="font-size: 40px; font-weight: 700; color: white;">
                                {{ $landingpage->judul_beranda }}</p>
                            <p class="lead fw-normal  mb-5" style="font-size: 17px; color: white;">
                                {{ $landingpage->deskripsi_beranda }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </section>

    <script>
        window.addEventListener('scroll', function() {
            var awan2 = document.getElementById('awan2');
            var scrollY = window.scrollY;
            var rightValue = 1 - scrollY * 0.1;
            awan2.style.right = rightValue + '%';
        });
        window.addEventListener('scroll', function() {
            var awan3 = document.getElementById('awan3');
            var scrollY = window.scrollY;
            var rightValue = 50 - scrollY * -0.1;
            awan3.style.left = rightValue + '%';
        });
        window.addEventListener('scroll', function() {
            var awan4 = document.getElementById('awan4');
            var scrollY = window.scrollY;
            var leftValue = 11 - scrollY * 0.2;
            awan4.style.left = leftValue + '%';
        });
        window.addEventListener('scroll', function() {
            var awan4 = document.getElementById('awan1');
            var scrollY = window.scrollY;
            var leftValue = 8 - scrollY * 0.2;
            awan4.style.left = leftValue + '%';
        });
    </script>

    <section id="tentang">
        <div class="container px-5 mt-2">
            <!-- Ganti mt-2 menjadi kelas margin atas yang sesuai -->
            <div class="col-lg-12">
                <!-- Tulisan "Tentang Kami" -->
                <p class="text-center tentang-kami" style="color: #0B4149">Tentang Kami</p>
                <!-- Gambar-gambar -->
                <div class="gambar-container">
                    <img src="{{ asset('landing/img/image1.png') }}" alt="Gambar 1">
                    <img src="{{ asset('landing/img/image2.png') }}" alt="Gambar 2">
                    <img src="{{ asset('landing/img/image3.png') }}" alt="Gambar 3">
                    <img src="{{ asset('landing/img/image4.png') }}" alt="Gambar 4">
                </div>
                <!-- Isi "Tentang Kami" -->
                <p class="tentang-kami-isi">
                    {{ $landingpage->deskripsi_tentangkami }}
                </p>
                <p class="tentang-kami-isi" style="color: black; padding-top: 5px; font-weight: 800;">
                    Sosial Media :
                </p>
                <div class="sosial-media">
                    <a href="{{ $landingpage->instagram }}">
                        <img src="{{ asset('landing/img/icons8-instagram-logo.png') }}" alt="Gambar 1">
                    </a>
                    {{-- <a href="{{ $landingpage->facebook }}">
                        <img src="{{ asset('landing/img/icons8-facebook (1).png') }}" alt="Gambar 2">
                    </a> --}}
                    {{-- <a href="{{ $landingpage->youtube }}">
                        <img src="{{ asset('landing/img/icons8-youtube.png') }}" alt="Gambar 3">
                    </a> --}}
                    <a href="{{ $landingpage->tiktok }}">
                        <img src="{{ asset('landing/img/icons8-tiktok.png') }}" alt="Gambar 4">
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Basic features section-->
    <section id="domba">
        <div class="container px-5 mt-2">
            <!-- Ganti mt-2 menjadi kelas margin atas yang sesuai -->
            <div class="col-lg-12">
                <!-- Tulisan "Tentang Kami" -->
                <p class="text-center tentang-kami" style="color: #0B4149">Jenis Domba</p>
                <div class="product-cards-container">
                    <div class="product-card">
                        <img src="{{ asset('landing/img/image1.png') }}" alt="Nama Produk 1">
                        <p>Jenis Domba</p>
                        <p style="color: #3B484A">Tersedia: 5</p>
                        <a class="btn" style="background-color: #228896; color: white; border-radius: 30px;"
                            href="lihat_semua_domba">Lihat Semua</a>
                    </div>
                    <div class="product-card">
                        <img src="{{ asset('landing/img/image2.png') }}" alt="Nama Produk 2">
                        <p>Jenis Domba</p>
                        <p style="color: #3B484A">Tersedia: 3</p>
                        <a class="btn" style="background-color: #228896; color: white; border-radius: 30px;"
                            href="lihat_semua_domba">Lihat Semua</a>
                    </div>
                    <div class="product-card">
                        <img src="{{ asset('landing/img/image3.png') }}" alt="Nama Produk 3">
                        <p>Jenis Domba</p>
                        <p style="color: #3B484A">Tersedia: 0</p>
                        <a class="btn" style="background-color: #228896; color: white; border-radius: 30px;"
                            href="lihat_semua_domba">Lihat Semua</a>
                    </div>
                    <div class="product-card">
                        <img src="{{ asset('landing/img/image1.png') }}" alt="Nama Produk 1">
                        <p>Jenis Domba</p>
                        <p style="color: #3B484A">Tersedia: 5</p>
                        <a class="btn" style="background-color: #228896; color: white; border-radius: 30px;"
                            href="lihat_semua_domba">Lihat Semua</a>
                    </div>
                    <div class="product-card">
                        <img src="{{ asset('landing/img/image2.png') }}" alt="Nama Produk 2">
                        <p>Jenis Domba</p>
                        <p style="color: #3B484A">Tersedia: 3</p>
                        <a class="btn" style="background-color: #228896; color: white; border-radius: 30px;"
                            href="lihat_semua_domba">Lihat Semua</a>
                    </div>
                    <div class="product-card">
                        <img src="{{ asset('landing/img/image3.png') }}" alt="Nama Produk 3">
                        <p>Jenis Domba</p>
                        <p style="color: #3B484A">Tersedia: 0</p>
                        <a class="btn" style="background-color: #228896; color: white; border-radius: 30px;"
                            href="lihat_semua_domba">Lihat Semua</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- App badge section-->
    <section style="background-color:#212E30;" id="download">
        <div class="container px-5">
            <div class="row gx-5 align-items-center">
                <div class="col-lg-6">
                    <!-- Mashead text and app badges-->
                    <div class="mb-5 mb-lg-0 text-center text-lg-start">
                        <p style="color: white; font-size: 20px;">Tentang Sultan farm</p>
                        <p style="color: white; margin-right: 100px;">{{ $landingpage->deskripsi_footer }}</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- Mashead text and app badges-->
                    <div class="mb-5 mb-lg-0 text-center text-lg-start">
                        <p style="color: white;">KONTAK KAMI</p>
                        <p style="color: white;"> <i class="bi-telephone me-2"></i>+{{ $landingpage->nomor_telepon }}
                        </p>
                        <p style="color: white;"> <i class="bi-envelope me-2"></i> {{ $landingpage->email }}</p>
                        <!-- Tambahkan 5 ikon di bawah support sultan farm -->
                        <p>
                            <a href="https://wa.me/{{ $landingpage->nomor_telepon }}"
                                style="color: white; text-decoration: none;" target="_blank" class="me-2">
                                <i class="bi bi-whatsapp"></i>
                            </a>
                            <a href="{{ $landingpage->instagram }}" style="color: white; text-decoration: none;"
                                target="_blank" class="me-2">
                                <i class="bi bi-instagram"></i>
                            </a>
                            {{-- <a href="https://link-facebook.com" style="color: white; text-decoration: none;"
                                target="_blank" class="me-2">
                                <i class="bi bi-facebook"></i>
                            </a> --}}
                            {{-- <a href="https://link-youtube.com" style="color: white; text-decoration: none;"
                                target="_blank" class="me-2">
                                <i class="bi bi-youtube"></i>
                            </a> --}}
                            <a href="mailto:{{ $landingpage->email }}" style="color: white; text-decoration: none;"
                                target="_blank">
                                <i class="bi-envelope me-1"></i>
                            </a>
                            <a href="{{ $landingpage->tiktok }}" style="color: white; text-decoration: none;"
                                target="_blank">
                                <i class="bi bi-music-note"></i>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer-->
    <footer class="text-center py-4" style="background-color:#212E30;">
        <div class="container px-4">
            <div class="text-white-50 small">
                <div class="mb-2">&copy; 2023 All Rights Reversed By Sultan Farm </div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('landing/js/scripts.js') }}"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>
