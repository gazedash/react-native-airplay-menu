# This library provides method to show AirPlay menu

## Usage

```js
<>
    <TouchableOpacity
        style={[styles.wrapper, styles.border]}
        onPress={() => this.menuRef && this.menuRef.showMenu()}
    >
        <Text style={styles.button}>Listen in AirPods</Text>
    </TouchableOpacity>

    <AirPlay
        ref={e => (this.menuRef = e)}
    />
</>
```
