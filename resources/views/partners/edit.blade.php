<h1 style="margin: 10px">{{$partner->partnerType->name}} | {{$partner->name}}</h1>
<div style="padding: 10px; border: 2px solid black; margin: 10px">
    <h2>Общая информация о партнере | Редактирование партнёра</h2>
    <form action="{{ route('partners.update', $partner->id) }}" method="post" enctype="application/x-www-form-urlencoded">
        @csrf
        @method('PUT')
        @if($errors->any())
            <script>
                alert("Ошибка валидации")
            </script>
        @endif
        <div style="display: flex; flex-direction: column; gap: 5px">
            <label>Тип:</label>
            <select name="partner_type_id" required>
                @foreach($types as $type)
                    <option value="{{ $type->id }}" @if($type->id === $partner->partnerType->id) selected @endif>{{ $type->name }}</option>
                @endforeach
            </select>
            @error('partner_type_id')
            <p>{{ $message }}</p>
            @enderror
            <label for="director">Директор</label>
            <input type="text" name="director" value="{{$partner->director}}">
            @error('director')
            <p>{{ $message }}</p>
            @enderror
            <label for="email">Почта</label>
            <input type="email" name="email" value="{{$partner->email}}">
            @error('email')
            <p>{{ $message }}</p>
            @enderror
            <label for="phone">Телефон</label>
            <input type="text" name="phone" value="{{$partner->phone}}">
            @error('phone')
            <p>{{ $message }}</p>
            @enderror
            <label for="address">Адрес</label>
            <input type="text" name="address" value="{{$partner->address}}">
            @error('address')
            <p>{{ $message }}</p>
            @enderror
            <label for="inn">ИНН</label>
            <input type="text" name="inn" value="{{$partner->inn}}">
            @error('inn')
            <p>{{ $message }}</p>
            @enderror
            <label for="raiting">Рейтинг</label>
            <input type="number" min="1" max="10" name="raiting" value="{{$partner->raiting}}">
            @error('raiting')
            <p>{{ $message }}</p>
            @enderror
        </div>

        <button style="text-decoration: none; padding: 5px 10px;border: 2px solid black;height: fit-content; width: fit-content; background-color: #F4E8D3; color: #67BA80; font-size: 16px" type="submit">Обновить данные</button>
    </form>
</div>
<a href="{{route('partners.index')}}" style="text-decoration: none; padding: 5px 10px;border: 2px solid black;height: fit-content; width: fit-content; background-color: #F4E8D3; color: #67BA80; font-size: 16px; margin: 10px">Вернуться к списку</a>
