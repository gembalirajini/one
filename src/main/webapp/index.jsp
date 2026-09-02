<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: #f8faff;
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      color: #0b1a33;
      line-height: 1.5;
    }

    :root {
      --primary: #0b1a33;
      --accent: #2b7be4;
      --accent-light: #e9f0fc;
      --surface: #ffffff;
      --gray: #6b7a93;
      --radius: 20px;
      --shadow: 0 12px 30px rgba(0, 20, 50, 0.06);
      --transition: 0.2s ease;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---- header ---- */
    header {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 10px 0;
    }

    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand span { color: var(--accent); }

    .nav-desktop {
      display: flex;
      gap: 8px;
      align-items: center;
    }
    .nav-desktop a {
      text-decoration: none;
      color: var(--primary);
      font-weight: 500;
      padding: 8px 14px;
      border-radius: 40px;
      transition: var(--transition);
      font-size: 0.95rem;
    }
    .nav-desktop a i { margin-right: 6px; }
    .nav-desktop a:hover {
      background: var(--accent-light);
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search-wrap {
      background: white;
      border-radius: 40px;
      padding: 6px 6px 6px 18px;
      display: flex;
      align-items: center;
      gap: 8px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      border: 1px solid #eef3f9;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 12px rgba(43, 123, 228, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      font-size: 0.95rem;
      min-width: 180px;
      padding: 8px 0;
    }
    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: white;
      border-radius: 40px;
      padding: 8px 16px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
    }
    .search-wrap button:hover { background: #1a5fc7; }

    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.3rem;
      color: var(--primary);
      cursor: pointer;
      width: 44px;
      height: 44px;
      border-radius: 40px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover { background: var(--accent-light); }

    .cart-badge {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      box-shadow: 0 2px 8px rgba(43, 123, 228, 0.3);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      cursor: pointer;
    }

    /* mobile menu */
    .mobile-menu {
      display: none;
      background: white;
      padding: 16px 0;
      border-top: 1px solid #eef3f9;
    }
    .mobile-menu a {
      display: block;
      padding: 12px 20px;
      font-weight: 500;
      color: var(--primary);
      text-decoration: none;
      border-radius: 12px;
    }
    .mobile-menu a:hover { background: var(--accent-light); }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #e5f0ff, #d9e8ff);
      border-radius: var(--radius);
      padding: 60px 48px;
      margin-top: 24px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 30px;
    }
    .hero-content { max-width: 560px; }
    .hero-content h1 {
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.2;
    }
    .hero-content p {
      color: var(--gray);
      margin: 16px 0 24px;
      font-size: 1.1rem;
    }
    .hero-actions { display: flex; gap: 14px; flex-wrap: wrap; }
    .btn {
      border: 0;
      padding: 14px 28px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: var(--primary);
      color: white;
    }
    .btn-primary:hover { background: #1d314d; transform: translateY(-2px); }
    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--primary);
      color: var(--primary);
    }
    .btn-outline:hover { background: var(--primary); color: white; }

    .hero-image {
      background: rgba(255,255,255,0.3);
      border-radius: 30px;
      padding: 8px;
      backdrop-filter: blur(2px);
    }
    .hero-image i { font-size: 6rem; color: var(--primary); opacity: 0.5; }

    /* sections */
    .section {
      padding: 48px 0 24px;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .section-header .muted {
      color: var(--gray);
      font-weight: 500;
    }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: white;
      border-radius: 18px;
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 20px 40px rgba(43, 123, 228, 0.08);
    }
    .cat-card i {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 10px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }
    .cat-card small { color: var(--gray); font-size: 0.8rem; }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(0, 20, 50, 0.06);
    }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      background: #f0f5fe;
    }
    .product-body {
      padding: 16px 16px 12px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: var(--gray);
      text-transform: uppercase;
      letter-spacing: 0.04em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin: 10px 0 6px;
    }
    .price-current { font-weight: 700; font-size: 1.2rem; }
    .price-old { color: var(--gray); text-decoration: line-through; font-size: 0.9rem; }
    .rating { color: #f8b84a; font-size: 0.85rem; letter-spacing: 1px; }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .btn-add {
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      flex: 1;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .btn-add:hover { background: var(--accent); }
    .btn-wish {
      background: transparent;
      border: 1px solid #eef3f9;
      border-radius: 40px;
      width: 44px;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-wish:hover { background: #fee9e9; border-color: #f5c2c2; }

    /* deal banner */
    .deal-banner {
      background: linear-gradient(135deg, #0b1a33 0%, #1d314d 100%);
      border-radius: var(--radius);
      padding: 32px 40px;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 30px;
      color: white;
      margin-top: 24px;
    }
    .deal-banner .deal-info { flex: 2; min-width: 240px; }
    .deal-banner h3 { font-size: 1.8rem; font-weight: 700; }
    .deal-banner .muted-light { opacity: 0.7; margin: 8px 0 16px; }
    .timer-group {
      display: flex;
      gap: 14px;
      margin: 12px 0 16px;
    }
    .time-box {
      background: rgba(255,255,255,0.1);
      backdrop-filter: blur(4px);
      padding: 10px 14px;
      border-radius: 16px;
      text-align: center;
      min-width: 64px;
    }
    .time-box .num { font-size: 1.6rem; font-weight: 700; }
    .time-box .label { font-size: 0.7rem; opacity: 0.6; }
    .deal-cta .btn { background: white; color: var(--primary); }
    .deal-cta .btn:hover { background: var(--accent); color: white; }
    .deal-image {
      background: rgba(255,255,255,0.04);
      border-radius: 24px;
      padding: 12px 20px;
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .deal-image i { font-size: 4rem; opacity: 0.6; }

    /* testimonials */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 20px;
    }
    .testimonial-card {
      background: white;
      border-radius: 20px;
      padding: 22px;
      box-shadow: var(--shadow);
    }
    .testimonial-card .stars { color: #f8b84a; letter-spacing: 2px; }
    .testimonial-card p { margin: 12px 0; color: #1f2a44; }
    .testimonial-card .user { display: flex; align-items: center; gap: 12px; }
    .user-avatar {
      width: 44px;
      height: 44px;
      background: var(--accent-light);
      border-radius: 40px;
      display: grid;
      place-items: center;
      font-weight: 700;
      color: var(--accent);
    }

    /* newsletter */
    .newsletter-box {
      background: white;
      border-radius: var(--radius);
      padding: 40px 32px;
      text-align: center;
      box-shadow: var(--shadow);
      margin: 24px 0;
    }
    .newsletter-box h3 { font-size: 1.6rem; }
    .newsletter-box p { color: var(--gray); margin: 8px 0 20px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      border: 1px solid #eef3f9;
      border-radius: 60px;
      padding: 14px 24px;
      min-width: 260px;
      outline: none;
      font-size: 0.95rem;
    }
    .newsletter-form input:focus { border-color: var(--accent); }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid #eef3f9;
      margin-top: 32px;
      color: var(--gray);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-brand { max-width: 300px; }
    .footer-brand h4 { color: var(--primary); font-size: 1.4rem; }
    .socials { display: flex; gap: 12px; margin-top: 12px; }
    .socials a {
      color: var(--gray);
      font-size: 1.2rem;
      transition: var(--transition);
    }
    .socials a:hover { color: var(--accent); }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { min-width: 100px; }
    .footer-links strong { color: var(--primary); display: block; margin-bottom: 8px; }
    .footer-links a { display: block; text-decoration: none; color: var(--gray); margin: 6px 0; }
    .footer-links a:hover { color: var(--primary); }
    .copy { text-align: center; margin-top: 28px; font-size: 0.85rem; }

    /* responsive */
    @media (max-width: 860px) {
      .nav-desktop { display: none; }
      .mobile-toggle { display: inline-block; }
      .hero { padding: 40px 24px; }
      .hero-content h1 { font-size: 2rem; }
      .search-wrap input { min-width: 120px; }
    }
    @media (max-width: 540px) {
      .header-grid { flex-wrap: wrap; }
      .search-wrap { order: 3; flex: 1 1 100%; }
      .deal-banner { flex-direction: column; text-align: center; }
      .timer-group { justify-content: center; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-grid">
    <div style="display: flex; align-items: center; gap: 8px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <div class="brand"><i class="fas fa-store-alt" style="color: var(--accent);"></i> Nexus<span>Shop</span></div>
    </div>

    <nav class="nav-desktop">
      <a href="#"><i class="fas fa-compass"></i> Explore</a>
      <a href="#"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-star"></i> Trending</a>
      <a href="#"><i class="fas fa-info-circle"></i> About</a>
    </nav>

    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search products..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
      <button class="icon-btn" id="cartBtn" aria-label="Cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <!-- mobile menu -->
  <div class="mobile-menu" id="mobileMenu">
    <div class="container">
      <a href="#"><i class="fas fa-compass"></i> Explore</a>
      <a href="#"><i class="fas fa-tag"></i> Deals</a>
      <a href="#"><i class="fas fa-star"></i> Trending</a>
      <a href="#"><i class="fas fa-info-circle"></i> About</a>
    </div>
  </div>
</header>

<main>
  <div class="container">
    <!-- hero -->
    <section class="hero">
      <div class="hero-content">
        <h1>New season, <br>fresh picks</h1>
        <p>Discover the most wanted styles, gadgets & essentials — curated for you.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-bolt"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-chevron-circle-right"></i> Explore</button>
        </div>
      </div>
      <div class="hero-image">
        <i class="fas fa-shopping-bag"></i>
      </div>
    </section>

    <!-- categories -->
    <section class="section">
      <div class="section-header">
        <h2>Categories</h2>
        <span class="muted">view all <i class="fas fa-arrow-right"></i></span>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="muted">based on recent activity</span>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- deal banner -->
    <section class="deal-banner" id="deals">
      <div class="deal-info">
        <h3>Flash Sale</h3>
        <div class="muted-light">MacBook Air M2 · limited stock</div>
        <div class="timer-group" id="timerGroup">
          <div class="time-box"><span class="num" id="dealDays">0</span><div class="label">Days</div></div>
          <div class="time-box"><span class="num" id="dealHours">00</span><div class="label">Hours</div></div>
          <div class="time-box"><span class="num" id="dealMinutes">00</span><div class="label">Mins</div></div>
          <div class="time-box"><span class="num" id="dealSeconds">00</span><div class="label">Secs</div></div>
        </div>
        <div style="display: flex; gap: 20px; align-items: center; flex-wrap: wrap;">
          <span style="font-size: 1.8rem; font-weight: 700;">$999 <span style="font-size: 1rem; text-decoration: line-through; opacity: 0.5; margin-left: 8px;">$1,199</span></span>
          <span style="background: #ff6b6b; padding: 4px 14px; border-radius: 40px; font-weight: 600; font-size: 0.8rem;">-17%</span>
        </div>
        <div class="deal-cta" style="margin-top: 16px;">
          <button class="btn" id="buyDealBtn"><i class="fas fa-bolt"></i> Grab deal</button>
        </div>
      </div>
      <div class="deal-image">
        <i class="fas fa-laptop"></i>
        <span style="font-weight: 300;">limited</span>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section">
      <div class="section-header">
        <h2>Real reviews</h2>
        <span class="muted">from our community</span>
      </div>
      <div class="testimonial-grid" id="testimonialGrid">
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Super fast delivery, and the quality is amazing. Will order again.”</p>
          <div class="user"><div class="user-avatar">AM</div> <div><strong>Ava M.</strong> <div style="font-size:0.8rem; color:var(--gray);">verified</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★☆</div>
          <p>“Great selection and easy checkout. The packaging was beautiful.”</p>
          <div class="user"><div class="user-avatar">JL</div> <div><strong>James L.</strong> <div style="font-size:0.8rem; color:var(--gray);">frequent buyer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“I love the new collection. The app is smooth and customer support is top.”</p>
          <div class="user"><div class="user-avatar">SR</div> <div><strong>Sophie R.</strong> <div style="font-size:0.8rem; color:var(--gray);">top reviewer</div></div></div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Get early access to drops and exclusive offers.</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Email address" required>
        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top: 12px; font-weight: 500; display: none;"></div>
    </div>
  </div>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <h4><i class="fas fa-store-alt" style="color: var(--accent);"></i> NexusShop</h4>
        <p style="margin-top: 8px; max-width: 240px;">Modern e‑commerce demo — built with care.</p>
        <div class="socials">
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="footer-links">
        <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
        <div><strong>Support</strong><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
      </div>
    </div>
    <div class="copy">© <span id="year"></span> NexusShop · all rights reserved</div>
  </div>
</footer>

<script>
  (function() {
    // ---------- data ----------
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    ];

    // ---------- refs ----------
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');

    let cartCount = 0;

    // ---------- render ----------
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4><small>explore</small>`;
        div.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.querySelector('.section-header h2').scrollIntoView({ behavior: 'smooth', block: 'center' });
        });
        categoriesGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:var(--gray); font-weight:400;">(${p.reviews})</span></div>
          </div>
          <div class="product-footer">
            <button class="btn-add" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
            <button class="btn-wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(card);
      });
      // attach add listeners
      document.querySelectorAll('.btn-add').forEach(btn => {
        btn.addEventListener('click', function(e) {
          const id = parseInt(this.dataset.id);
          addToCart(id);
        });
      });
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    function addToCart(id) {
      const product = PRODUCTS.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      // feedback
      const btn = document.querySelector(`.btn-add[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.style.background = '#28a745';
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.style.background = '';
        }, 1000);
      }
    }

    // search
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(searchInput.value); });

    // mobile toggle
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'block' ? 'none' : 'block';
    });

    // newsletter
    document.getElementById('newsletterForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#d9534f';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ Subscribed! You’re in.';
      msg.style.color = '#28a745';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 2800);
    });

    // deal timer
    (function() {
      const now = new Date();
      const target = new Date(now.getTime() + (25 * 60 + 30) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) return;
        const days = Math.floor(diff / (24*3600*1000));
        const hours = Math.floor((diff % (24*3600*1000)) / (3600*1000));
        const mins = Math.floor((diff % (3600*1000)) / (60*1000));
        const secs = Math.floor((diff % (60*1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // deal buy
    document.getElementById('buyDealBtn').addEventListener('click', function() {
      cartCount += 1;
      cartCountEl.textContent = cartCount;
      alert('✅ Deal added to cart (demo)');
    });

    // shop now, explore
    document.getElementById('shopNowBtn').addEventListener('click', () => {
      document.querySelector('.product-grid').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreBtn').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
    });

    // init
    document.getElementById('year').textContent = new Date().getFullYear();
    renderCategories();
    renderProducts(PRODUCTS);
    cartCountEl.textContent = 0;
  })();
</script>
</body>
</html>
