﻿&НаКлиенте
Перем СчетчикОжиданияФоновогоФормированияОтчета;
&НаКлиенте
Перем ТаймаутОжиданияФоновогоФормированияОтчета;
&НаКлиенте
Перем ОжидатьЗакрытиеФормыДлительнойОперации;
&НаКлиенте
Перем ИмяТабличногоДокумента;
&НаКлиенте
Перем АдресТабличногоДокумента;
&НаКлиенте
Перем ТаймаутОжиданияОжиданияТекстаОбласти;

//начало текста модуля
//Спасибо @naa4sb и Ивану Корниенко за данный модуль.

#Область Служебные_функции_и_процедуры

&НаКлиенте
// контекст фреймворка Vanessa-ADD
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;

&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-ADD.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;

	ВсеТесты = Новый Массив;

	//описание параметров
	//пример вызова Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02)","ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом","Дано Открылось окно предупреждения с заголовком ""Заголовок"" и текстом ""Текст""","Шаг проверяет, что сейчас на экране появилось окно предупреждения.","UI.Всплывающие окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(Парам01,Парам02)","ТабличныйДокументФормыСИменемСталРавенМакетуСИменем","Дано Табличный документ формы с именем ""РеквизитТабличныйДокумент"" стал равен макету с именем ""ИмяМакета""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументСталРавенМакету(Парам01,Парам02)","ТабличныйДокументСталРавенМакету","Дано Табличный документ ""РеквизитТабличныйДокумент"" стал равен макету ""ИмяМакета""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументРавенМакету(Парам01,Парам02)","ТабличныйДокументРавенМакету","Дано Табличный документ ""РеквизитТабличныйДокумент"" равен макету ""ИмяМакета""","Шаг позволяет проверить, что табличный документ соответствует эталону. Макет ищется сначала в обработке фича файла, затем в каталоге проекта. Чтобы получить mxl файл из TestClient, в тонком клиенте будет сделана попытка сохранить табличный документ в файл. В Web клиенте он всегда будет считываться по ячейкам. Детали в справке, в разделе, посвященному сравнению табличного документа с эталоном.","UI.Табличный документ.Проверка значения табличного документа.Эталонный макет.Весь документ");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТабличныйДокументРавенМакетуПоШаблону(Парам01,Парам02)","ТабличныйДокументРавенМакетуПоШаблону","Дано Табличный документ ""РеквизитТабличныйДокумент"" равен макету ""ИмяМакета"" по шаблону","Шаг позволяет проверить, что табличный документ соответствует эталону. В значениях эталонного макета допускается использовать символы *. Макет ищется сначала в обработке фича файла, затем в каталоге проекта. Чтобы получить mxl файл из TestClient, в тонком клиенте будет сделана попытка сохранить табличный документ в файл. В Web клиенте он всегда будет считываться по ячейкам. Детали в справке, в разделе, посвященному сравнению табличного документа с эталоном.","UI.Табличный документ.Проверка значения табличного документа.Эталонный макет.Весь документ");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВПоследнемСообщенииTestClientЕстьСтрока(Парам01)","ВПоследнемСообщенииTestClientЕстьСтрока","Дано В последнем сообщении TestClient есть строка ""НужнаяСтрока""","Шаг позволяет проверить содержание самого нового сообщения пользователю.","UI.Сообщения пользователю");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01)","ВАктивномОкнеОткрыласьФормаСЗаголовком","Дано В активном окне открылась форма с заголовком ""Заголовок формы""","Шаг проверяет, что в активном окне есть нужная форма.","UI.Окна");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01)","ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд","Дано Ожидаем завершения фонового формирования отчета в течение ""10"" секунд","Шаг работает только когда TestManager и TestClient работают в одной и той же базе. Шаг ждёт указанное время, что завершились активные фоновые задания.","UI.Отчеты");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемЗавершенияФоновогоЗаданияИЗакрытияФормыДлительнойОперацииВТечениеСекунд(Парам01)","ОжидаемЗавершенияФоновогоЗаданияИЗакрытияФормыДлительнойОперацииВТечениеСекунд","Дано Ожидаем завершения фонового задания и закрытия формы длительной операции в течение ""10"" секунд","Шаг работает только когда TestManager и TestClient работают в одной и той же базе. Шаг ждёт указанное время, что завершились активные фоновые задания и закрылось окно отображения длительной операции.","UI.Отчеты");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(Парам01,Парам02,Парам03)","ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд","И я жду когда в табличном документе ""РеквизитТабличныйДокумент"" заполнится ячейка ""r4c2"" в течение 120 секунд","По таймеру проверяет, что указанная ячейка табличного документа не пустая.","UI.Табличный документ.Ожидание значения");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Парам01,Парам02)","ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд","Затем я жду, что в сообщениях пользователю будет подстрока ""Нужное мне значение"" в течении 30 секунд");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Парам01,Парам02)","ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд","Затем я жду, что в сообщениях пользователю будет подстрока ""Нужное мне значение"" в течение 30 секунд","Ждет появления в сообщениях пользователю подстроки в течение нужного времени","UI.Сообщения пользователю");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапоминаюЗначениеТабличногоДокументаКак(Парам01,Парам02)","ЯЗапоминаюЗначениеТабличногоДокументаКак","И я запоминаю значение табличного документа ""ИмяРеквизита"" как ""ИмяПеременной""","Сохраняет значение табличного документа в переменную Контекста.","UI.Табличный документ.Сохранить в переменную");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЗначенияТабличныхДокументовРавны(ТабПарам)","ЗначенияТабличныхДокументовРавны","И значения табличных документов равны","Шаг на вход принимает таблицу, к которой указаны имена переменных Контекста ранее полученных макетов.","UI.Табличный документ.Сравнить табличные документы");
    
    Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТекущаяФормаНеМодифицированна()","ТекущаяФормаНеМодифицированна","И текущая форма не модифицированна","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТекущаяФормаМодифицированна()","ТекущаяФормаМодифицированна","Тогда текущая форма модифицированна","","");

	Возврат ВсеТесты;
КонецФункции

&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции

&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции

#КонецОбласти



#Область Работа_со_сценариями

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт

КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт

КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Дано Открылось окно предупреждения с заголовком "Заголовок" и текстом "Текст"
//@ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02)
Процедура ОткрылосьОкноПредупрежденияСЗаголовкомИТекстом(Парам01,Парам02) Экспорт
	АктивноеОкно = КонтекстСохраняемый.ТестовоеПриложение.НайтиОбъект(Тип("ТестируемоеОкноКлиентскогоПриложения"), Парам01, , 5);
	Если АктивноеОкно = Неопределено Тогда
		ВызватьИсключение "Окно с заголовком " + Парам01 + " не найдено!";
	КонецЕсли;
	Ванесса.ЗапомнитьАктивноеОкно(АктивноеОкно);

	ФормаОкна = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"), Парам01,,5);
	Если ФормаОкна = Неопределено Тогда
		ВызватьИсключение "Форма окна с заголовком " + Парам01 + " не найдена!";
	КонецЕсли;
	ПолеПредупреждения = ФормаОкна.НайтиОбъект(Тип("ТестируемоеПолеФормы"), Парам02,,5);
	Если ПолеПредупреждения = Неопределено Тогда
		ВызватьИсключение "Предупреждение с текстом """ + Парам02 + """ не найдено!";
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Функция ПолучитьАктивноеОкноИзТестовоеПриложение()
	Возврат Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
КонецФункции

&НаКлиенте
//Дано Табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен макету с именем "ИмяМакета"
//@ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(Парам01,Парам02)
Процедура ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета,СравнениеПоШаблону = Ложь) Экспорт
	ТабДокБыло  = Ванесса.ПолучитьМакетОбработки(ИмяМакета);

	ЭлементТД   = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяРеквизита,Истина);
	ТабДокСтало = Ванесса.ПолучитьТабличныйДокументTestClient(ЭлементТД);
	Если СравнениеПоШаблону Тогда
		ДопПараметры = Новый Структура;
		ДопПараметры.Вставить("СравнениеПоШаблону",Истина);
	Иначе
		ДопПараметры = Новый Структура;
		ДопПараметры.Вставить("УнифицироватьПереносыСтрок");
	КонецЕсли;	 
	
	Попытка
		Ванесса.ПроверитьРавенствоТабличныхДокументовТолькоПоЗначениям(ТабДокБыло, ТабДокСтало,,,,ДопПараметры);
	Исключение
		ТекстИсключения = ОписаниеОшибки();
		Ванесса.УстановитьЗначенияТаблицДляСравнения(ТабДокБыло,ТабДокСтало);

		Ванесса.ПрикрепитьМакетКСценарию(ТабДокСтало,"ТекущееЗначениеМакета");
		Ванесса.ПрикрепитьМакетКСценарию(ТабДокБыло,"ЭталонноеЗначениеМакета");

		ВызватьИсключение ТекстИсключения;
	КонецПопытки;
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" стал равен "ИмяМакета"
//@ТабличныйДокументСталРавенМакету(Парам01,Парам02)
Процедура ТабличныйДокументСталРавенМакету(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета);
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" равен "ИмяМакета"
//@ТабличныйДокументРавенМакету(Парам01,Парам02)
Процедура ТабличныйДокументРавенМакету(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета);
КонецПроцедуры

&НаКлиенте
//Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ИмяМакета" по шаблону
//@ТабличныйДокументРавенМакетуПоШаблону(Парам01,Парам02)
Процедура ТабличныйДокументРавенМакетуПоШаблону(ИмяРеквизита, ИмяМакета) Экспорт
	ТабличныйДокументФормыСИменемСталРавенМакетуСИменем(ИмяРеквизита, ИмяМакета,Истина);
КонецПроцедуры

&НаКлиенте
//Дано В последнем сообщении TestClient есть строка "Стр"
//@ВПоследнемСообщенииTestClientЕстьСтрока( Стр )
Процедура ВПоследнемСообщенииTestClientЕстьСтрока( Стр ) Экспорт
	МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Если МассивСообщений.Количество() = 0 Тогда
		ВызватьИсключение "Не найдено ни одного сообщения пользователю!";
	КонецЕсли;
	Если Найти( НРег( МассивСообщений[ МассивСообщений.Количество() - 1 ]), НРег( Стр )) = 0 Тогда
		ВызватьИсключение "Строка <" + Стр + "> не найдена в последнем сообщении пользователю. Найдено: " + МассивСообщений[ МассивСообщений.Количество()- 1];
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
//Дано В активном окне открылась форма с заголовком "Заголовок формы"
//@ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01)
Процедура ВАктивномОкнеОткрыласьФормаСЗаголовком(Парам01) Экспорт
	АктивноеОкно = ПолучитьАктивноеОкноИзТестовоеПриложение();

	Ванесса.ОбработатьСменуАктивногоОкна();

	ОткрытаяФорма = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"), Парам01, , 15);
	Если ОткрытаяФорма = Неопределено Тогда
		ВызватьИсключение "Форма с заголовком " + Парам01 + " не найдена!";
	КонецЕсли;
КонецПроцедуры

&НаСервере
Функция ПроверитьЗавершениеФоновогоЗаданияНаСервере()
	СтруктураОтбора = Новый Структура();
	СтруктураОтбора.Вставить("Состояние",			СостояниеФоновогоЗадания.Активно);
	//СтруктураОтбора.Вставить("Начало",				ТекущаяДата() - 60);
	СтруктураОтбора.Вставить("РегламентноеЗадание",	Неопределено);
	МассивФоновыхЗаданий = ФоновыеЗадания.ПолучитьФоновыеЗадания(СтруктураОтбора);
	Для каждого ФоновоеЗадание Из МассивФоновыхЗаданий Цикл
		Сообщить(ФоновоеЗадание.Ключ);
		Сообщить(ФоновоеЗадание.Наименование);
		Сообщить(ФоновоеЗадание.Начало);
	КонецЦикла;
	Возврат МассивФоновыхЗаданий.Количество() = 0;
КонецФункции

&НаКлиенте
Процедура ПроверитьЗавершениеФоновогоЗадания()
	Если ПроверитьЗавершениеФоновогоЗаданияНаСервере() И (Не ОжидатьЗакрытиеФормыДлительнойОперации Или Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку("ДекорацияПоясняющийТекстДлительнойОперации",Истина,Ложь) = Неопределено) Тогда
		Ванесса.ПродолжитьВыполнениеШагов(Ложь);
		// Добавляем паузу в 1 секунду для отрисовки отчета в табличном документе после завершения фонового
		Ванесса.Sleep(1);
	Иначе
		СчетчикОжиданияФоновогоФормированияОтчета = СчетчикОжиданияФоновогоФормированияОтчета + 1;
		Если СчетчикОжиданияФоновогоФормированияОтчета > ТаймаутОжиданияФоновогоФормированияОтчета Тогда
			Ванесса.ПродолжитьВыполнениеШагов(Истина,"Превышение таймаутуа ожидания завершения фонового задания.");
		Иначе
			ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
//Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
//@ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01)
Процедура ОжидаемЗавершенияФоновогоФормированияОтчетаВТечениеСекунд(Парам01) Экспорт
	ТаймаутОжиданияФоновогоФормированияОтчета = Число(Парам01);
	СчетчикОжиданияФоновогоФормированияОтчета = 0;
	ОжидатьЗакрытиеФормыДлительнойОперации	  = Ложь;
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
КонецПроцедуры

&НаКлиенте
//Дано Ожидаем завершения фонового задания и закрытия формы длительной операции в течение "10" секунд
//@ОжидаемЗавершенияФоновогоЗаданияИЗакрытияФормыДлительнойОперацииВТечениеСекунд(Парам01)
Процедура ОжидаемЗавершенияФоновогоЗаданияИЗакрытияФормыДлительнойОперацииВТечениеСекунд(Парам01) Экспорт
	ТаймаутОжиданияФоновогоФормированияОтчета = Число(Парам01);
	СчетчикОжиданияФоновогоФормированияОтчета = 0;
	ОжидатьЗакрытиеФормыДлительнойОперации	  = Истина;
	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗавершениеФоновогоЗадания", 1, Истина);
КонецПроцедуры

&НаКлиенте
Процедура ПроверитьЗначениеЯчейкиТабличногоДокумента()
	Попытка
		ЭлементФормы = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяТабличногоДокумента,Истина);
	Исключение
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;

	ТекстОбласти = ЭлементФормы.ПолучитьТекстОбласти(АдресТабличногоДокумента);

	Если ЗначениеЗаполнено(ТекстОбласти) Тогда
		Ванесса.ПродолжитьВыполнениеШагов(Ложь);
	Иначе
		Если ТаймаутОжиданияОжиданияТекстаОбласти < ТекущаяДата() Тогда
			Ванесса.ПродолжитьВыполнениеШагов(Истина,"Ожидали, что ячейка <" + АдресТабличногоДокумента + "> будет заполнена.");
		Иначе
			ПодключитьОбработчикОжидания("ПроверитьЗначениеЯчейкиТабличногоДокумента", 1, Истина);
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
//И я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "r4c2" в течение 120 секунд
//@ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(Парам01,Парам02,Парам03)
Процедура ЯЖдуКогдаВТабличномДокументеЗаполнитсяЯчейкаВТечениеСекунд(ИмяТабДок,АдресЯчейки,КолСекунд) Экспорт
	ТаймаутОжиданияОжиданияТекстаОбласти      = ТекущаяДата() + Число(КолСекунд);
	ИмяТабличногоДокумента                    = ИмяТабДок;
	АдресТабличногоДокумента                  = АдресЯчейки;

	Ванесса.ЗапретитьВыполнениеШагов();
	ПодключитьОбработчикОжидания("ПроверитьЗначениеЯчейкиТабличногоДокумента", 1, Истина);
КонецПроцедуры

&НаКлиенте
//И текущая форма не модифицированна
//@ТекущаяФормаНеМодифицированна()
Процедура ТекущаяФормаНеМодифицированна() Экспорт
	
	ТекущаяФорма = Ванесса.НайтиТекущуюФормуTestClient();
	Если ТекущаяФорма = Неопределено Тогда
		ВызватьИсключение нСтр("ru='Не удалось найти текущую форму.'", "ru");
	КонецЕсли; 
	
	Ванесса.ПроверитьРавенство(ТекущаяФорма.ТекущаяМодифицированность(), Ложь);
	
КонецПроцедуры

&НаКлиенте
//Тогда текущая форма модифицированна
//@ТекущаяФормаМодифицированна()
Процедура ТекущаяФормаМодифицированна() Экспорт
	
	ТекущаяФорма = Ванесса.НайтиТекущуюФормуTestClient();
	Если ТекущаяФорма = Неопределено Тогда
		ВызватьИсключение нСтр("ru='Не удалось найти текущую форму.'", "ru");
	КонецЕсли; 
	
	Ванесса.ПроверитьРавенство(ТекущаяФорма.ТекущаяМодифицированность(), Истина);
	
КонецПроцедуры


&НаКлиенте
Процедура ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд()
	ИмяОбработчикаОжидания = "ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд";

	Попытка
		МассивСообщений = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение().ПолучитьТекстыСообщенийПользователю();
	Исключение
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;

	Для Каждого СообщениеПользователю Из МассивСообщений Цикл
		Если Найти(НРег(СообщениеПользователю),НРег(НужнаяПодстрокаВСообщениях)) > 0 Тогда
			ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
			Ванесса.ПродолжитьВыполнениеШагов();
			Возврат;
		КонецЕсли;
	КонецЦикла;


	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,"Ожидали, что в сообщениях пользователю будет подстрока <" + НужнаяПодстрокаВСообщениях + ">");
		Возврат;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
//Затем я жду, что в сообщениях пользователю будет подстрока "Нужное мне значение" в течении 30 секунд
//@ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КолСекунд)
Процедура ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КоличествоСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();

	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	КоличествоСекундОбработкаОжидания = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КоличествоСекунд);
	НужнаяПодстрокаВСообщениях        = Стр;
	ПодключитьОбработчикОжидания("ОбработичкЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд",1);
КонецПроцедуры

&НаКлиенте
//Затем я жду, что в сообщениях пользователю будет подстрока "Нужное мне значение" в течение 30 секунд
//@ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Стр,КолСекунд)
Процедура ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТечениеСекунд(Стр,КоличествоСекунд) Экспорт
	ЯЖдуЧтоВСообщенияхПользователюБудетПодстрокаВТеченииСекунд(Стр,КоличествоСекунд);
КонецПроцедуры

&НаКлиенте
//И я запоминаю значение табличного документа "РеквизитТабличныйДокумент" как "ТабДок1"
//@ЯЗапоминаюЗначениеТабличногоДокументаКак(Парам01,Парам02)
Процедура ЯЗапоминаюЗначениеТабличногоДокументаКак(ИмяРеквизита,ИмяПеременной) Экспорт
	ЭлементТД   = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяРеквизита,Истина);
	ТабДокСтало = Ванесса.ПолучитьТабличныйДокументTestClient(ЭлементТД);
	Контекст.Вставить(ИмяПеременной,ТабДокСтало);
КонецПроцедуры

&НаКлиенте
//И значения табличных документов равны
//@ЗначенияТабличныхДокументовРавны(ТабПарам)
Процедура ЗначенияТабличныхДокументовРавны(ТабПарам) Экспорт
	Если ТабПарам.Количество() < 2 Тогда
		ВызватьИсключение "В шаг необходимо передавать таблицу Gherkin, в которой 2 или более строк.";
	КонецЕсли;

	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ИмяПеременной = СтрокаТабПарам.Кол1;

		Если Не Контекст.Свойство(ИмяПеременной) Тогда
			ВызватьИсключение "В переменной Контекст не обнаружено ранее сохраненное значение с именем <" + ИмяПеременной + ">";
		КонецЕсли;
	КонецЦикла;

	ИмяПеременнойПервогоМакета = ТабПарам[0].Кол1;
	ПервыйМакет = Контекст[ИмяПеременнойПервогоМакета];

	ДопПараметры = Неопределено;

	Для Ккк = 1 По ТабПарам.Количество()-1 Цикл
		ИмяПеременнойТекущегоМакета = ТабПарам[Ккк].Кол1;
		ТекМакет = Контекст[ИмяПеременнойТекущегоМакета];

		Попытка
			Ванесса.ПроверитьРавенствоТабличныхДокументовТолькоПоЗначениям(ПервыйМакет, ТекМакет,,,,ДопПараметры);
		Исключение
			ВызватьИсключение "Табличный документ <" + ИмяПеременнойПервогоМакета + "> оказался неравен <" + ИмяПеременнойТекущегоМакета + ">." + Символы.ПС + ОписаниеОшибки();
		КонецПопытки;
	КонецЦикла;

КонецПроцедуры



СчетчикОжиданияФоновогоФормированияОтчета = 0;
ТаймаутОжиданияФоновогоФормированияОтчета = 0;
ОжидатьЗакрытиеФормыДлительнойОперации	  = Ложь;