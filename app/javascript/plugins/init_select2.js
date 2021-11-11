import $ from "jquery";
import "select2";
// const category = ['Suits' ,'Wedding Dress', 'Bridesmaid', 'Indian Traditional', 'Muslim Traditional', 'Groomsman', 'Jewellery', 'Veils' ];
const initSelect2 = () => {
  $(".select2").select2({
    placeholder: "Select a category",
    width: "100%",
  });
};
export { initSelect2 };
