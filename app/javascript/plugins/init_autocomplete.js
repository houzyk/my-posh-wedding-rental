import places from "places.js";

const initAutocomplete = () => {
  console.log("im here")
  const addressInput = document.getElementById("item_address");
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
