<details>
  <summary><mark><font color=darkred>不能在函数外let定义变量。</font></mark></summary>
  <pre><code>  
fn main() {
//这里两个let如果放在函数外面就会报错
    let shili1 = Struct1 {
        cnname: String::from("cnname1"),
        engname: String::from("engname1"),
    };    
    let shili2 = Struct2{
        cnname: String::from("cnname2"),
        jpname: String::from("jpname1"),
    };
    println!("Hello, world!");
    println!("this is 4 shili1, {}", shili1.trash());
    println!("this is 4 shili2, {}", shili2.trash());
}
pub trait Trait {
    fn trash(&self) -> String;
}
pub struct Struct1 {
    pub cnname: String,
    pub engname: String,
}
pub struct Struct2 {
    pub cnname: String,
    pub jpname: String,
}
impl Trait for Struct1 {
    fn trash(&self) -> String {
        format!("{}:{}", &self.cnname, &self.engname)
    }
}
impl Trait for Struct2 {
    fn trash(&self) -> String {
        format!("{}:{}", &self.cnname, &self.jpname)
    }
}
  </code></pre>
</details>

<details>
<summary><mark><font color=darkred>rust-analyzer插件用法</font></mark></summary>
<pre><code>
在指定工作区文件夹的父目录需有一个Cargo.toml文件，并指定子目录中的项目，不然无法使用自动显示类型等功能。Cargo.toml示例如下：
[workspace]
members = [
    'note-rust-yx/code/code08',
    'note-rust-yx/code/code08',
]
[profile.release]
lto = true
  </code></pre>
</details>

<details>
<summary><mark><font color=darkred>rust-fmt取消格式化时改变代码顺序</font></mark></summary>
<pre><code>
创建rustfmt.toml文件,并输入reorder_imports = false
![](images/2021-08-21-21-24-07.png)
  </code></pre>
</details>
