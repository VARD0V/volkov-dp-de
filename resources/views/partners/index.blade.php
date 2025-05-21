<div style="display: flex; gap: 15px; align-items: center">
    <img style="margin: 10px" src="/public/assets/images/Мастер%20пол.png" alt="логотип">
    <a href="{{route('partners.create')}}" style="text-decoration: none; padding: 5px 10px;border: 3px solid black;height: fit-content; width: fit-content; background-color: #F4E8D3; color: #67BA80; font-size: 24px">Создать партнера</a>
</div>
<div style="display: flex; flex-direction: column; gap: 20px; border: black 1px solid; padding: 40px">
@foreach($partners as $partner)
    <div style="border: 1px black solid; padding: 20px">
        <div>
            <div>
                <a style="text-decoration: none; font-size: 24px; color: black" href="{{ route('partners.edit', $partner) }}">{{$partner->partnerType->name}} | {{$partner->name}}</a>
            </div>
            <div style="display: flex;flex-direction: column">
                <span>{{$partner->director}}</span>
                <span>+7 {{$partner->phone}}</span>
                <span>Рейтинг: {{$partner->raiting}}</span>
            </div>
        </div>
        <a href="{{route('partners.history', $partner)}}" style="text-decoration: none; padding: 5px 10px;border: 2px solid black;height: fit-content; width: fit-content; background-color: #F4E8D3; color: #67BA80; font-size: 16px; margin: 10px; display: inline-block">Посмотреть историю реализации продукции</a>
    </div>
@endforeach
</div>
