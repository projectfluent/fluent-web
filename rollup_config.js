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
      jsnext: true,
      browser: true,
    })
  ]
};
