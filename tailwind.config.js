module.exports = {
  plugins: [
    require('daisyui')
  ],
  theme: {
    extend: {
      boxShadow: {
        'faith-glow': '0 0 20px #5A4E9D',
      },
    },
  },
  daisyui: {
    themes: [
      {
        faithseal: {
          'color-scheme': 'light',
          primary: '#5A4E9D',
          secondary: '#4c3e8d',
          accent: '#F4C430',
          neutral: '#1C1C1C',
          'base-100': '#FFFFFF',
          'base-200': '#f8f8f8',
          'base-300': '#f0f0f0',
          'base-content': '#1C1C1C',
          '--rounded-btn': '1.9rem',
          '--tab-border': '2px',
          '--tab-radius': '.5rem'
        }
      }
    ]
  }
}
