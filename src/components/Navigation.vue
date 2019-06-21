<template>
  <div class="navigation">
    <p class="animte-this ani-1">Navs are a thing of the past.</p>
    <p class="animte-this ani-2">Let me present</p>
    <p class="animte-this ani-3">the</p>
    <p class="animte-this ani-4">go whereever you want input!</p>
    <input
      class="animte-this ani-5 input"
      type="text"
      placeholder="Go ahead, try me!"
      v-model="routeInput"
      @keyup.enter="goThere()"
    />
    <button class="animte-this ani-5" @click="goThere()">
      Go there!
    </button>
  </div>
</template>

<script>
export default {
  name: "navigation",
  data() {
    return {
      routeInput: ""
    };
  },
  methods: {
    goThere() {
      if (!this.routeInput) {
        alert("You have to type something!");
      } else {
        this.$router.push(this.routeInput);
      }
    }
  }
};
</script>

<style scoped lang="scss">
.navigation {
  height: 100px;
  overflow: hidden;
  position: relative;
  margin-top: 10%;
}

button {
  left: auto !important;
  margin: 20px;
  border-width: 4px;
  border-radius: 5px;
  border-style: solid;
  border-color: #41b883;
  color: #41b883;
  font-weight: bold;
  cursor: pointer;
  outline: none;
  transition: all 0.2s;
  &:hover {
    border-color: #2b7b58;
    color: #2b7b58;
  }
  &:active {
    border-color: #000;
    color: #000;
  }
}

.input {
  margin: 20px 0;
  display: inline-block;
  width: 90%;
  max-width: 700px;
  margin: 20px auto;
  padding: 15px;
  background: #41b883;
  color: #fff;
  border: none;
  border-radius: 5px;
  outline: none;
  transition: all 1s;
  font-weight: bold;
  &::placeholder {
    color: #fff;
  }
}
.animte-this {
  font-size: 30px;
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  opacity: 0;

  &.ani-1 {
    animation-name: fade-in-out;
    animation-duration: 2s;
    animation-delay: 1s;
  }
  &.ani-2 {
    animation-name: fade-in-out;
    animation-duration: 2s;
    animation-delay: 2.5s;
  }
  &.ani-3 {
    animation-name: fade-in-out;
    animation-duration: 2s;
    animation-delay: 4s;
  }
  &.ani-4 {
    animation-name: fade-in-out;
    animation-duration: 3s;
    animation-delay: 5.5s;
  }
  &.ani-5 {
    animation-name: fade-in;
    animation-duration: 2s;
    animation-delay: 8s; // 8
    animation-fill-mode: forwards;
  }
}

@keyframes fade-in-out {
  0% {
    opacity: 0;
  }
  25% {
    opacity: 1;
  }
  75% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
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
