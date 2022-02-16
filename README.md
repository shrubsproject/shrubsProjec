# Games Keeper
Данное риложение реализовано для подсчета очков в настольной игре с сохранением прогресса игры между перезапусками приложения.
Приложение является упрощенной версией программы [**Games Keeper**](https://apps.apple.com/ru/app/games-keeper/id674138310#?platform=iphone)

# Технологии :pager:

* Язык - Swift
* MVVM - архитектура
* UIKit - верстка кодом
* Применение Protocol, Extension, Enum, Struct

# О приложении :tada:
<img src="https://github.com/shrubsproject/Games-Keeper/blob/main/shrubsProject/1.png" width="250"> <img src="https://github.com/shrubsproject/Games-Keeper/blob/main/shrubsProject/3.png" width="250">

### Описание

Здесь нас встречает стартовый экран его особенности:

* Кнопка **Cancel** — отображается, когда переход на экран произошел с другого экрана. При самом первом запуске ее нет.
* Удаление игрока по нажатию на иконку удаления
* Кнопка Start game, которая открывает экран Game Process. Если таблица с игроками пуста, то кнопка неактивна
* При нажатии на кнопку **Add player** открывается экран Add Player
__________________________________________________________________________
<img src="https://github.com/shrubsproject/Games-Keeper/blob/main/shrubsProject/2.png" width="250">

### Описание

На экране "Add Player" можно ввести имя игрока и сохранить его в общую таблицу игроков

**Элементы**

* Кнопка Back — возврат на предыдущий экран без добавления игрока в таблицу
* Кнопка Add — добавить нового игрока в таблицу и вернутся на предыдущий экран

__________________________________________________________________________
<img src="https://github.com/shrubsproject/Games-Keeper/blob/main/shrubsProject/4.png" width="250">

### Описание

Экран показывает очередность ходов и текущий счет в игре.  

Переключить текущего игрока можно:

* изменив количество очков у текущего игрока
* нажав на кнопку перехода хода
* свайпнув по ячейке игрока

**Хедер**

* Кнопка New game — открывает экран New game в виде модального окна
* Кнопка Results — открывает экран Results

**Таймер**

* Лейбл со временем, которое прошло с начала хода
* Кнопка Pause/Resume — останавливает и запускает таймер соответственно

**Управление счетом**

* Кнопки изменения очков:
    - при нажатии на кнопку количество очков у текущего игрока изменяется на значение, соответствующее нажатой кнопке, после этого ход переходит к следующему игроку
* Кнопки перехода хода следующему игроку без изменения счета
* Кнопка возврата хода к предыдущему игроку без изменения счета
* Минибар с первой буквой имени всех игроков. Указывает на текущего игрока
* Кнопка Undo — вернуть ход предыдущему игроку и отменить изменения его счета за предыдущий ход
 __________________________________________________________________________
<img src="https://github.com/shrubsproject/Games-Keeper/blob/main/shrubsProject/5.png" width="250">

### Описание

* Открывается при нажатии на кнопку Roll, показывает рандомный дайс от 1 до 6. Фон экрана заблюрен. При нажатии на экран происходит переход на экран Game Process

 __________________________________________________________________________
<img src="https://github.com/shrubsproject/Games-Keeper/blob/main/shrubsProject/6.png" width="250">

### Элементы

**Хедер**

* Кнопка New game — открывает экран New game
* Кнопка Resume — возвращает на экран Game Process

**Результаты**

- Текущий счет по всем игрокам. Сортировка результатов производится по счёту игроков. В случае равного счёте результаты сортируются по алфавиту
- Таблица со всеми изменениями счета за текущий период
