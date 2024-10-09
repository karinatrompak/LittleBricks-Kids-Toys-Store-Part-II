<div class="container espaco-fundo">

    <!-- titulo da página -->
    <div class="row">
        <div class="col-12 my-4">

        <h2>As melhores prendas para oferecer no Natal</h2>

        O Natal é uma época mágica. Encontrar o presente perfeito para oferecer pode ser um desafio encantador. Na nossa loja online, oferecemos uma seleção diversificada
        de Legos para oferecer como prenda de Natal, desde clássicos até às últimas novidades.
        <br><br><br>
        <h3>Legos para bebés</h3>
        Quando se trata de escolher os melhores legos para bebés, é importante considerar não só a alegria imediata, mas também o seu valor a longo prazo em termos de desenvolvimento e aprendizagem. 
        Lego para bebés devem ser mais do que apenas brinquedos, eles podem ser ferramentas que ajudam no crescimento e desenvolvimento do bebé de maneiras diversas e estimulantes.
        <br>
        Um lego ideal para um bebé é algo que promove a motricidade fina e grossa. Legos que incentivem os bebés a alcançar, agarrar, empurrar e puxar podem ser extremamente benéficos.
        Eles não mantêm apenas os bebés entretidos, mas também ajudam no desenvolvimento de habilidades motoras importantes. Encontram-se alguns exemplos abaixos:
         <!-- produtos -->
        <div class="row">
            <?php if (count($produtos) == 0) : ?>
                <div class="text-center my-5">
                    <h3>Não existem produtos disponíveis.</h3>
                </div>
            <?php else : ?>
                <!-- ciclo de apresentação dos produtos -->
                <?php
                $produtosFiltrados = array_filter($produtos, function ($produto) {
                    return $produto->id_produto >= 19 && $produto->id_produto <= 22;
                });

                foreach ($produtosFiltrados as $produto) :
                ?>
                    <div class="col-sm-3 col-6 p-2">
                        <div class="text-center p-3">
                            <img src="assets/images/produtos/<?= $produto->imagem ?>" class="img-fluid">
                            <h3><?= $produto->nome_produto ?></h3>
                            <h2><?= preg_replace("/\./", ",", $produto->preco) . '€' ?></h2>
                            <div>
                                <?php if ($produto->stock > 0) : ?>
                                    <button class="btn btn-info btn-sm" onclick="adicionar_carrinho(<?= $produto->id_produto ?>)"><i class="fas fa-shopping-cart me-2"></i>Adicionar ao carrinho</button>
                                <?php else : ?>
                                    <button class="btn btn-danger btn-sm"><i class="fas fa-shopping-cart me-2"></i>Sem stock</button>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif ?>
        </div>

        <br><br><br>
        <h3>Legos para crianças de todas as idades </h3>
        Quando se trata de encontrar os melhores legos para crianças, a chave é entender os seus interesses e paixões. As crianças são seres incrivelmente imaginativas e curiosas, cada um 
        com um mundo único de interesses. Os presentes que capturam essa essência não só trazem alegria imediata, mas também contribuem para o seu desenvolvimento e aprendizagem. <br>
        Presentes que incentivam a criatividade e a expressão pessoal são valiosos para crianças de todas as idades. <br>
        Encontram-se alguns exemplos abaixos: <br>
        <!-- produtos -->
        <div class="row">
            <?php if (count($produtos) == 0) : ?>
                <div class="text-center my-5">
                    <h3>Não existem produtos disponíveis.</h3>
                </div>
            <?php else : ?>
                <!-- ciclo de apresentação dos produtos -->
                <?php
                $produtosFiltrados = array_filter($produtos, function ($produto) {
                    return $produto->id_produto >= 23 && $produto->id_produto <= 26;
                });

                foreach ($produtosFiltrados as $produto) :
                ?>
                    <div class="col-sm-3 col-6 p-2">
                        <div class="text-center p-3">
                            <img src="assets/images/produtos/<?= $produto->imagem ?>" class="img-fluid">
                            <h3><?= $produto->nome_produto ?></h3>
                            <h2><?= preg_replace("/\./", ",", $produto->preco) . '€' ?></h2>
                            <div>
                                <?php if ($produto->stock > 0) : ?>
                                    <button class="btn btn-info btn-sm" onclick="adicionar_carrinho(<?= $produto->id_produto ?>)"><i class="fas fa-shopping-cart me-2"></i>Adicionar ao carrinho</button>
                                <?php else : ?>
                                    <button class="btn btn-danger btn-sm"><i class="fas fa-shopping-cart me-2"></i>Sem stock</button>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif ?>
        </div>
        </div>
    </div>
</div>