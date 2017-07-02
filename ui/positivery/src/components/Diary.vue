<template>
  <div id="editor">
    <textarea v-model="input"></textarea>
    <div v-html="compiledMarkdown"></div>
  </div>
</template>

<script>
import marked from 'marked'

export default {
  name: 'diary',
  data () {
    return {
      input: '# hello'
    }
  },
  computed: {
    compiledMarkdown: function () {
      return marked(this.input, { sanitize: true })
    }
  }
}
</script>

<style scoped>
#editor {
  margin: 0;
  height: 100%;
  font-family: 'Helvetica Neue', Arial, sans-serif;
  color: #333;
}

textarea, #editor div {
  display: inline-block;
  width: 49%;
  height: 100%;
  vertical-align: top;
  box-sizing: border-box;
  padding: 0 20px;
  background-color: #f6f6f6;
  text-align: left;
}

textarea {
  border: none;
  border-right: 1px solid #ccc;
  resize: none;
  outline: none;
  font-size: 14px;
  font-family: 'Monaco', courier, monospace;
  padding: 20px;
}

code {
  color: #f66;
}
</style>

