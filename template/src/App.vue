<template>
  <div id="app">
    <img src="./assets/logo.png">
    <div id="game"></div>
    {{#router}}
    <router-view/>
    {{else}}
    <HelloWorld/>
    {{/router}}
  </div>
</template>


<script lang="coffee">
{{#unless router}}
import HelloWorld from './components/HelloWorld'
{{/unless}}
import 'phaser'

class Game extends Phaser.Game
  constructor: ->
    super(
      type: Phaser.AUTO
      width: 800
      height: 600
      backgroundColor: '#2d2d2d'
      parent: 'game'
      scene: [])

export default
  name: 'App'{{#router}}{{else}}
  components: {HelloWorld}{{/router}}

  created: ->
    new Game
</script>


<style lang="stylus">
#app
  font-family 'Avenir', Helvetica, Arial, sans-serif
  -webkit-font-smoothing antialiased
  -moz-osx-font-smoothing grayscale
  text-align center
  color #2c3e50
  margin-top 60px
</style>
