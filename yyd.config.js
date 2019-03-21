const pkg = require('./package.json');
module.exports = {
  // docker 名称
  repository: 'yyl-base',
  // tag
  tag: pkg.version,
  // 推送的
  pushHost: '',
  pushPrefix: 'jackness1208',
  // 自动 更新 history
  rewriteHistory: true
};
