﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn837
@IgnoreOn836
@IgnoreOnWeb8310

@tree


Функционал: Я хочу работать с командным интерфейсом 1С 8.3.x

Как Разработчик я хочу
Чтобы у меня была библиотека для стандартных команд 1С при работе с UI 1С 8.3.x
чтобы я мог запускать автосгенерированные фичи по действиям пользователя без написания кода


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Работа с гиперссылкой
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	Когда в панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "111"
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	Тогда элемент формы с именем "Наименование" стал равен "111"
	И     В открытой форме я нажимаю на гиперссылку с заголовком "Гиперссылка"
	Тогда открылось окно "1С:Предприятие"
	И     В открытой форме я нажимаю на кнопку с заголовком "OK"
	Тогда открылось окно "Справочник1 (создание) *"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"



Сценарий: Работа с группой элементов формы
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	Когда в панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "111"
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	И     В открытой форме я сворачиваю группу с заголовком "СворачиваемаяГруппа"
	И     В открытой форме я разворачиваю группу с заголовком "СворачиваемаяГруппа"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"



Сценарий: Работа с иерархией групп справочников
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	Когда в панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "Тест"
#	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит2"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Группа2'      |

	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Код         | Наименование |
		| '000000008' | Группа2Элем2 |

	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Справочник1 (создание) *"

	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"

	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И пауза 2
	И     Есть элемент справочника "Справочник1" с наименованием "Тест" и  реквизитом "Реквизит2" равным "Группа2Элем2"


Сценарий: Основной сценарий работы с элементами формы
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     в панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
		| Код         | Наименование       |
		| '000000002' | Тестовый Элемент 2 |
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"
#	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит1"
	И     В открытой форме из выпадающего списка с именем "Реквизит1" я выбираю "ЗначениеПеречисления1"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1) *"
	И     В открытой форме в поле с именем "РеквизитЧисло" я ввожу текст 12.34
	И     В открытой форме в поле с именем "РеквизитСтрока" я ввожу текст "тест"
	И     В открытой форме в поле с именем "РеквизитДата" я ввожу текст "08.04.1981"
	И     я перехожу к следующему реквизиту
	И     В открытой форме я устанавливаю флаг с заголовком "Реквизит булево"
	И     В открытой форме я снимаю флаг с заголовком "Реквизит булево"
	И     В открытой форме я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме я меняю значение переключателя с заголовком "Реквизит переключатель" на "Первое значение"
	И     из выпадающего списка "Реквизит быстрый выбор" я выбираю "ТестовыйЭлемент20"


	#Работа с ТЧ

	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку с заголовком "Добавить"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит число" я ввожу текст 56.78
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "ТестСтрока"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит дата" я ввожу текст "11.09.1983"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я устанавливаю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я снимаю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я изменяю флаг с заголовком "Реквизит булево"
	#И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит быстрый выбор ТЧ" я выбираю "ТестовыйЭлемент20"
	И в таблице "ТабличнаяЧасть1" из выпадающего списка "Реквизит быстрый выбор ТЧ" я выбираю точное значение 'ТестовыйЭлемент20'
	И     элемент формы с именем "РеквизитБыстрыйВыбор" стал равен "ТестовыйЭлемент20"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита с заголовком "Реквизит справочник выбор из формы списка" из формы списка
	# ввод значения из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку

	И     В форме "Тестовый Элемент*" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки

	И     таблица "ТабличнаяЧасть1" стала равной по шаблону:
			| 'Реквизит справочник' | 'Реквизит строка' | 'Реквизит быстрый выбор ТЧ' | 'Реквизит число' | 'N' | 'Реквизит справочник выбор из формы списка' | 'Реквизит дата' | 'Реквизит булево' |
			| 'ТестовыйЭлемент21'   | 'ТестСтрока'      | 'ТестовыйЭлемент20'         | '56*78'          | '1' | 'ТестовыйЭлемент21'                         | '11.09.1983'    | 'Да'              |


	И     я перехожу к закладке "Вспомогательная"
	И     я нажимаю кнопку выбора у поля "Реквизит меню"
	И     я выбираю пункт меню "Товар"
	И     я нажимаю кнопку выбора у поля "Реквизит список"
	И     я выбираю из списка  "Тест"

	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И пауза 1
	И     Элемент Справочника1 с именем "Тестовый Элемент 2" записался корректно


Сценарий: Проверка состояния ТЧ
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     в панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
		| Код         | Наименование       |
		| '000000002' | Тестовый Элемент 2 |
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"

	# Первая строка
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку с заголовком "Добавить"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит число" я ввожу текст 56.78
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "ТестСтрока"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит дата" я ввожу текст "11.09.1983"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я устанавливаю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я снимаю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита с заголовком "Реквизит справочник выбор из формы списка" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку

	# Вторая строка
	Когда открылось окно "Тестовый Элемент * (Справочник1)"
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит число" я ввожу текст 12.58
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст "СтрокаТест"
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит дата"
	И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит дата" я ввожу текст "15.05.1987"
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит справочник"
	И     в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита "Реквизит справочник" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'      |
	| '000000006' | 'ТестовыйЭлемент20' |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку

	И     В форме "Тестовый Элемент * (Справочник1)" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки

	# Третья строка
	И     в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку "Добавить"
	И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит число" я ввожу текст 100
	И     я перехожу к следующему реквизиту
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит строка"
	И     в ТЧ "ТабличнаяЧасть1" в поле "Реквизит строка" я ввожу текст "Строка3"
	И     я перехожу к следующему реквизиту
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит дата"
	И     я перехожу к следующему реквизиту
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит справочник"
	И     я перехожу к следующему реквизиту
	И     в ТЧ "ТабличнаяЧасть1" я активизирую поле "Реквизит булево"
	И     в ТЧ "ТабличнаяЧасть1" я изменяю флаг "Реквизит булево"
	И     В форме "Тестовый Элемент * (Справочник1) *" в ТЧ "ТабличнаяЧасть1" я завершаю редактирование строки

	# полная проверка
	И     таблица "ТабличнаяЧасть1" содержит строки:
		| 'Реквизит булево' | 'N' | 'Реквизит число' | 'Реквизит справочник' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' |
		| 'Да'              | '1' | '56*78'          | 'ТестовыйЭлемент21'   | 'ТестСтрока'      | '11.09.1983'    | 'ТестовыйЭлемент21'                         |
		| 'Нет'             | '2' | '12*58'          | 'ТестовыйЭлемент20'   | 'СтрокаТест'      | '15.05.1987'    | ''                                          |
		| 'Да'              | '3' | '100*00'         | ''                    | 'Строка3'         | ''              | ''                                          |

	# смена порядка строк
	И     таблица "ТабличнаяЧасть1" содержит строки:
		| 'Реквизит булево' | 'N' | 'Реквизит число' | 'Реквизит справочник' | 'Реквизит строка' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' |
		| 'Нет'             | '2' | '12*58'          | 'ТестовыйЭлемент20'   | 'СтрокаТест'      | '15.05.1987'    | ''                                          |
		| 'Да'              | '3' | '100*00'         | ''                    | 'Строка3'         | ''              | ''                                          |
		| 'Да'              | '1' | '56*78'          | 'ТестовыйЭлемент21'   | 'ТестСтрока'      | '11.09.1983'    | 'ТестовыйЭлемент21'                         |


	# смена порядка строк + смена порядка столбцов
	И     таблица "ТабличнаяЧасть1" содержит строки:
		| 'Реквизит булево' | 'N' | 'Реквизит число' | 'Реквизит справочник' | 'Реквизит дата' | 'Реквизит справочник выбор из формы списка' | 'Реквизит строка' |
		| 'Нет'             | '2' | '12*58'          | 'ТестовыйЭлемент20'   | '15.05.1987'    | ''                                          | 'СтрокаТест'      |
		| 'Да'              | '3' | '100*00'         | ''                    | ''              | ''                                          | 'Строка3'         |
		| 'Да'              | '1' | '56*78'          | 'ТестовыйЭлемент21'   | '11.09.1983'    | 'ТестовыйЭлемент21'                         | 'ТестСтрока'      |

	# смена порядка строк + смена порядка столбцов + меньше колонок для проверки
	И     таблица формы с именем "ТабличнаяЧасть1" содержит строки:
		| 'Реквизит булево' | 'N' | 'Реквизит число' | 'Реквизит справочник' | 'Реквизит справочник выбор из формы списка' | 'Реквизит строка' |
		| 'Нет'             | '2' | '12*58'          | 'ТестовыйЭлемент20'   | ''                                          | 'СтрокаТест'      |
		| 'Да'              | '3' | '100*00'         | ''                    | ''                                          | 'Строка3'         |
		| 'Да'              | '1' | '56*78'          | 'ТестовыйЭлемент21'   | 'ТестовыйЭлемент21'                         | 'ТестСтрока'      |

	# смена порядка строк + смена порядка столбцов + меньше колонок для проверки + поиск только 1 строки
	И     таблица формы с именем "ТабличнаяЧасть1" содержит строки:
		| 'Реквизит булево' | 'N' | 'Реквизит число' | 'Реквизит справочник' | 'Реквизит справочник выбор из формы списка' | 'Реквизит строка' |
		| 'Да'              | '3' | '100*00'         | ''                    | ''                                          | 'Строка3'         |

	# смена порядка строк + смена порядка столбцов + меньше колонок для проверки + меньше строк
	И     таблица формы с именем "ТабличнаяЧасть1" содержит строки:
		| 'Реквизит булево' | 'N' | 'Реквизит число' | 'Реквизит справочник' | 'Реквизит справочник выбор из формы списка' | 'Реквизит строка' |
		| 'Да'              | '3' | '100*00'         | ''                    | ''                                          | 'Строка3'         |
		| 'Да'              | '1' | '56*78'          | 'ТестовыйЭлемент21'   | 'ТестовыйЭлемент21'                         | 'ТестСтрока'      |
	И     я нажимаю на кнопку "Записать и закрыть"
