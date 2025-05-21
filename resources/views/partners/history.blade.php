<div style="padding: 10px; border: 2px solid black; margin: 10px">
        <h2>История реализации продукции {{$partner->name}}</h2>
        @foreach($partner_products as $partner_product)
            <div>
                <span>Дата продажи: {{ $partner_product->date }} |</span>
                <span>Количество продукции: {{ $partner_product->quantity }} |</span>
                <span>Название продукта: {{ $partner_product->name }}</span>
            </div>
        @endforeach
</div>
<a href="{{route('partners.index')}}" style="text-decoration: none; padding: 5px 10px;border: 2px solid black;height: fit-content; width: fit-content; background-color: #F4E8D3; color: #67BA80; font-size: 16px; margin: 10px">Вернуться к списку</a>
