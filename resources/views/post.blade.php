@extends('layouts.main')

@section('container')
<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h3 class="mb-3">{{ $post->title }}</h3>
            <p>By. <a class="text-decoration-none" href="/authors/{{ $post->user->username }}">{{ $post->user->name }}</a> in <a class="text-decoration-none" href="/blog?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>
            @if ($post->image)
            <div style="max-height: 350px; overflow: hidden;">
            <img class="image-fluid" src="{{ asset('storage/' . $post->image) }}" alt="" srcset=""> 
            </div>
            @else
            <img class="image-fluid" src="https://source.unsplash.com/700x400?{{ $post->category->name }}" alt="" srcset="">  
            @endif
            <article class="py-3">
                {!! $post->body !!}
            </article>
        <a href="/blog" class="btn btn-warning">Back to post</a>
        </div>
    </div>
</div>
        
@endsection