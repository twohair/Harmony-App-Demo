@Component
export struct HelloHsp {
  @State message: string = 'Hello HSP Component'
  build(){
    Text(this.message)
      .fontSize(50)
      .fontWeight(FontWeight.Bold)
  }
}