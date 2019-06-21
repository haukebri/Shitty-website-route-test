<template>
  <div class="home">
    <h1>
      This is a shitty website about routing.
    </h1>

    <p>Feeling lost?<br />Ya, I am too. Try "about"</p>
  </div>
</template>

<script>
export default {
  name: "home"
};
</script>

<style lang="scss" scoped>
.home {
  opacity: 0;
  animation-name: fade-in;
  animation-duration: 2s;
  animation-delay: 10s;
  animation-fill-mode: forwards;
}

@keyframes fade-in {
  0% {
    opacity: 0;
  }
  25% {
    opacity: 1;
  }
  100% {
    opacity: 1;
  }
}
</style>
