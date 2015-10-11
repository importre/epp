#!/usr/bin/env node

'use strict';

const net = require('net');
const path = require('path');
const spawn = require('child_process').spawn;
const config = require('./config');
const win32 = process.platform === 'win32';

var child = null;

const server = net.createServer(function (c) {
  if (child) {
    if (win32) {
      spawn("taskkill", ["/pid", child.pid, '/f', '/t']);
    } else {
      child.kill();
    }

    delete process.env.DEV;
  }

  process.env.DEV = 1
  var cmd = win32 ? 'electron.cmd' : 'electron';

  child = spawn(cmd, ['.']);
  child.stdout.on('data', function (data) {
    console.log(data + '');
  });

  child.stderr.on('data', function (data) {
    console.log(data + '');
  });

  child.on('close', function (code) {
    console.log('child process exited with code ' + code);
  });

  c.write('world');
});

server.listen(config.port, function (e) {
  const client = net.connect({port: config.port}, function () {
    client.write('hello');
  });

  client.on('data', function (data) {
    client.end();
  });
});

server.on('error', function (e) {
});
