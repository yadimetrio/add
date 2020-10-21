﻿# language: ru

#https://github.com/vanessa-opensource/vanessa-behavior/issues/261

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree

Функционал: Проверка работы получения состояния Vanessa-ADD
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность получить состояние vanessa-add
	Чтобы я мог использовать эти данные в своих сценариях


	Сценарий: Проверка работы получения состояния Vanessa-ADD

		Когда Я открываю VanessaADD в режиме TestClient

		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПолучениеСостоянияVanessaADD"
		И в VanessaADD в TestClient я загружаю и выполняю сценарии
				И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-ADD TestClient
				И Я нажимаю на кнопку выполнить сценарии в Vanessa-ADD TestClient

		Тогда в VanessaADD в TestClient снипет заполнился верно
			И     таблица формы с именем "ДеревоТестов" стала равной:
				| 'Статус'  |
				| ''        |
				| ''        |
				| 'Success' |
				| 'Success' |
		И Я закрыл все окна клиентского приложения
		И я закрываю сеанс TESTCLIENT
