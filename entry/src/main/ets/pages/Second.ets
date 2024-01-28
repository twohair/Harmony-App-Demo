import router from '@ohos.router'
@Entry
@Component
struct Second {
  build(){
    Row(){
      Column(){
        Text('test').fontWeight(FontWeight.Bold).fontSize(50).fontColor('red')
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
            console.info('Succeeded in returning to the first page.')
          }catch (err){
            console.error(`Failed to return to the first page.Code is ${err.code}, message is ${err.message}`)
          }
        })
      }.width('100%')
    }.height('100%')
  }
}