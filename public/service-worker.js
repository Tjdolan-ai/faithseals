self.addEventListener('install', () => {
  console.log('FaithSeal App installed')
})

self.addEventListener('activate', () => {
  console.log('FaithSeal App activated')
})

self.addEventListener('fetch', (event) => {
  event.respondWith(fetch(event.request))
})
