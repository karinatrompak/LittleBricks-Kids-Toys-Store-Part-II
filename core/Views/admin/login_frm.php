<div class="container">
    <div class="row my-5">
        <div class="col-sm-4 offset-sm-4">

            <div>
                <h3 class="text-center">LOGIN DE ADMIN</h3>

                <form action="?a=admin_login_submit" method="post">

                    <div class="my-3">
                        <label>Administrador:</label>
                        <input type="email" name="text_admin" placeholder="Admin" required class="form-control">
                    </div>

                    <div class="my-3">
                        <label>Senha:</label>
                        <input type="password" name="text_senha" placeholder="Senha" required class="form-control">
                    </div>

                    <div class="my-3 text-center">
                        <input type="submit" value="Entrar" class="btn btn-primary">
                        <a href="http://localhost/Lab03/public/?a=inicio" class="btn btn-primary">Voltar</a>
                    </div>

                </form>

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