///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2017-2018, ООО 1С-Софт
// Все права защищены. Эта программа и сопроводительные материалы предоставляются 
// в соответствии с условиями лицензии Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
// Текст лицензии доступен по ссылке:
// https://creativecommons.org/licenses/by-sa/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)

	ЭтоWindowsСервер = ОбщегоНазначенияПовтИсп.ЭтоWindowsСервер();
	
	Если ЭтоWindowsСервер И НЕ ПустаяСтрока(ЭтотОбъект.Значение)
		И СтрНайти(ЭтотОбъект.Значение, "%ВерсияПлатформы%") = 0 Тогда
		ОбщегоНазначенияКлиентСервер.СообщитьПользователю(
			НСтр("ru = 'В пути к версиям необходимо использовать <%ВерсияПлатформы%> для подстановки версии платформы.'"),
			,
			"ПутьКВерсиямПлатформыНаСервере",
			"НаборКонстант", 
			Отказ);
	КонецЕсли; 
 
КонецПроцедуры

#КонецОбласти

#КонецЕсли
