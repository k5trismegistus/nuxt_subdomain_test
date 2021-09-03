<template>
  <div>
    <p>{{subdomain}}</p>
  </div>
</template>
<script>
export default {
  data() {
    const host = window.location.host
    const subdomain = (host.split('.').length > 2) ? host.split('.')[0] : ''

    return {
      subdomain
    }
  },
}
</script>