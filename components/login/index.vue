<template xmlns="http://www.w3.org/1999/html">
  <div>
    <p>Endpoint {{endpoint}}</p>
    <input v-model="cif" placeholder="CIF"/>
    <button v-on:click="login">Mock Login with CIF</button>
  </div>
</template>

<script src="./index.js"></script>
