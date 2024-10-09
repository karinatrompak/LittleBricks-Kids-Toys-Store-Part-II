<div class="container-fluid">
    <div class="row mt-3 mb-5">
        

        <div class="col-md-15">

            <div class="row">
                <div class="col">
                    <h4>DETALHE ENCOMENDA</h4><small><?= $dados_encomenda->codigo_encomenda ?></small>
                </div>
                <div class="col text-end">
                    <div class="text-center p-3 badge bg-primary status-clicavel" onclick="apresentarModal()">PENDENTE</div>
                </div>
            </div>


            
            <hr>
            
            <div class="row">

                <div class="col">
                    <p>Nome cliente:<br><strong>Nome do cliente</strong></p>
                    <p>Email:<br><strong><?= $dados_encomenda->email ?></strong></p>
                    <p>Telefone:<br><strong><?= $dados_encomenda->telefone ?></strong></p>
                </div>

                <div class="col">
                    <p>Data encomenda:<br><strong><?= $dados_encomenda->data_encomenda ?></strong></p>
                    <p>Morada:<br><strong><?= $dados_encomenda->morada ?></strong></p>
                    <p>Cidade:<br><strong><?= $dados_encomenda->cidade ?></strong></p>
                </div>
            </div>

            <hr>
            <table class="table">
                <thead>
                    <th>Produto</th>
                    <th class="text-center">Quantidade</th>
                    <th class="text-end">Preço/Uni.</th>
                </thead>
                <tbody>
                    <?php foreach($produtos_encomenda as $produto):?>
                        <tr>
                            <td><?= $produto->designacao_produto ?></td>
                            <td class="text-center"><?= $produto->quantidade ?></td>
                            <td class="text-end"><?= number_format($produto->preco_unidade,2,',','.')."$" ?></td>
                        </tr>
                    <?php endforeach;?>

                    <tr>
                        <td colspan="3"class="text-end">Total: <strong><?= number_format($total_encomenda,2,',','.')."$"?></strong></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>
</div>



<!-- modal -->
<div class="modal fade" id="modalStatus" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Alterar estado da encomenda</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <a href="">Estado seguinte</a><br>
        <a href="">Estado seguinte</a><br>
        <a href="">Estado seguinte</a><br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
      </div>
    </div>
  </div>
</div>

<script>
    function apresentarModal(){
        var modalStatus = new bootstrap.Modal(document.getElementById('modalStatus'));
        modalStatus.show();
    }
</script>