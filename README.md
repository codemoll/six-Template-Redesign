# WHMCS Six Template - DoubleSpeed Edition

A complete redesign of the WHMCS Six template with a modern dark tech-inspired design based on the DoubleSpeedHost custom template. This template maintains full WHMCS framework compatibility while providing a cutting-edge user interface.

![DoubleSpeed Template Preview](https://github.com/user-attachments/assets/c281b1cc-2e96-4555-b566-9045e5c086be)

## 🚀 Features

### Design & UI
- **Dark Tech-Inspired Theme**: Modern dark color scheme with neon accents
- **Advanced Navigation**: Enhanced navbar with user dropdown and mobile menu
- **Hero Section**: Animated background effects with statistics display
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
- **Feature Cards**: Modern cards with hover effects and gradient highlights
- **Form Controls**: Dark-themed inputs with neon focus states
- **Buttons**: Three variations (Primary, Secondary, Outline) with glow effects
- **Footer**: Complete redesign with social links, contact info, and back-to-top
- **Navigation**: Advanced dropdown menus with smooth transitions
- **Hero Section**: Full-screen hero with animated background and statistics

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
│   ├── doublespeed.css         # Core theme styles and variables
│   ├── doublespeed-six.css     # WHMCS Six compatibility layer
│   ├── doublespeed-custom.css  # Custom components and tweaks
│   └── doublespeed-responsive.css # Responsive design rules
├── js/
│   └── theme.js                # Enhanced JavaScript functionality
├── includes/
│   ├── head.tpl                # Updated with modular CSS includes
│   ├── navbar.tpl              # Enhanced navigation component
│   └── [other includes]        # Standard WHMCS includes
├── header.tpl                  # Redesigned header with new navigation
├── footer.tpl                  # Modern footer with social links
├── homepage.tpl                # Hero section with features and stats
├── theme.yaml                  # Updated template configuration
└── [other templates]           # Standard WHMCS templates
```

## 🎨 Customization

### Color Scheme
You can easily customize the color scheme by modifying the CSS variables in `css/doublespeed.css`:

```css
:root {
    --ds-neon-green: #00FF88;      /* Primary accent color */
    --ds-electric-blue: #007BFF;   /* Secondary accent color */
    --ds-cyber-purple: #9B59B6;    /* Tertiary accent color */
    --ds-dark-bg: #121212;         /* Main background */
    --ds-dark-bg-alt: #1A1A1A;     /* Secondary background */
    --ds-dark-surface: #2A2A2A;    /* Surface/card background */
}
```

### Logo Integration
Configure your logo in WHMCS Admin under Setup → General Settings → General → Logo URL, or place a logo.png file in the `images/` directory.

## 🔧 Technical Details

### Framework Compatibility
- **WHMCS Version**: 6.0+ (Bootstrap 3.4.1 compatible)
- **jQuery**: 1.12.4+
- **FontAwesome**: 5.10.1
- **Browser Support**: Modern browsers (Chrome, Firefox, Safari, Edge)

### Performance
- **Modular CSS**: Four separate stylesheets for optimal loading and maintainability
- **Lightweight JavaScript**: Only essential functionality included
- **Font Loading**: Optimized Google Fonts integration with preconnect
- **Responsive Images**: Fallback system for logo display

### Accessibility
- **ARIA Labels**: Proper accessibility attributes
- **Keyboard Navigation**: Full keyboard support for all interactive elements
- **Color Contrast**: WCAG compliant color combinations
- **Screen Reader**: Compatible with screen reading software

## 🚀 Advanced Features

### Modular CSS Architecture
- **doublespeed.css**: Core theme styles, variables, and base components
- **doublespeed-six.css**: WHMCS Six framework compatibility and overrides
- **doublespeed-custom.css**: Custom tweaks, accessibility features, and special components
- **doublespeed-responsive.css**: Mobile-first responsive design rules

### Enhanced Navigation
- **Desktop**: Clean navbar with user dropdown containing organized sections
- **Mobile**: Touch-friendly collapsible menu with enhanced user experience
- **Transitions**: Smooth animations and hover effects throughout

### Interactive Elements
- **Hover Effects**: Smooth transitions on cards and buttons with glow effects
- **Loading States**: Visual feedback for form submissions
- **Back to Top**: Floating button with smooth scroll functionality
- **Form Validation**: Enhanced styling for form states and validation

### Mobile Experience
- **Responsive Grid**: Bootstrap-compatible grid system with custom enhancements
- **Touch-Friendly**: Optimized button sizes and spacing for mobile devices
- **Performance**: Smooth animations optimized for mobile browsers

## 🧪 Testing

The template has been tested with:
- **WHMCS Core Functions**: Client area, billing, support tickets, domain management
- **Responsive Design**: Various screen sizes and devices
- **Browser Compatibility**: Modern browser support
- **Performance**: Optimized loading times and smooth animations

## 📞 Support

For customization requests or technical support:
- **Documentation**: Reference WHMCS template documentation
- **Community**: WHMCS community forums
- **Custom Development**: Contact for additional modifications

## 📄 License

This template maintains compatibility with WHMCS licensing requirements. Ensure compliance with your WHMCS license agreement.

## 🔄 Updates

### Version 1.0.0 (Current)
- Complete redesign with DoubleSpeed dark tech theme
- Modular CSS architecture with four separate stylesheets
- Enhanced navigation with advanced user dropdown
- Modern hero section with animated background effects
- Feature cards with hover animations and icons
- Responsive mobile design with touch optimizations
- Modern footer with social links and contact information
- Full WHMCS Six compatibility maintained

---

**Powered by cutting-edge technology** 🚀
