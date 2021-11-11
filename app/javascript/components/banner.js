import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Be Trendy", "Get Posh!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
