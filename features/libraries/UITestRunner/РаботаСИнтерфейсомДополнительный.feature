# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn837
@IgnoreOn836


Функционал: Я хочу работать с командным интерфейсом 1С 8.3.x
	Как Разработчик
	Я хочу, чтобы у меня был стандартный сценарий для работы с интерфейсом тестируемого приложения
	Чтобы я мог использовать его как вложенный сценарий


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	
	
Сценарий: Сравнение табличного документа в клиенте тестирования с макетом
	Когда я удаляю все элементы Справочника "Справочник3"
	И     В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник3"
	И     я нажимаю на кнопку "Создать"
	И     в поле "Наименование" я ввожу текст "111"
	И     я нажимаю на кнопку "Сформировать отчет"
	Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 4 КолКол 6
	И     Табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен макету с именем "МакетСправочник3"	
	И     Табличный документ "РеквизитТабличныйДокумент" равен макету "МакетСправочник4" по шаблону
	И     я нажимаю на кнопку "Записать и закрыть"

	
	
Сценарий: Открытие окна предупреждения
	И     В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	И     я нажимаю на кнопку "Создать"
	И     я перехожу к закладке "Проверка кнопок"
	И     я нажимаю на кнопку "Вывести предупреждение"
	Тогда Открылось окно предупреждения с заголовком "1С:Предприятие" и текстом "Текст предупреждение!"
	И     я нажимаю на кнопку "OK"
	И     в поле с именем "Наименование" я ввожу текст "111"
	И     я нажимаю на кнопку "Записать и закрыть"
	
Сценарий: Проверка модифицированности формы

	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	Когда в поле с именем 'Наименование' я ввожу текст 'наименование'
	И я нажимаю на кнопку 'Записать'
	Тогда текущая форма не модифицированна
	Когда в поле с именем 'Наименование' я ввожу текст 'новое наименование'
	И я перехожу к следующему реквизиту
	Тогда текущая форма модифицированна
	И я нажимаю на кнопку 'Записать'
	И Я закрываю текущее окно


#Сценарий: Проверка последнего сообщения (в панели сообщений пользователю) на содержание текста
#	Когда я удаляю все элементы Справочника "Справочник3"
#	И     В панели разделов я выбираю "Основная"
#	И     В панели функций я выбираю "Справочник3"
#	И     я нажимаю на кнопку "Создать"
#	И     в поле "Наименование" я ввожу текст "111"
#	И     я нажимаю на кнопку "Сделать служебное сообщение"
#	И     Пауза 1
#	И     В последнем сообщении TestClient есть строка "Служебное сообщение!"
#	И     я нажимаю на кнопку "Записать и закрыть"

Сценарий: Проверка открытия формы
	Когда я удаляю все элементы Справочника "Справочник3"
	И     В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник3"
	И     я нажимаю на кнопку "Создать"
	И     в поле "Наименование" я ввожу текст "111"
	Тогда В активном окне открылась форма с заголовком "Справочник3 (создание)*"
	И     я нажимаю на кнопку "Записать и закрыть"

#Сценарий: Ожидание формирование отчета в фоновом задании
#	Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд