# Estúdio Lumen: site de exemplo (cartão de visita + portfólio)

Site estático de uma página (HTML + CSS, sem JS, sem dependências). **É um site de demonstração**: nome, depoimento e Instagram são fictícios.

## Publicar grátis no Cloudflare Pages (via GitHub)
1. Crie um repositório no GitHub e envie o conteúdo desta pasta (`git init`, `git add .`, `git commit`, `git push`).
2. No painel da Cloudflare: Workers & Pages > Create > Pages > Connect to Git e escolha o repositório.
3. Build command: vazio. Output directory: `/` (raiz). Clique em Save and Deploy.
4. O site fica em `https://NOME.pages.dev`. (Domínio próprio, opcional: Custom domains > Set up a domain.)

## O que trocar
- **Número do WhatsApp:** em `index.html`, o número atual é `5519989791577` (3 links `wa.me`) e o texto `(19) 98979-1577`; para trocar, substitua os dois.
- **URL do site:** em `index.html`, troque `https://estudio-lumen.pages.dev` em `og:url` e `og:image`.
- **Textos, Instagram, cidade:** direto em `index.html`. Cores no topo de `style.css`.

## QR code
O QR aponta para a **URL do site** (não para o `wa.me`), assim o número pode mudar sem reimprimir o cartão.
O QR atual é **provisório** (`https://estudio-lumen.pages.dev`). Depois que a URL final existir, gere o definitivo:

    scripts/gerar-qr.sh https://sua-url-final

Saída: `qrcode/qr.svg` (vetor, para a gráfica) e `qrcode/qr.png` (1200 px, margem 4). Requer Node/npx na sua máquina (a ferramenta não faz parte do site). Teste a leitura com o celular antes de imprimir.

## Rodar com Docker (opcional)

```bash
docker build -t estudio-lumen .
docker run -d -p 8080:80 --name estudio-lumen estudio-lumen
```

Abra http://localhost:8080. A imagem usa `nginx:1.27-alpine` e contém só
`index.html`, `style.css` e `img/`. Para Cloudflare Pages o Docker não é necessário.

## Subir para o GitHub

```bash
git remote add origin https://github.com/SEU-USUARIO/estudio-lumen.git
git push -u origin main
```
