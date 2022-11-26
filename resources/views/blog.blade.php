@extends('layouts.main')

@section('container')
<h3 class="mb-3 text-center">{{ $title }} </h3>

<div class="row mb-3 justify-content-center">
    <div class="col-md-6">
        <form action="/blog">
            @if (request('category'))
                <input type="hidden" name="category" value="{{ request('category') }}">
            @elseif (request('user'))
            <input type="hidden" name="user" value="{{ request('user') }}">
            @endif
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Search..." name="search">
                <button class="btn btn-warning" type="submit">Search</button>
              </div>
         </form>
    </div>
</div>
 
@if ($post->count())
    <div class="card mb-3 text-center">
             @if ($post[0]->image)
                <div style="max-height: 400px; overflow: hidden;">
                    <img class="image-fluid" src="{{ asset('storage/' . $post[0]->image) }}" alt="" srcset=""> 
                </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $post[0]->category->name }}" class="card-img-top" alt="..."> 
            @endif
           
            <div class="card-body">
                <p>
                <h3 class="card-title"><a href="/post/{{ $post[0]->slug }}" class="text-decoration-none text-dark">{{ $post[0]->title }}</a></h3>
                <small class="text-muted">
                By. <a class="text-decoration-none" href="/blog?user={{ $post[0]->user->username }}">{{ $post[0]->user->name }}</a>  in <a class="text-decoration-none" href="/blog?category={{ $post[0]->category->slug }}">{{ $post[0]->category->name }}</a> at {{ $post[0]->created_at->diffForHumans() }}</small>
            </p>
                <p class="card-text">{{ $post[0]->excerpt }}</p>
                <a class="text-decoration-none btn btn-warning" href="/post/{{ $post[0]->slug }}">Read more</a></h2>
            </div>
    </div>

<div class="container">
    <div class="row">
        @foreach ($post->skip(1) as $pos)
        <div class="col-md-4 mb-3">
            <div class="card" style="height: 37rem">
                <a class="text-decoration-none" href="/blog?category={{ $pos->category->slug }}">
                <div class="position-absolute px-2 py-1 text-white" style="background-color: rgba(0,0,0,0.7)">{{ $pos->category->name }}</div></a>
                @if ($pos->image)
                    <img class="img-fluid" src="{{ asset('storage/' . $pos->image) }}" alt="" srcset=""> 
                @else
                <img src="https://source.unsplash.com/500x400?{{ $pos->category->name }}" class="card-img-top" alt="...">
                @endif
                
                <div class="card-body">
                <a class="text-decoration-none text-dark" href="/post/{{ $pos->slug }}"><h5 class="card-title">{{ $pos->title }}</h5></a>
                <small class="text-muted">By. <a class="text-decoration-none" href="/blog?user={{ $pos->user->username }}">{{ $pos->user->name }}</a>  {{ $pos->created_at->diffForHumans() }}</a></small>
                <p class="card-text">{{ $pos->excerpt }}</p>
                </div>
                <div class="card-footer"><a href="/post/{{ $pos->slug }}" class="btn btn-warning">Read more</a></div>
                </div>
        </div>
        @endforeach
    </div>
</div>
@else
<p class="text-center fs-4">No Post Found.</p>
@endif

<div class="d-flex justify-content-end">
    {{ $post->links() }}
</div>
@endsection
