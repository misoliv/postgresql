# Criação de chave PK e FK:

ALTER TABLE IF EXISTS lab."TB_CATEGORIA" ALTER COLUMN "ID_Categoria" SET NOT NULL;

ALTER TABLE IF EXISTS lab."TB_CATEGORIA" ADD CONSTRAINT "PK_CATEGORIA" PRIMARY KEY ("ID_Categoria");

ALTER TABLE IF EXISTS lab."TB_SUBCATEGORIA" ALTER COLUMN "ID_Subcategoria" SET NOT NULL;

ALTER TABLE IF EXISTS lab."TB_SUBCATEGORIA" ADD CONSTRAINT "PK_SUBCATEGORIA" PRIMARY KEY ("ID_Subcategoria");

ALTER TABLE IF EXISTS lab."TB_PRODUTO" ALTER COLUMN "ID_Produto" SET NOT NULL;

ALTER TABLE IF EXISTS lab."TB_PRODUTO" ADD CONSTRAINT "PK_PRODUTO" PRIMARY KEY ("ID_Produto");

ALTER TABLE IF EXISTS lab."TB_VENDAS" ALTER COLUMN "Codigo_Venda" SET NOT NULL;

ALTER TABLE IF EXISTS lab."TB_VENDAS" ALTER COLUMN "ID_Produto" SET NOT NULL;

ALTER TABLE IF EXISTS lab."TB_VENDAS" ADD CONSTRAINT "PK_PRODUTO_VENDA" PRIMARY KEY ("Codigo_Venda", "ID_Produto");



ALTER TABLE IF EXISTS lab."TB_SUBCATEGORIA"
    ADD CONSTRAINT "FK_CATEGORIA" FOREIGN KEY ("ID_Categoria")
    REFERENCES lab."TB_CATEGORIA" ("ID_Categoria") 
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS lab."TB_PRODUTO"
    ADD CONSTRAINT "FK_SUBCATEGORIA" FOREIGN KEY ("ID_Subcategoria")
    REFERENCES lab."TB_SUBCATEGORIA" ("ID_Subcategoria") 
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS lab."TB_VENDAS"
    ADD CONSTRAINT "FK_PRODUTO" FOREIGN KEY ("ID_Produto")
    REFERENCES lab."TB_PRODUTO" ("ID_Produto") 
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;









