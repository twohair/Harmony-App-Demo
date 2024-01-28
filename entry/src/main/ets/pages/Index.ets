import router from '@ohos.router';
import { MainPage } from "har"
@Entry
@Component
struct Index {
  @State message: string = 'Hello World1'
  @State handlePopup: boolean = false;

  build() {
    Row() {
      Column() {
        // Image($r("app.media.pic"))
        //   .width(200)
        MainPage()
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('Next')
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
          console.info(`Succeeded in clicking the 'Next' button.`)
          // 跳转到第二页
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })
        Button(){
          Text('to HSP')
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
          console.info(`Succeeded in clicking the 'to HSP' button.`)
          // 跳转到第二页
          router.pushUrl({ url: '@bundle:com.example.myapplication/HSP/ets/pages/HspIndex' }).then(() => {
            console.info('Succeeded in jumping to the HSP page.')
          }).catch((err) => {
            console.error(`Failed to jump to the HSP page.Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}