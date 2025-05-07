const { parentPort } = require('worker_threads');

if (global.WebAssembly) {
  try {
    console.log('Attempting to allocate WebAssembly memory in worker...');
    const memory = new WebAssembly.Memory({
      initial: 2,  // ~16MB
      maximum: 8   // ~32MB
    });
    console.log('WebAssembly memory allocated successfully in worker:', memory);
    global.WebAssembly.Memory = memory;
    parentPort.postMessage('WebAssembly memory allocated in worker');
  } catch (err) {
    console.error('Failed to allocate WebAssembly memory in worker:', err.message);
    parentPort.postMessage('Failed to allocate WebAssembly memory in worker');
  }
}

// Implementasi logika WebAssembly atau kode lainnya di sini

// Contoh pengiriman pesan kembali ke proses utama
parentPort.postMessage('Worker is running successfully');
