import resolve from 'rollup-plugin-node-resolve';

export default {
  output: {
    format: 'esm',
  },
  acorn: {
    ecmaVersion: 9,
  },
  plugins: [
    resolve({
      browser: true,
    })
  ]
};
