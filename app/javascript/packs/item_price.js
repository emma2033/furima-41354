document.addEventListener('DOMContentLoaded', () => {
  const priceInput = document.getElementById('item_price');
  const taxDisplay = document.getElementById('add-tax-price');
  const profitDisplay = document.getElementById('profit');

  priceInput.addEventListener('input', () => {
    const price = priceInput.value;
    const tax = Math.floor(price * 0.1);
    const profit = price - tax;

    taxDisplay.innerHTML = tax;
    profitDisplay.innerHTML = profit;
  });
});
