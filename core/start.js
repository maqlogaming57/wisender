// Tambahkan konfigurasi global untuk undici
global.undici = {
  pool: {
    maxWaitingClients: 10,  // kurangi dari default
    maxThreads: 2           // kurangi thread yang digunakan
  }
};

// Set heap limits
process.env.NODE_OPTIONS = '--max-old-space-size=1024';

// Batasi penggunaan WebAssembly memory
// if (global.WebAssembly) {
//   try {
//     console.log('Attempting to allocate WebAssembly memory...');
//     const memory = new WebAssembly.Memory({
//       initial: 2,  // ~16MB
//       maximum: 8   // ~32MB
//     });
//     console.log('WebAssembly memory allocated successfully:', memory);
//     global.WebAssembly.Memory = memory;
//   } catch (err) {
//     console.error('Failed to allocate WebAssembly memory:', err.message);
//   }
// }

// Gunakan worker threads untuk menjalankan WebAssembly secara terpisah
const { Worker } = require('worker_threads');

const worker = new Worker('./webassembly_worker.js');
worker.on('message', (msg) => {
  console.log('Message from worker:', msg);
});

worker.on('error', (err) => {
  console.error('Worker encountered an error:', err);
});

worker.on('exit', (code) => {
  if (code !== 0) {
    console.error('Worker stopped with exit code', code);
  }
});

// Jalankan script utama
require('./index.js');
