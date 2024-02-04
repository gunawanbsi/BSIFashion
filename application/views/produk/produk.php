<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container">
        <h1 class="display-3 mb-3 animated slideInDown"><?php echo $judul; ?></h1>
    </div>
</div>
<!-- Page Header End -->

<div class="container-fluid bg-light bg-icon my-5 py-6">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <?= $this->session->flashdata('pesan'); ?>
                <h1 class="display-5 mb-3">Produk yang Kami Jual</h1>
                <p>Berikut adalah beberapa kategori Produk yang ada di Toko Kami</p>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4" src="<?php echo base_url()?>assets/img/men.jpg" alt="">
                        <h4 class="mb-3">Fashion Pria</h4>
                        <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="<?php echo base_url().'user/pria'?>">Selengkapnya</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4" src="<?php echo base_url()?>assets/img/women.jpg" alt="">
                        <h4 class="mb-3">Fashion Wanita</h4>
                        <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="<?php echo base_url().'user/wanita'?>">Selengkapnya</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4" src="<?php echo base_url()?>assets/img/child.jpg" alt="">
                        <h4 class="mb-3">Fashion Anak-Anak</h4>
                        <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="<?php echo base_url().'user/anak'?>">Selengkapnya</a>
                    </div>
                </div>
            </div>
        </div>
    </div>