window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;

    const sales_commission = document.getElementById("add-tax-price");
    sales_commission.innerHTML = new Intl.NumberFormat().format(Math.floor(inputValue * 0.1));

    const sales_profit = document.getElementById("profit");
    sales_profit.innerHTML = new Intl.NumberFormat().format(Math.round(inputValue - Math.floor(inputValue * 0.1)));
    if (!priceGet){ return false;}
  });
});
