<div class="container">
    <div class="row my-5">
        <div class="col-sm-4 offset-sm-4">
            <div>
                <h3 class="text-center">LOGIN</h3>

                <form action="?a=login_submit" method="post">

                    <div class="my-3">
                        <label>Usuário:</label>
                        <input type="email" name="text_usuario" placeholder="Usuário" required class="form-control">
                    </div>

                    <div class="my-3">
                        <label>Senha:</label>
                        <input type="password" name="text_senha" placeholder="Senha" required class="form-control">
                    </div>

                    <div class="my-3 text-center">
                        <input type="submit" value="Login" class="btn btn-primary">
                    </div>
                </form>
                <div class="row my-5">
                <label class="text-center">Ainda não tem conta?</label>
                <div class="col-sm-7 offset-sm-4">
                    <a href="?a=novo_cliente" class="btn btn-primary m-1">Criar Conta</a>
                </div>
                </div>
                <?php if(isset($_SESSION['erro'])): ?>
                    <div class="alert alert-danger text-center">
                        <?= $_SESSION['erro'] ?>
                        <?php unset($_SESSION['erro']); ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>