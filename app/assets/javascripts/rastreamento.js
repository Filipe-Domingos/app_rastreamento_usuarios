/*
 * rastreamento.js
 * Envia GUID do visitante, URL acessada, Título da janela  e Data/Hora do acesso.
 */

(function (window, document) {
    "use strict";

    var pathname = window.location.pathname;
    var title = document.title;

    console.log(pathname);
    console.log(title);
}(window, document));