const express = require('express');
const app = express();

app.get('/calculate', (req, res) => {
  const { price, discount } = req.query;

  if (!price || !discount) {
    return res.status(400).json({ error: 'Missing price or discount parameter' });
  }

  const p = parseFloat(price);
  const d = parseFloat(discount);

  if (isNaN(p) || isNaN(d)) {
    return res.status(400).json({ error: 'All parameters must be numbers' });
  }

  const discountAmount = (p * d) / 100;
  const finalPrice = p - discountAmount;

  res.json({
    originalPrice: p,
    discountPercent: d,
    discountAmount: Math.round(discountAmount * 100) / 100,
    finalPrice: Math.round(finalPrice * 100) / 100
  });
});

app.listen(3022, () => console.log('Discount Calculator API on port 3022'));