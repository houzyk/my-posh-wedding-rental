import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Get Posh!", "Have A Fun Wedding"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
