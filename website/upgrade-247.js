(() => {
  if (!/RE-OTAKU-Android\/2\.(?:[0-3]\.\d+|4\.[0-6])\b/.test(navigator.userAgent)) return;
  if (document.querySelector("#release-247") || localStorage.getItem("release-247-dismissed")) return;
  const notice = document.createElement("aside");
  notice.id = "release-247";
  notice.setAttribute("aria-label", "RE:OTAKU update");
  notice.style.cssText = "position:fixed;inset:auto 12px max(84px,12vh);z-index:10000;padding:14px;border-radius:16px;background:#202124;color:white;box-shadow:0 4px 18px #0008;font:600 14px system-ui";
  const title = document.createElement("div");
  const spanish = (window.REOTAKU_LOCALE?.language() || navigator.language).startsWith("es");
  title.textContent = spanish ? "RE:OTAKU 2.4.7 disponible" : "RE:OTAKU 2.4.7 is available";
  const download = document.createElement("a");
  download.href = "https://reotaku-descargar.vercel.app/";
  download.target = "_blank";
  download.rel = "noopener";
  download.textContent = spanish ? "Abrir página de descarga" : "Open download page";
  download.style.cssText = "display:inline-block;margin:10px 12px 0 0;padding:8px 12px;border-radius:12px;background:white;color:#111";
  const dismiss = document.createElement("button");
  dismiss.type = "button";
  dismiss.textContent = spanish ? "Ahora no" : "Later";
  dismiss.onclick = () => {
    localStorage.setItem("release-247-dismissed", "1");
    notice.remove();
  };
  notice.append(title, download, dismiss);
  document.body.append(notice);
})();


