<template>
  <div class="about">
    <h1>This is an about page</h1>
    <p>
      So yes. This is a shitty website because I wanted to try something with
      the vue router and needed a playground. <br />(For now that's it. There
      are no other routes other than this, home and 404)
    </p>

    <p>
      This is how the route change works:
    </p>
    <p>
      On click or enter, a function is called, which pushes a new route to the
      router.
    </p>

    <pre v-highlightjs><code class="javascript">
        goThere() {
          if (!this.routeInput) {
            alert("You have to type something!");
          } else {
            <span class="highlight">this.$router.push(this.routeInput);</span>
          }
        }
      </code></pre>
  </div>
</template>
