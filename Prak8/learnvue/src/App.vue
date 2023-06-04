<script setup>
import { onMounted } from "vue";
import HelloWorld from "./components/HelloWorld.vue";
</script>

<template>
  <HelloWorld />
  <br />
  <h2>Nama saya adalah {{ nama }}</h2>
  <h2>Umur saya {{ umur }}</h2>
  <h1>Bilangan {{ bilangan }}</h1>
  <button v-on:click="Tambah">Tambah</button>
</template>

<script>
export default {
  name: "app",
  data() {
    return {
      nama: "Supri",
      umur: 20,
      bilangan: 0,
    };
  },
  mounted() {
    this.umur = this.umur + 30;
  },
  methods: {
    Tambah() {
      this.bilangan += 2;
    },
  },
};
</script>

<style scoped></style>
