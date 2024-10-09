<?php 
use core\classes\Store;

// calcula o numero de produtos no carrinho
$total_produtos = 0;
if(isset($_SESSION['carrinho'])){
    foreach($_SESSION['carrinho'] as $quantidade){
        $total_produtos += $quantidade;
    }
}
?>

<div class="container-fluid navegacao2 p-2">
    <div class="row">
        <div class="col-6 text-center">
            <i class="fas fa-envelope" style="color: #ffffff;"></i>
            <a href="" class="nav-item2">geral@littlebricks.com</a>
            <i class="fas fa-phone-alt" style="color: #ffffff;"></i>
            <a href="" class="nav-item2">+351967891234</a>
        </div>
        <div class="col-5 text-end"> 
            <a href="http://localhost/Lab03/public/admin/?a=admin_login" class="btn btn-primary m-1"></a>
            <i class="fab fa-facebook" style="color: #ffffff;" href=""></i>
            <i class="fab fa-instagram" style="color: #ffffff; margin-left: 10px;"></i> 
            
        </div>
    </div>
</div>

<div class="container-fluid navegacao">
    <div class="row">
        <div class="col-4 p-3 text-center">
            <a href="http://localhost/Lab03/entrada%20login.html">
                <img src="assets/images/logobrick.png" alt="Minha Imagem"width="150" height="150">
            </a>
        </div>
        <div class="col-7 text p-3"> 
        <!-- verifica se existe cliente na sessao -->
        <div class="col text-end p-3">
            <?php if(Store::clienteLogado()):?>
                <a href="?a=perfil"><i class="fas fa-user"></i> <?= $_SESSION['usuario']?></a>
                <a href="?a=logout" class="nav-item"><i class="fas fa-sign-out-alt"></i></a>              
            <?php else:?>
                <a href="?a=login" class="nav-item"><i class="fas fa-user"></i></a>
            <?php endif;?>
            <a href="?a=carrinho"><i class="fas fa-shopping-cart"></i></a>
            <span class="badge bg-warning" id="carrinho"><?= $total_produtos == 0 ? '' : $total_produtos ?></span>
            </div>
            <div class="text-end col-3 ms-auto">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </div>
            <div class="col-7 text-center">
                <a href="http://localhost/Lab03/entrada%20login.html" class="nav-item">Início</a>
                <a href="?a=loja" class="nav-item">Loja</a>
                <a href="?a=ideias_natal" class="nav-item">Ideias para o Natal</a>
                <a href="?a=sobre" class="nav-item">Sobre Nós</a>
                <a href="?a=contactos" class="nav-item">Contactos</a>
            </div>
        </div>
    </div>
</div>
<hr class="linha-ondulada">