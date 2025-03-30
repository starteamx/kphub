我将为您编写一份详细的Vue 2和Vue 3生命周期对比的知识文档，适合不同级别的开发者阅读。

```markdown:c:\project\kphub\src\frontend\vue\02-基础\2.11-生命周期对比.md
---
title: 生命周期对比
icon: compare
order: 11
---

# 生命周期对比

Vue 2和Vue 3的生命周期钩子有一些区别，理解这些区别对于迁移和选择合适的API至关重要。本节将对比Vue 2和Vue 3的生命周期钩子，帮助读者理解两个版本之间的差异和最佳实践。

## 生命周期钩子概述

生命周期钩子是Vue框架提供的特殊函数，允许开发者在组件生命周期的特定阶段执行自定义代码。这些钩子函数从组件的创建、挂载、更新到销毁的整个过程中提供了精确的控制点。

在Vue 3中，虽然保留了Vue 2的大部分生命周期概念，但引入了组合式API（Composition API）作为选项式API（Options API）的补充，这带来了生命周期钩子使用方式的变化。

## 命名变化

Vue 3对部分生命周期钩子的名称进行了调整，使其更准确地反映实际发生的事情：

| Vue 2 | Vue 3 | 说明 |
|-------|-------|------|
| beforeCreate | beforeCreate (选项式API)<br>setup() (组合式API) | 在Vue 3的组合式API中，setup函数替代了beforeCreate和created钩子 |
| created | created (选项式API)<br>setup() (组合式API) | 同上 |
| beforeMount | beforeMount (选项式API)<br>onBeforeMount (组合式API) | 名称保持一致，但组合式API中需要导入并调用 |
| mounted | mounted (选项式API)<br>onMounted (组合式API) | 同上 |
| beforeUpdate | beforeUpdate (选项式API)<br>onBeforeUpdate (组合式API) | 同上 |
| updated | updated (选项式API)<br>onUpdated (组合式API) | 同上 |
| beforeDestroy | beforeUnmount (选项式API)<br>onBeforeUnmount (组合式API) | 更名为beforeUnmount，更准确地反映组件卸载而非销毁 |
| destroyed | unmounted (选项式API)<br>onUnmounted (组合式API) | 更名为unmounted，理由同上 |
| activated | activated (选项式API)<br>onActivated (组合式API) | 名称保持一致，但组合式API中需要导入并调用 |
| deactivated | deactivated (选项式API)<br>onDeactivated (组合式API) | 同上 |
| errorCaptured | errorCaptured (选项式API)<br>onErrorCaptured (组合式API) | 同上 |

Vue 3还新增了两个用于调试的生命周期钩子：

| Vue 3新增钩子 | 说明 |
|--------------|------|
| onRenderTracked | 当组件渲染过程中追踪到响应式依赖时调用 |
| onRenderTriggered | 当响应式依赖的变更触发了组件重新渲染时调用 |

## 使用方式对比

### 选项式API对比

Vue 2和Vue 3的选项式API使用方式基本相同，只是部分钩子名称发生了变化：

**Vue 2示例**：
```javascript
export default {
  beforeCreate() {
    console.log('组件实例创建前');
  },
  created() {
    console.log('组件实例已创建');
  },
  beforeMount() {
    console.log('组件挂载前');
  },
  mounted() {
    console.log('组件已挂载');
  },
  beforeUpdate() {
    console.log('组件更新前');
  },
  updated() {
    console.log('组件已更新');
  },
  beforeDestroy() {
    console.log('组件销毁前');
  },
  destroyed() {
    console.log('组件已销毁');
  },
  activated() {
    console.log('被keep-alive缓存的组件激活时');
  },
  deactivated() {
    console.log('被keep-alive缓存的组件停用时');
  },
  errorCaptured(err, vm, info) {
    console.log('捕获到后代组件的错误时');
    return false;
  }
}
```

**Vue 3选项式API示例**：
```javascript
export default {
  beforeCreate() {
    console.log('组件实例创建前');
  },
  created() {
    console.log('组件实例已创建');
  },
  beforeMount() {
    console.log('组件挂载前');
  },
  mounted() {
    console.log('组件已挂载');
  },
  beforeUpdate() {
    console.log('组件更新前');
  },
  updated() {
    console.log('组件已更新');
  },
  beforeUnmount() {  // 名称变化
    console.log('组件卸载前');
  },
  unmounted() {  // 名称变化
    console.log('组件已卸载');
  },
  activated() {
    console.log('被keep-alive缓存的组件激活时');
  },
  deactivated() {
    console.log('被keep-alive缓存的组件停用时');
  },
  errorCaptured(err, vm, info) {
    console.log('捕获到后代组件的错误时');
    return false;
  },
  renderTracked(e) {  // Vue 3新增
    console.log('组件渲染过程中追踪到响应式依赖', e);
  },
  renderTriggered(e) {  // Vue 3新增
    console.log('响应式依赖变更触发组件重新渲染', e);
  }
}
```

### 组合式API（Vue 3新增）

Vue 3引入的组合式API提供了一种全新的组织组件逻辑的方式，生命周期钩子也随之调整：

**Vue 3组合式API示例**：
```javascript
import { 
  ref, 
  onBeforeMount, 
  onMounted, 
  onBeforeUpdate, 
  onUpdated, 
  onBeforeUnmount, 
  onUnmounted, 
  onActivated, 
  onDeactivated, 
  onErrorCaptured,
  onRenderTracked,
  onRenderTriggered
} from 'vue';

export default {
  setup() {
    // 这里是beforeCreate和created的组合
    console.log('setup函数执行，相当于beforeCreate和created');
    
    const count = ref(0);
    
    onBeforeMount(() => {
      console.log('组件挂载前');
    });
    
    onMounted(() => {
      console.log('组件已挂载');
    });
    
    onBeforeUpdate(() => {
      console.log('组件更新前');
    });
    
    onUpdated(() => {
      console.log('组件已更新');
    });
    
    onBeforeUnmount(() => {
      console.log('组件卸载前');
    });
    
    onUnmounted(() => {
      console.log('组件已卸载');
    });
    
    onActivated(() => {
      console.log('被keep-alive缓存的组件激活时');
    });
    
    onDeactivated(() => {
      console.log('被keep-alive缓存的组件停用时');
    });
    
    onErrorCaptured((err, instance, info) => {
      console.log('捕获到后代组件的错误时');
      return false;
    });
    
    onRenderTracked((e) => {
      console.log('组件渲染过程中追踪到响应式依赖', e);
    });
    
    onRenderTriggered((e) => {
      console.log('响应式依赖变更触发组件重新渲染', e);
    });
    
    return {
      count
    };
  }
}
```

**使用`<script setup>`语法糖（Vue 3.2+）**：
```vue
<script setup>
import { 
  ref, 
  onBeforeMount, 
  onMounted, 
  onBeforeUpdate, 
  onUpdated, 
  onBeforeUnmount, 
  onUnmounted, 
  onActivated, 
  onDeactivated, 
  onErrorCaptured,
  onRenderTracked,
  onRenderTriggered
} from 'vue';

// setup代码直接在顶层执行，相当于beforeCreate和created
console.log('script setup执行，相当于beforeCreate和created');

const count = ref(0);

onBeforeMount(() => {
  console.log('组件挂载前');
});

onMounted(() => {
  console.log('组件已挂载');
});

onBeforeUpdate(() => {
  console.log('组件更新前');
});

onUpdated(() => {
  console.log('组件已更新');
});

onBeforeUnmount(() => {
  console.log('组件卸载前');
});

onUnmounted(() => {
  console.log('组件已卸载');
});

onActivated(() => {
  console.log('被keep-alive缓存的组件激活时');
});

onDeactivated(() => {
  console.log('被keep-alive缓存的组件停用时');
});

onErrorCaptured((err, instance, info) => {
  console.log('捕获到后代组件的错误时');
  return false;
});

onRenderTracked((e) => {
  console.log('组件渲染过程中追踪到响应式依赖', e);
});

onRenderTriggered((e) => {
  console.log('响应式依赖变更触发组件重新渲染', e);
});
</script>

<template>
  <div>
    <button @click="count++">点击次数: {{ count }}</button>
  </div>
</template>
```

## 生命周期执行顺序对比

### Vue 2生命周期执行顺序

1. **beforeCreate**: 实例初始化后，数据观测和事件配置之前调用
2. **created**: 实例创建完成后调用，此时已完成数据观测、属性和方法的运算、事件回调的配置
3. **beforeMount**: 挂载开始之前调用，相关的render函数首次被调用
4. **mounted**: 实例挂载到DOM后调用，此时可以访问DOM元素
5. **beforeUpdate**: 数据更新时调用，发生在虚拟DOM重新渲染和打补丁之前
6. **updated**: 数据更改导致的虚拟DOM重新渲染和打补丁完成后调用
7. **beforeDestroy**: 实例销毁之前调用，此时实例仍然完全可用
8. **destroyed**: 实例销毁后调用，此时所有的事件监听器已被移除，所有的子实例也已被销毁

对于被`<keep-alive>`包裹的组件：
- **activated**: 被keep-alive缓存的组件激活时调用
- **deactivated**: 被keep-alive缓存的组件停用时调用

### Vue 3生命周期执行顺序

选项式API的执行顺序与Vue 2基本相同，只是钩子名称有变化：

1. **beforeCreate**: 实例初始化后，数据观测和事件配置之前调用
2. **created**: 实例创建完成后调用
3. **beforeMount**: 挂载开始之前调用
4. **mounted**: 实例挂载到DOM后调用
5. **beforeUpdate**: 数据更新时调用，发生在虚拟DOM重新渲染和打补丁之前
6. **updated**: 数据更改导致的虚拟DOM重新渲染和打补丁完成后调用
7. **beforeUnmount**: 实例卸载之前调用（Vue 2中为beforeDestroy）
8. **unmounted**: 实例卸载后调用（Vue 2中为destroyed）

组合式API的执行顺序：

1. **setup**: 在beforeCreate之前调用，是组合式API的入口点
2. **onBeforeMount**: 挂载开始之前调用
3. **onMounted**: 实例挂载到DOM后调用
4. **onBeforeUpdate**: 数据更新时调用
5. **onUpdated**: 数据更改导致的虚拟DOM重新渲染和打补丁完成后调用
6. **onBeforeUnmount**: 实例卸载之前调用
7. **onUnmounted**: 实例卸载后调用

## 父子组件生命周期执行顺序对比

理解父子组件之间生命周期钩子的执行顺序对于处理组件间的交互至关重要。

### Vue 2父子组件生命周期执行顺序

**创建和挂载阶段**：
1. 父组件 beforeCreate
2. 父组件 created
3. 父组件 beforeMount
4. 子组件 beforeCreate
5. 子组件 created
6. 子组件 beforeMount
7. 子组件 mounted
8. 父组件 mounted

**更新阶段**（当父组件数据变化影响子组件时）：
1. 父组件 beforeUpdate
2. 子组件 beforeUpdate
3. 子组件 updated
4. 父组件 updated

**销毁阶段**：
1. 父组件 beforeDestroy
2. 子组件 beforeDestroy
3. 子组件 destroyed
4. 父组件 destroyed

### Vue 3父子组件生命周期执行顺序

Vue 3的执行顺序与Vue 2基本相同，只是钩子名称有变化：

**创建和挂载阶段**：
1. 父组件 setup (组合式API) / beforeCreate (选项式API)
2. 父组件 created (选项式API，组合式API中包含在setup中)
3. 父组件 onBeforeMount / beforeMount
4. 子组件 setup / beforeCreate
5. 子组件 created (选项式API)
6. 子组件 onBeforeMount / beforeMount
7. 子组件 onMounted / mounted
8. 父组件 onMounted / mounted

**更新阶段**：
1. 父组件 onBeforeUpdate / beforeUpdate
2. 子组件 onBeforeUpdate / beforeUpdate
3. 子组件 onUpdated / updated
4. 父组件 onUpdated / updated

**卸载阶段**：
1. 父组件 onBeforeUnmount / beforeUnmount
2. 子组件 onBeforeUnmount / beforeUnmount
3. 子组件 onUnmounted / unmounted
4. 父组件 onUnmounted / unmounted

## 生命周期钩子的功能对比

### beforeCreate / setup

**Vue 2 beforeCreate**:
- 在实例初始化后，数据观测和事件配置之前调用
- 此时无法访问组件的data、methods、computed等属性

```javascript
// Vue 2
export default {
  data() {
    return {
      message: 'Hello'
    }
  },
  beforeCreate() {
    // 此时无法访问this.message
    console.log(this.message); // undefined
  }
}
```

**Vue 3 setup**:
- 在组件实例创建之前执行，是组合式API的入口点
- 接收props和context作为参数
- 返回的对象会暴露给模板和组件实例

```javascript
// Vue 3
import { ref } from 'vue';

export default {
  props: {
    title: String
  },
  setup(props, context) {
    // 可以访问props
    console.log(props.title);
    
    // 但不能访问this
    const message = ref('Hello');
    
    return {
      message
    };
  }
}
```

### created / setup

**Vue 2 created**:
- 在实例创建完成后调用
- 此时可以访问data、computed、methods等，但DOM尚未挂载

```javascript
// Vue 2
export default {
  data() {
    return {
      message: 'Hello'
    }
  },
  created() {
    // 可以访问数据和方法
    console.log(this.message); // 'Hello'
    
    // 可以进行API调用
    this.fetchData();
  },
  methods: {
    fetchData() {
      // 获取初始数据
    }
  }
}
```

**Vue 3 setup**:
- 同样包含了created的功能
- 可以在setup中直接编写初始化逻辑

```javascript
// Vue 3
import { ref, onMounted } from 'vue';

export default {
  setup() {
    const message = ref('Hello');
    const data = ref(null);
    
    // 相当于created钩子中的逻辑
    console.log(message.value); // 'Hello'
    
    // 可以进行API调用
    fetchData();
    
    function fetchData() {
      // 获取初始数据
      fetch('/api/data')
        .then(response => response.json())
        .then(result => {
          data.value = result;
        });
    }
    
    return {
      message,
      data
    };
  }
}
```

### beforeMount / onBeforeMount

**Vue 2 beforeMount**:
- 在挂载开始之前调用
- 相关的render函数首次被调用

```javascript
// Vue 2
export default {
  beforeMount() {
    console.log('DOM元素即将被创建');
    // 此时this.$el尚未被替换为新创建的DOM元素
    console.log(this.$el); // 可能是注释节点
  }
}
```

**Vue 3 onBeforeMount**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { onBeforeMount } from 'vue';

export default {
  setup() {
    onBeforeMount(() => {
      console.log('DOM元素即将被创建');
    });
    
    return {};
  }
}
```

### mounted / onMounted

**Vue 2 mounted**:
- 在实例挂载到DOM后调用
- 此时可以访问和操作DOM元素

```javascript
// Vue 2
export default {
  mounted() {
    console.log('DOM元素已创建');
    console.log(this.$el); // 实际的DOM元素
    
    // 可以进行DOM操作
    this.$el.querySelector('button').focus();
    
    // 可以初始化需要DOM的库
    new SomeLibrary(this.$el.querySelector('.chart'));
  }
}
```

**Vue 3 onMounted**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onMounted } from 'vue';

export default {
  setup() {
    const chartEl = ref(null);
    
    onMounted(() => {
      console.log('DOM元素已创建');
      
      // 可以进行DOM操作
      document.querySelector('button').focus();
      
      // 使用模板引用
      if (chartEl.value) {
        new SomeLibrary(chartEl.value);
      }
    });
    
    return {
      chartEl
    };
  }
}
```

### beforeUpdate / onBeforeUpdate

**Vue 2 beforeUpdate**:
- 数据更新时调用，发生在虚拟DOM重新渲染和打补丁之前
- 适合在更新前访问现有的DOM

```javascript
// Vue 2
export default {
  data() {
    return {
      message: 'Hello'
    }
  },
  beforeUpdate() {
    console.log('数据已更新，DOM即将更新');
    console.log('DOM中的文本:', this.$el.textContent); // 显示更新前的内容
    console.log('数据中的message:', this.message); // 显示更新后的值
  },
  methods: {
    updateMessage() {
      this.message = 'Updated';
    }
  }
}
```

**Vue 3 onBeforeUpdate**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onBeforeUpdate } from 'vue';

export default {
  setup() {
    const message = ref('Hello');
    
    onBeforeUpdate(() => {
      console.log('数据已更新，DOM即将更新');
      console.log('数据中的message:', message.value); // 显示更新后的值
    });
    
    function updateMessage() {
      message.value = 'Updated';
    }
    
    return {
      message,
      updateMessage
    };
  }
}
```

### updated / onUpdated

**Vue 2 updated**:
- 数据更改导致的虚拟DOM重新渲染和打补丁完成后调用
- 适合执行依赖于更新后DOM的操作

```javascript
// Vue 2
export default {
  data() {
    return {
      items: [1, 2, 3]
    }
  },
  updated() {
    console.log('DOM已更新');
    // 可以访问更新后的DOM
    console.log('列表项数量:', this.$el.querySelectorAll('li').length);
    
    // 注意：在updated中修改数据可能导致无限循环
    // 应该使用条件判断或其他方式避免
  },
  methods: {
    addItem() {
      this.items.push(this.items.length + 1);
    }
  }
}
```

**Vue 3 onUpdated**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onUpdated } from 'vue';

export default {
  setup() {
    const items = ref([1, 2, 3]);
    
    onUpdated(() => {
      console.log('DOM已更新');
      // 可以访问更新后的DOM
      console.log('列表项数量:', document.querySelectorAll('li').length);
    });
    
    function addItem() {
      items.value.push(items.value.length + 1);
    }
    
    return {
      items,
      addItem
    };
  }
}
```

### beforeDestroy / beforeUnmount

**Vue 2 beforeDestroy**:
- 实例销毁之前调用
- 适合清理定时器、取消订阅等

```javascript
// Vue 2
export default {
  data() {
    return {
      timer: null
    }
  },
  mounted() {
    this.timer = setInterval(() => {
      console.log('定时器执行');
    }, 1000);
  },
  beforeDestroy() {
    console.log('组件即将销毁');
    // 清理定时器
    clearInterval(this.timer);
    // 移除事件监听器
    window.removeEventListener('resize', this.handleResize);
  }
}
```

**Vue 3 onBeforeUnmount**:
- 功能与Vue 2的beforeDestroy相同，但名称和使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onMounted, onBeforeUnmount } from 'vue';

export default {
  setup() {
    const timer = ref(null);
    
    onMounted(() => {
      timer.value = setInterval(() => {
        console.log('定时器执行');
      }, 1000);
      
      window.addEventListener('resize', handleResize);
    });
    
    onBeforeUnmount(() => {
      console.log('组件即将卸载');
      // 清理定时器
      clearInterval(timer.value);
      // 移除事件监听器
      window.removeEventListener('resize', handleResize);
    });
    
    function handleResize() {
      // 处理窗口大小变化
    }
    
    return {};
  }
}
```

### destroyed / unmounted

**Vue 2 destroyed**:
- 实例销毁后调用
- 所有的事件监听器已被移除，所有的子实例也已被销毁

```javascript
// Vue 2
export default {
  destroyed() {
    console.log('组件已销毁');
    // 此时组件完全销毁，所有的指令已解绑，所有的事件监听器已被移除
  }
}
```

**Vue 3 onUnmounted**:
- 功能与Vue 2的destroyed相同，但名称和使用方式不同

```javascript
// Vue 3 组合式API
import { onUnmounted } from 'vue';

export default {
  setup() {
    onUnmounted(() => {
      console.log('组件已卸载');
      // 此时组件完全卸载，所有的指令已解绑，所有的事件监听器已被移除
    });
    
    return {};
  }
}
```

### activated / onActivated

**Vue 2 activated**:
- 被keep-alive缓存的组件激活时调用

```javascript
// Vue 2
export default {
  activated() {
    console.log('缓存的组件被激活');
    // 可以恢复组件状态，如滚动位置
    window.scrollTo(0, this.savedScrollPosition);
    // 重新获取数据
    this.refreshData();
  },
  methods: {
    refreshData() {
      // 获取最新数据
    }
  }
}
```

**Vue 3 onActivated**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onActivated } from 'vue';

export default {
  setup() {
    const savedScrollPosition = ref(0);
    
    onActivated(() => {
      console.log('缓存的组件被激活');
      // 可以恢复组件状态，如滚动位置
      window.scrollTo(0, savedScrollPosition.value);
      // 重新获取数据
      refreshData();
    });
    
    function refreshData() {
      // 获取最新数据
    }
    
    return {
      savedScrollPosition
    };
  }
}
```

### deactivated / onDeactivated

**Vue 2 deactivated**:
- 被keep-alive缓存的组件停用时调用

```javascript
// Vue 2
export default {
  deactivated() {
    console.log('缓存的组件被停用');
    // 可以保存组件状态
    this.savedScrollPosition = window.scrollY;
    // 暂停消耗资源的操作
    this.pauseVideoPlayback();
  },
  methods: {
    pauseVideoPlayback() {
      // 暂停视频播放
    }
  }
}
```

**Vue 3 onDeactivated**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onDeactivated } from 'vue';

export default {
  setup() {
    const savedScrollPosition = ref(0);
    
    onDeactivated(() => {
      console.log('缓存的组件被停用');
      // 可以保存组件状态
      savedScrollPosition.value = window.scrollY;
      // 暂停消耗资源的操作
      pauseVideoPlayback();
    });
    
    function pauseVideoPlayback() {
      // 暂停视频播放
    }
    
    return {
      savedScrollPosition
    };
  }
}
```

### errorCaptured / onErrorCaptured

**Vue 2 errorCaptured**:
- 当捕获一个来自后代组件的错误时被调用

```javascript
// Vue 2
export default {
  errorCaptured(err, vm, info) {
    console.log('捕获到错误:', err);
    console.log('错误来源组件:', vm);
    console.log('错误信息:', info);
    
    // 处理错误，例如显示错误消息
    this.errorMessage = err.message;
    
    // 返回false阻止错误继续向上传播
    return false;
  }
}
```

**Vue 3 onErrorCaptured**:
- 功能与Vue 2相同，但使用方式不同

```javascript
// Vue 3 组合式API
import { ref, onErrorCaptured } from 'vue';

export default {
  setup() {
    const errorMessage = ref('');
    
    onErrorCaptured((err, instance, info) => {
      console.log('捕获到错误:', err);
      console.log('错误来源组件:', instance);
      console.log('错误信息:', info);
      
      // 处理错误，例如显示错误消息
      errorMessage.value = err.message;
      
      // 返回false阻止错误继续向上我将继续编写Vue 2和Vue 3生命周期对比的内容，接着上次的errorCaptured/onErrorCaptured部分。

```markdown:c:\project\kphub\src\frontend\vue\02-基础\2.11-生命周期对比.md
      // 返回false阻止错误继续向上传播
      return false;
    });
    
    return {
      errorMessage
    };
  }
}
```

### renderTracked / onRenderTracked (Vue 3新增)

**Vue 3 renderTracked**:
- 当组件渲染过程中追踪到响应式依赖时调用
- 主要用于调试，帮助理解哪些依赖触发了组件渲染

```javascript
// Vue 3 选项式API
export default {
  data() {
    return {
      count: 0
    }
  },
  renderTracked(e) {
    console.log('组件渲染过程中追踪到响应式依赖:', e);
    // e包含以下属性:
    // - target: 被追踪的对象
    // - type: 追踪的操作类型 (get, set等)
    // - key: 被追踪的属性
  }
}
```

**Vue 3 onRenderTracked**:
- 组合式API中的对应钩子

```javascript
// Vue 3 组合式API
import { ref, onRenderTracked } from 'vue';

export default {
  setup() {
    const count = ref(0);
    
    onRenderTracked((e) => {
      console.log('组件渲染过程中追踪到响应式依赖:', e);
      // e包含以下属性:
      // - target: 被追踪的对象
      // - type: 追踪的操作类型 (get, set等)
      // - key: 被追踪的属性
    });
    
    return {
      count
    };
  }
}
```

### renderTriggered / onRenderTriggered (Vue 3新增)

**Vue 3 renderTriggered**:
- 当响应式依赖的变更触发了组件重新渲染时调用
- 主要用于调试，帮助理解是哪个依赖变化导致了组件重新渲染

```javascript
// Vue 3 选项式API
export default {
  data() {
    return {
      count: 0
    }
  },
  renderTriggered(e) {
    console.log('响应式依赖变更触发组件重新渲染:', e);
    // e包含以下属性:
    // - target: 触发更新的对象
    // - type: 操作类型 (set, add等)
    // - key: 被修改的属性
    // - oldValue: 旧值
    // - newValue: 新值
  },
  methods: {
    increment() {
      this.count++;
    }
  }
}
```

**Vue 3 onRenderTriggered**:
- 组合式API中的对应钩子

```javascript
// Vue 3 组合式API
import { ref, onRenderTriggered } from 'vue';

export default {
  setup() {
    const count = ref(0);
    
    onRenderTriggered((e) => {
      console.log('响应式依赖变更触发组件重新渲染:', e);
      // e包含以下属性:
      // - target: 触发更新的对象
      // - type: 操作类型 (set, add等)
      // - key: 被修改的属性
      // - oldValue: 旧值
      // - newValue: 新值
    });
    
    function increment() {
      count.value++;
    }
    
    return {
      count,
      increment
    };
  }
}
```

## 生命周期钩子的使用场景对比

不同的生命周期钩子适用于不同的场景，下面对比Vue 2和Vue 3中各生命周期钩子的常见使用场景：

### 数据初始化

**Vue 2**:
```javascript
export default {
  data() {
    return {
      users: []
    }
  },
  created() {
    // 在created中初始化数据
    this.fetchUsers();
  },
  methods: {
    fetchUsers() {
      fetch('/api/users')
        .then(response => response.json())
        .then(data => {
          this.users = data;
        });
    }
  }
}
```

**Vue 3**:
```javascript
import { ref } from 'vue';

export default {
  setup() {
    const users = ref([]);
    
    // 在setup中初始化数据（相当于created）
    fetchUsers();
    
    function fetchUsers() {
      fetch('/api/users')
        .then(response => response.json())
        .then(data => {
          users.value = data;
        });
    }
    
    return {
      users
    };
  }
}
```

### DOM操作

**Vue 2**:
```javascript
export default {
  mounted() {
    // 在mounted中进行DOM操作
    this.$el.querySelector('input').focus();
    
    // 初始化需要DOM的库
    new Chart(this.$el.querySelector('#chart'), {
      // 配置...
    });
  }
}
```

**Vue 3**:
```javascript
import { ref, onMounted } from 'vue';

export default {
  setup() {
    const chartEl = ref(null);
    
    onMounted(() => {
      // 在onMounted中进行DOM操作
      document.querySelector('input').focus();
      
      // 使用模板引用
      if (chartEl.value) {
        new Chart(chartEl.value, {
          // 配置...
        });
      }
    });
    
    return {
      chartEl
    };
  }
}
```

### 事件监听器

**Vue 2**:
```javascript
export default {
  data() {
    return {
      windowWidth: window.innerWidth
    }
  },
  mounted() {
    // 添加事件监听器
    window.addEventListener('resize', this.handleResize);
  },
  beforeDestroy() {
    // 移除事件监听器
    window.removeEventListener('resize', this.handleResize);
  },
  methods: {
    handleResize() {
      this.windowWidth = window.innerWidth;
    }
  }
}
```

**Vue 3**:
```javascript
import { ref, onMounted, onBeforeUnmount } from 'vue';

export default {
  setup() {
    const windowWidth = ref(window.innerWidth);
    
    function handleResize() {
      windowWidth.value = window.innerWidth;
    }
    
    onMounted(() => {
      // 添加事件监听器
      window.addEventListener('resize', handleResize);
    });
    
    onBeforeUnmount(() => {
      // 移除事件监听器
      window.removeEventListener('resize', handleResize);
    });
    
    return {
      windowWidth
    };
  }
}
```

### 监视数据变化

**Vue 2**:
```javascript
export default {
  data() {
    return {
      searchQuery: '',
      searchResults: []
    }
  },
  watch: {
    searchQuery(newQuery, oldQuery) {
      this.fetchResults(newQuery);
    }
  },
  methods: {
    fetchResults(query) {
      // 获取搜索结果
    }
  }
}
```

**Vue 3**:
```javascript
import { ref, watch } from 'vue';

export default {
  setup() {
    const searchQuery = ref('');
    const searchResults = ref([]);
    
    // 使用watch监视数据变化
    watch(searchQuery, (newQuery, oldQuery) => {
      fetchResults(newQuery);
    });
    
    function fetchResults(query) {
      // 获取搜索结果
    }
    
    return {
      searchQuery,
      searchResults
    };
  }
}
```

### 缓存组件状态

**Vue 2**:
```javascript
export default {
  data() {
    return {
      scrollPosition: 0,
      isPlaying: false
    }
  },
  activated() {
    // 恢复状态
    window.scrollTo(0, this.scrollPosition);
    if (this.isPlaying) {
      this.startPlayback();
    }
  },
  deactivated() {
    // 保存状态
    this.scrollPosition = window.scrollY;
    this.isPlaying = this.videoIsPlaying();
    this.pausePlayback();
  },
  methods: {
    startPlayback() {
      // 开始播放
    },
    pausePlayback() {
      // 暂停播放
    },
    videoIsPlaying() {
      // 检查是否正在播放
      return true;
    }
  }
}
```

**Vue 3**:
```javascript
import { ref, onActivated, onDeactivated } from 'vue';

export default {
  setup() {
    const scrollPosition = ref(0);
    const isPlaying = ref(false);
    
    onActivated(() => {
      // 恢复状态
      window.scrollTo(0, scrollPosition.value);
      if (isPlaying.value) {
        startPlayback();
      }
    });
    
    onDeactivated(() => {
      // 保存状态
      scrollPosition.value = window.scrollY;
      isPlaying.value = videoIsPlaying();
      pausePlayback();
    });
    
    function startPlayback() {
      // 开始播放
    }
    
    function pausePlayback() {
      // 暂停播放
    }
    
    function videoIsPlaying() {
      // 检查是否正在播放
      return true;
    }
    
    return {
      scrollPosition,
      isPlaying
    };
  }
}
```

### 错误处理

**Vue 2**:
```javascript
export default {
  data() {
    return {
      error: null
    }
  },
  errorCaptured(err, vm, info) {
    // 处理错误
    this.error = `${err.message} (在${info}中)`;
    
    // 显示错误UI
    this.showErrorUI();
    
    // 阻止错误继续传播
    return false;
  },
  methods: {
    showErrorUI() {
      // 显示错误UI
    }
  }
}
```

**Vue 3**:
```javascript
import { ref, onErrorCaptured } from 'vue';

export default {
  setup() {
    const error = ref(null);
    
    onErrorCaptured((err, instance, info) => {
      // 处理错误
      error.value = `${err.message} (在${info}中)`;
      
      // 显示错误UI
      showErrorUI();
      
      // 阻止错误继续传播
      return false;
    });
    
    function showErrorUI() {
      // 显示错误UI
    }
    
    return {
      error
    };
  }
}
```

## 迁移策略

从Vue 2迁移到Vue 3时，生命周期钩子的迁移需要注意以下几点：

### 1. 钩子名称变化

将以下钩子名称更新为Vue 3中的新名称：

- `beforeDestroy` → `beforeUnmount`
- `destroyed` → `unmounted`

### 2. 选项式API到组合式API的迁移

如果决定使用组合式API，需要进行以下转换：

| Vue 2选项式API | Vue 3组合式API |
|---------------|---------------|
| beforeCreate | setup() |
| created | setup() |
| beforeMount | onBeforeMount() |
| mounted | onMounted() |
| beforeUpdate | onBeforeUpdate() |
| updated | onUpdated() |
| beforeDestroy | onBeforeUnmount() |
| destroyed | onUnmounted() |
| activated | onActivated() |
| deactivated | onDeactivated() |
| errorCaptured | onErrorCaptured() |

### 3. 迁移示例

**Vue 2组件**:
```javascript
export default {
  data() {
    return {
      count: 0,
      timer: null
    }
  },
  created() {
    console.log('组件创建');
  },
  mounted() {
    this.timer = setInterval(() => {
      this.count++;
    }, 1000);
  },
  beforeDestroy() {
    clearInterval(this.timer);
  }
}
```

**Vue 3选项式API**:
```javascript
export default {
  data() {
    return {
      count: 0,
      timer: null
    }
  },
  created() {
    console.log('组件创建');
  },
  mounted() {
    this.timer = setInterval(() => {
      this.count++;
    }, 1000);
  },
  beforeUnmount() {  // 名称变化
    clearInterval(this.timer);
  }
}
```

**Vue 3组合式API**:
```javascript
import { ref, onMounted, onBeforeUnmount } from 'vue';

export default {
  setup() {
    const count = ref(0);
    let timer = null;
    
    // created逻辑移到setup中
    console.log('组件创建');
    
    onMounted(() => {
      timer = setInterval(() => {
        count.value++;
      }, 1000);
    });
    
    onBeforeUnmount(() => {
      clearInterval(timer);
    });
    
    return {
      count
    };
  }
}
```

### 4. 混合使用选项式API和组合式API

Vue 3允许在同一个组件中混合使用选项式API和组合式API：

```javascript
import { ref, onMounted } from 'vue';

export default {
  // 选项式API
  data() {
    return {
      optionsCount: 0
    }
  },
  mounted() {
    console.log('选项式API mounted');
  },
  beforeUnmount() {
    console.log('选项式API beforeUnmount');
  },
  
  // 组合式API
  setup() {
    const setupCount = ref(0);
    
    onMounted(() => {
      console.log('组合式API onMounted');
    });
    
    return {
      setupCount
    };
  }
}
```

在这种混合使用的情况下，生命周期钩子的执行顺序是：

1. setup (组合式API)
2. beforeCreate (选项式API)
3. created (选项式API)
4. onBeforeMount (组合式API)
5. beforeMount (选项式API)
6. onMounted (组合式API)
7. mounted (选项式API)

其他生命周期钩子的执行顺序也类似，组合式API的钩子总是先于对应的选项式API钩子执行。

## 最佳实践

### Vue 2生命周期最佳实践

1. **在created中初始化数据和API调用**
   ```javascript
   export default {
     data() {
       return {
         users: []
       }
     },
     created() {
       this.fetchUsers();
     },
     methods: {
       fetchUsers() {
         // API调用
       }
     }
   }
   ```

2. **在mounted中进行DOM操作和第三方库初始化**
   ```javascript
   export default {
     mounted() {
       this.initChart();
     },
     methods: {
       initChart() {
         new Chart(this.$el.querySelector('#chart'), {
           // 配置
         });
       }
     }
   }
   ```

3. **在beforeDestroy中清理资源**
   ```javascript
   export default {
     data() {
       return {
         timer: null
       }
     },
     mounted() {
       this.timer = setInterval(() => {
         // 定时任务
       }, 1000);
     },
     beforeDestroy() {
       clearInterval(this.timer);
     }
   }
   ```

### Vue 3生命周期最佳实践

1. **选择合适的API风格**

   对于简单组件，选项式API可能更直观：
   ```javascript
   export default {
     data() {
       return {
         count: 0
       }
     },
     methods: {
       increment() {
         this.count++;
       }
     }
   }
   ```

   对于复杂组件，组合式API可能更有组织性：
   ```javascript
   import { useCounter } from './composables/counter';
   import { useUsers } from './composables/users';

   export default {
     setup() {
       const { count, increment } = useCounter();
       const { users, fetchUsers } = useUsers();
       
       return {
         count,
         increment,
         users,
         fetchUsers
       };
     }
   }
   ```

2. **使用组合式函数（Composables）封装生命周期逻辑**
   ```javascript
   // useWindowSize.js
   import { ref, onMounted, onBeforeUnmount } from 'vue';

   export function useWindowSize() {
     const width = ref(window.innerWidth);
     const height = ref(window.innerHeight);
     
     function handleResize() {
       width.value = window.innerWidth;
       height.value = window.innerHeight;
     }
     
     onMounted(() => {
       window.addEventListener('resize', handleResize);
     });
     
     onBeforeUnmount(() => {
       window.removeEventListener('resize', handleResize);
     });
     
     return {
       width,
       height
     };
   }

   // 在组件中使用
   import { useWindowSize } from './composables/useWindowSize';

   export default {
     setup() {
       const { width, height } = useWindowSize();
       
       return {
         width,
         height
       };
     }
   }
   ```

3. **使用`<script setup>`语法糖简化组合式API**
   ```vue
   <script setup>
   import { ref, onMounted } from 'vue';
   import { useWindowSize } from './composables/useWindowSize';

   // 直接在顶层编写代码，相当于在setup()函数中
   const count = ref(0);
   const { width, height } = useWindowSize();

   function increment() {
     count.value++;
   }

   onMounted(() => {
     console.log('组件已挂载');
   });
   </script>

   <template>
     <div>
       <p>Count: {{ count }}</p>
       <p>Window size: {{ width }} x {{ height }}</p>
       <button @click="increment">Increment</button>
     </div>
   </template>
   ```

4. **使用新增的调试钩子进行性能优化**
   ```javascript
   import { onRenderTracked, onRenderTriggered } from 'vue';

   export default {
     setup() {
       // 仅在开发环境中启用
       if (process.env.NODE_ENV === 'development') {
         onRenderTracked((e) => {
           console.log('组件渲染依赖追踪:', e);
         });
         
         onRenderTriggered((e) => {
           console.log('组件重新渲染触发:', e);
         });
       }
       
       return {};
     }
   }
   ```

## 总结

Vue 2和Vue 3的生命周期钩子在概念上保持一致，但Vue 3引入了以下变化：

1. **命名变化**：
   - `beforeDestroy` → `beforeUnmount`
   - `destroyed` → `unmounted`

2. **新增钩子**：
   - `onRenderTracked`
   - `onRenderTriggered`

3. **使用方式变化**：
   - Vue 2主要使用选项式API
   - Vue 3同时支持选项式API和组合式API
   - 组合式API中的生命周期钩子需要导入并在setup中调用

4. **功能等价性**：
   - `setup()` 函数替代了 `beforeCreate` 和 `created` 钩子
   - 其他钩子在两个版本中功能基本相同

5. **最佳实践变化**：
   - Vue 3鼓励使用组合式函数（Composables）封装和重用逻辑
   - `<script setup>` 语法糖简化了组合式API的使用

理解这些差异对于从Vue 2迁移到Vue 3，或者在新项目中选择合适的API风格至关重要。无论选择哪种API风格，生命周期钩子都是Vue组件开发中不可或缺的工具，掌握它们的使用将帮助你构建更健壮、更可维护的应用。

## 参考资料

- [Vue 3官方文档 - 生命周期钩子](https://v3.cn.vuejs.org/guide/composition-api-lifecycle-hooks.html)
- [Vue 2官方文档 - 实例生命周期钩子](https://cn.vuejs.org/v2/guide/instance.html#实例生命周期钩子)
- [Vue 3官方文档 - 从Vue 2迁移](https://v3.cn.vuejs.org/guide/migration/introduction.html)
```

这份文档详细对比了Vue 2和Vue 3的生命周期钩子，包括命名变化、使用方式、执行顺序、功能对比、使用场景以及迁移策略等方面。文档适合不同级别的开发者阅读，既有基础概念解释，也有高级使用技巧和最佳实践。