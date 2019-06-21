<template>
  <div>
    <h1>
      Uh oh, you messed up. That one does not exist.
    </h1>

    <p>
      But here is what I did to cover this case:
    </p>
    <p>
      In the router.js, I added a path at the end of all other pathes with a *
      as the url.<br />
      Whenever you change the route, the script goes through that list until the
      route is found. <br />
      In this case, the route wasn't found so that the last "catch-all" route is
      used.
    </p>

    <pre v-highlightjs><code class="javascript">
      routes: [
        { path: "normal-route", component: PageOne },
        { path: "another-route", component: PageTwo },
        <span class="highlight">{ path: "*", component: PageNotFound }</span>
      ]
      </code></pre>
  </div>
</template>

<script>
export default {
  name: "NotFound",
  data() {
    return {};
  }
};
</script>

<style scoped></style>
