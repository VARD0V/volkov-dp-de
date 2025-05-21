-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 21 2025 г., 04:39
-- Версия сервера: 8.0.30
-- Версия PHP: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `volkov-dp-de`
--

-- --------------------------------------------------------

--
-- Структура таблицы `material_types`
--

CREATE TABLE `material_types` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `defective` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_types`
--

INSERT INTO `material_types` (`id`, `name`, `defective`) VALUES
(1, 'Тип материала 1\r\n', '0.10'),
(2, 'Тип материала 2\r\n', '0.95'),
(5, 'Тип материала 3\r\n', '0.28'),
(6, 'Тип материала 4\r\n', '0.55'),
(7, 'Тип материала 5\r\n', '0.34');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `director` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `inn` bigint NOT NULL,
  `raiting` int NOT NULL,
  `partner_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `name`, `director`, `email`, `phone`, `address`, `inn`, `raiting`, `partner_type_id`) VALUES
(1, 'База Строитель\r\n', 'Иванова Александра Полька', 'aleksandraivanova@ml.ru', '493 123 45 67', '652050, Кемеровская область, город Юрга, ул. Лесная, 15', 2222455179, 7, 2),
(2, 'Паркет 29\r\n', 'Петров Василий Петрович\r\n', 'vppetrov@vl.ru\r\n', '987 123 56 78\r\n', '164500, Архангельская область, город Северодвинск, ул. Строителей, 18\r\n', 3333888520, 7, 2),
(5, 'Стройсервис\r\n', 'Соловьев Андрей Николаевич\r\n', 'ansolovev@st.ru\r\n', '812 223 32 00\r\n', '188910, Ленинградская область, город Приморск, ул. Парковая, 21\r\n', 4440391035, 7, 3),
(6, 'Ремонт и отделка\r\n', 'Воробьева Екатерина Валерьевна\r\n', 'ekaterina.vorobeva@ml.ru\r\n', '444 222 33 11\r\n', '143960, Московская область, город Реутов, ул. Свободы, 51\r\n', 1111520857, 5, 4),
(8, 'кыеецуец', 'Иванова Александра Dolka', 'sgstet@gsds.ru', '493 123 32 67', '652010, Кемеровская область, город Gрга, ул. Лесная, 15', 2225315179, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `partner_products`
--

CREATE TABLE `partner_products` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `date` date NOT NULL,
  `product_id` int NOT NULL,
  `partners_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `partner_products`
--

INSERT INTO `partner_products` (`id`, `quantity`, `date`, `product_id`, `partners_id`) VALUES
(1, 15500, '2023-03-20', 1, 1),
(2, 12350, '2018-12-20', 3, 1),
(17, 37400, '2023-03-23', 4, 1),
(18, 35000, '2022-02-12', 2, 2),
(19, 1250, '2023-05-17', 5, 2),
(20, 1000, '2024-06-07', 3, 2),
(21, 7550, '2024-01-07', 1, 2),
(22, 7250, '2023-01-22', 1, 5),
(23, 2500, '2024-05-07', 2, 5),
(24, 59050, '2023-03-20', 4, 6),
(25, 37200, '2024-03-12', 3, 6),
(26, 4500, '2023-05-14', 5, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `partner_types`
--

CREATE TABLE `partner_types` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `partner_types`
--

INSERT INTO `partner_types` (`id`, `name`) VALUES
(1, 'ЗАО'),
(2, 'ООО'),
(3, 'ПАО'),
(4, 'ОАО');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `articul` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `product_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `articul`, `price`, `product_type_id`) VALUES
(1, 'Паркетная доска Ясень темный однополосная 14 мм\r\n', '8758385', '4456.90', 3),
(2, 'Инженерная доска Дуб Французская елка однополосная 12 мм\r\n', '8858958', '7330.99', 3),
(3, 'Ламинат Дуб дымчато-белый 33 класс 12 мм\r\n', '7750282', '1799.33', 1),
(4, 'Ламинат Дуб серый 32 класс 8 мм с фаской\r\n', '7028748', '3890.41', 1),
(5, 'Пробковое напольное клеевое покрытие 32 класс 4 мм\r\n', '5012543', '5450.59', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `product_types`
--

CREATE TABLE `product_types` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `coefficient` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `coefficient`) VALUES
(1, 'Ламинат\r\n', '2.35'),
(2, 'Массивная доска\r\n', '5.15'),
(3, 'Паркетная доска\r\n', '4.34'),
(4, 'Пробковое покрытие\r\n', '1.50');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_type_id` (`partner_type_id`);

--
-- Индексы таблицы `partner_products`
--
ALTER TABLE `partner_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `partners_id` (`partners_id`);

--
-- Индексы таблицы `partner_types`
--
ALTER TABLE `partner_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_type_id` (`product_type_id`);

--
-- Индексы таблицы `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `partner_products`
--
ALTER TABLE `partner_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `partner_types`
--
ALTER TABLE `partner_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`partner_type_id`) REFERENCES `partner_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `partner_products`
--
ALTER TABLE `partner_products`
  ADD CONSTRAINT `partner_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partner_products_ibfk_2` FOREIGN KEY (`partners_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
