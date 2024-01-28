import router from '@ohos.router'
@Entry
@Component
struct HspIndex {
  @State message: string = 'Hello HSP page'

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('Back')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9ffB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          try {
            router.back()
            console.info('Succeeded in returning to the origin page.')
          }catch (err){
            console.error(`Failed to return to the origin page.Code is ${err.code}, message is ${err.message}`)
          }
        })
      }.width('100%')
    }.height('100%')
  }
}