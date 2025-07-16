# WHMCS Six Template - DoubleSpeed Edition

A complete redesign of the WHMCS Six template with a modern dark tech-inspired design based on the DoubleSpeedHost custom template. This template maintains full WHMCS framework compatibility while providing a cutting-edge user interface.

![DoubleSpeed Template Preview](https://github.com/user-attachments/assets/c281b1cc-2e96-4555-b566-9045e5c086be)

## 🚀 Features

### Design & UI
- **Dark Tech-Inspired Theme**: Modern dark color scheme with neon accents
- **Advanced Mega Menu**: Sophisticated user profile dropdown with organized sections
- **Gradient Text Effects**: Eye-catching glow effects on headings and key elements
- **Smooth Animations**: CSS transitions and hover effects throughout
- **Responsive Design**: Mobile-first approach with elegant mobile navigation

### Color Palette
- **Primary**: Neon Green (#00FF88)
- **Secondary**: Electric Blue (#007BFF)
- **Tertiary**: Cyber Purple (#9B59B6)
- **Backgrounds**: Dark (#121212, #1A1A1A, #2A2A2A)
- **Text**: White (#FFFFFF) and Light Gray (#BFBFBF)

### Typography
- **Headings**: Orbitron (tech-inspired monospace font)
- **Body Text**: Roboto (clean, modern sans-serif)
- **Enhanced Readability**: Optimized font weights and spacing

### Enhanced Components
- **Dashboard Tiles**: Redesigned with hover effects and gradient highlights
- **Form Controls**: Dark-themed inputs with neon focus states
- **Buttons**: Three variations (Primary, Secondary, Outline) with glow effects
- **Tables**: Dark styling with hover highlights
- **Status Indicators**: Color-coded labels matching the theme
- **Modals & Panels**: Consistent dark styling throughout

## 🛠 Installation

1. **Backup Your Current Template**
   ```bash
   cp -r /path/to/whmcs/templates/six /path/to/whmcs/templates/six-backup
   ```

2. **Upload Template Files**
   - Upload all files to your WHMCS `templates/six/` directory
   - Ensure proper file permissions are set

3. **Clear Template Cache**
   - In WHMCS Admin: Setup → General Settings → Security → Template Cache → Clear Cache

## 📁 File Structure

```
six/
├── css/
│   ├── style.css          # Main DoubleSpeed theme CSS
│   └── all.min.css        # Original WHMCS CSS (preserved)
├── js/
│   └── theme.js           # Enhanced JavaScript functionality
├── includes/
│   ├── head.tpl           # Updated with custom CSS/JS includes
│   └── [other includes]   # Standard WHMCS includes
├── header.tpl             # Redesigned navigation with mega menu
├── footer.tpl             # Enhanced footer with social links
├── clientareahome.tpl     # Updated dashboard with new tile design
├── theme.yaml             # Template configuration
└── [other templates]      # Standard WHMCS templates
```

## 🎨 Customization

### Color Scheme
You can easily customize the color scheme by modifying the CSS variables in `css/style.css`:

```css
:root {
    --neon-green: #00FF88;      /* Primary accent color */
    --electric-blue: #007BFF;   /* Secondary accent color */
    --cyber-purple: #9B59B6;    /* Tertiary accent color */
    --dark-bg: #121212;         /* Main background */
    --dark-bg-alt: #1A1A1A;     /* Secondary background */
    --dark-surface: #2A2A2A;    /* Surface/card background */
}
```

### Logo Integration
Place your logo in the `images/` directory and update the path in `header.tpl`:

```smarty
{if $assetLogoPath}
    <img src="{$assetLogoPath}" alt="{$companyname}" class="h-8 w-auto">
{else}
    <span class="font-orbitron font-bold glow-text">{$companyname}</span>
{/if}
```

## 🔧 Technical Details

### Framework Compatibility
- **WHMCS Version**: 6.0+ (Bootstrap 3.4.1 compatible)
- **jQuery**: 1.12.4+
- **FontAwesome**: 5.10.1
- **Browser Support**: Modern browsers (Chrome, Firefox, Safari, Edge)

### Performance
- **Optimized CSS**: Efficient selectors and minimal redundancy
- **Lightweight JavaScript**: Only essential functionality included
- **Font Loading**: Optimized Google Fonts integration with preconnect

### Accessibility
- **ARIA Labels**: Proper accessibility attributes
- **Keyboard Navigation**: Full keyboard support for all interactive elements
- **Color Contrast**: WCAG compliant color combinations
- **Screen Reader**: Compatible with screen reading software

## 🚀 Advanced Features

### Mega Menu System
The user dropdown includes organized sections:
- **Dashboard**: Overview, Services, Billing, Support
- **Account**: Profile, Security, Contacts
- **Actions**: Add Funds, New Ticket, Messages

### Interactive Elements
- **Hover Effects**: Smooth transitions on cards and buttons
- **Loading States**: Visual feedback for form submissions
- **Notifications**: Toast-style notification system
- **Tooltips**: Enhanced Bootstrap tooltip styling

### Mobile Experience
- **Responsive Navigation**: Collapsible mobile menu
- **Touch-Friendly**: Optimized button sizes and spacing
- **Performance**: Smooth animations on mobile devices

## 🧪 Testing

The template has been tested with:
- **WHMCS Core Functions**: Client area, billing, support tickets
- **Responsive Design**: Various screen sizes and devices
- **Browser Compatibility**: Modern browser support
- **Performance**: Optimized loading times

## 📞 Support

For customization requests or technical support:
- **Documentation**: Reference WHMCS template documentation
- **Community**: WHMCS community forums
- **Custom Development**: Contact for additional modifications

## 📄 License

This template maintains compatibility with WHMCS licensing requirements. Ensure compliance with your WHMCS license agreement.

## 🔄 Updates

### Version 1.0.0 (Current)
- Initial release with DoubleSpeed design
- Complete navigation redesign
- Enhanced dashboard tiles
- Modern color scheme implementation
- Responsive mobile design
- Advanced JavaScript functionality

---

**Powered by cutting-edge technology** 🚀
