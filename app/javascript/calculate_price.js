// app/javascript/price_calculation.js
window.addEventListener('turbo:load', () => {
  const priceInput = document.getElementById('item-price');
  const addTaxPrice = document.getElementById('add-tax-price');
  const profit = document.getElementById('profit');

  if (priceInput) {
    priceInput.addEventListener('input', () => {
      const price = priceInput.value;
      if (price >= 300 && price <= 9999999) {
        const tax = Math.floor(price * 0.1);
        const profitValue = price - tax;
        addTaxPrice.innerHTML = tax;
        profit.innerHTML = profitValue;
      } else {
        addTaxPrice.innerHTML = '';
        profit.innerHTML = '';
      }
    });
  }
});
