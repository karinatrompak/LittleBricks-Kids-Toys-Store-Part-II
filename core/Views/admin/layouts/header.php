<?php 
use core\classes\Store;
?>
<div class="container-fluid navegacao3">
    <div class="row">
        <div class="col-6 p-3">
            <h3>PHP STORE</h3>
        </div>
        <div class="col-6 p-3 text-end align-self-center">
            <?php if(Store::adminLogado()):?>
                <i class="fas fa-user me-2"></i>
                <?= $_SESSION['admin_usuario'] ?>
                <span class="mx-2">|</span>
                <a href="?a=admin_logout"><i class="fas fa-sign-out-alt me-2"></i>Logout</a>
            <?php endif; ?>
        </div>
    </div>
</div>