@Component
export struct MainPage {
  @State message: string = 'Hello HAR'

  build() {
    Text(this.message)
      .fontSize(16)
      .fontWeight(FontWeight.Bold)
  }
}
