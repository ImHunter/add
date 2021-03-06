# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreIfNotIrfanView
@IgnoreOnLinux



Функционал: Создание скриншота всех сеансов 1С при возникновении ошибки

Как разработчик
Я хочу чтобы при запуске сценария при возникновении ошибки были сделаны скриншоты всех окнон 1С
Чтобы потом эти скриншоты были приложены к отчету Allure

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий с закрытием всех окон кроме "* Vanessa behavior"


Сценарий: Проверка изменения реквизита ТЧ

	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыСкриншотов"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И     В открытой форме я изменяю флаг "Формировать скриншот при ошибке"
	И     в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
	И     В открытой форме в поле "Консольная команда создания скриншотов" я ввожу команду для IrfanView 
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Behavior TestClient
	И в каталоге скриншотов появился хотя бы один скриншот
	