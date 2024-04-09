@extends('main')

@php
    $is_permitted = App\Models\Admin::isPermission('section') == 'true';
@endphp

@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card mb-4">

                <div class="card-header py-0 bg-primary">
                    <div class="d-flex align-items-center">
                        <h6 class="text-white">Image Slider</h6>

                        <div class="ms-auto mt-3">
                            <a href="{{ route('slider.create') }}"
                                class="btn btn-success {{ $is_permitted ? '' : 'disabled' }}">
                                <i class="fas fa-plus"></i> Add New
                            </a>
                        </div>
                    </div>
                </div>

                @if ($is_permitted)
                    <div class="card-body mt-n3">

                        <div class="row mb">
                            @foreach ($sliders as $slider)
                                <div class="col-xl-6 col-l-6 col-sm-4 p-2  bg-transparent">

                                    <div style="background-image: url(@if ($slider->image) {{ url($slider->image) }} @else {{ url('/images/placeholder.jpg') }} @endif);height:240px;background-size: cover;"
                                        class="border-radius-xl">

                                        <div class="card-body position-relative z-index-1 p-3">
                                            <h5 class="text-white text-sm mt-0 pb-0">Slider {{ $slider->slider }}</h5>
                                            <div class="mt-9">

                                                <div class="d-flex mt-3">
                                                    <div>
                                                        <a class="btn btn-icon-only btn-rounded btn-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"
                                                            href="{{ secure_url('/slider/' . $slider->id . '/edit') }}">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </a>
                                                    </div>

                                                    <div>
                                                        <button
                                                            class="btn btn-icon-only btn-rounded btn-danger mb-0 me-2 btn-sm d-flex align-items-center justify-content-center"
                                                            data-id="{{ $slider->id }}" data-toggle="modal"
                                                            data-target="#deleteModal">
                                                            <i class="far fa-trash-alt"></i>
                                                        </button>
                                                    </div>


                                                    <div class="form-switch align-items-center justify-content-center">
                                                        <input class="form-check-input status-switch" type="checkbox"
                                                            data-id="{{ $slider->id }}"
                                                            @if ($slider->status == 0) checked @endif>
                                                    </div>

                                                </div>

                                                <form action="{{ url('slider/' . $slider->id) }}" method="POST"
                                                    id="form-{{ $slider->id }}">
                                                    @method('DELETE')
                                                    @csrf
                                                    <input type="hidden" name="id" value="{{ $slider->id }}">
                                                </form>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            @endforeach

                        </div>

                    </div>

                    <div class="d-flex justify-content-center">{{ $sliders->links() }}</div>
                @else
                    <span> Sorry, You are not allowed on this page </span>
                @endif
            </div>
        </div>
    </div>
    </div>

    <div id="deleteModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <p>Are you sure you want to Delete ?</p>
                </div>
                <div class="modal-footer">

                    @if (Session::get('admin_type') == 'Demo')
                        <button class="btn btn-danger demo_action" data-dismiss="modal">Delete</button>
                    @else
                        <button id="delete_btn" class="btn btn-danger">Delete</button>
                    @endif

                    <button class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $("#deleteModal").on('show.bs.modal', function(e) {
            var id = e.relatedTarget.dataset.id;
            $("#delete_btn").attr("data-submit", id);
        });

        $("#delete_btn").on("click", function() {
            var id = $(this).data("submit");
            $("#form-" + id).submit();
        });

        $(".status-switch").change(function() {
            var checked = $(this).is(':checked');
            var id = $(this).data("id");

            $.ajax({
                type: "POST",
                url: "{{ secure_url('/slider-status') }}",
                data: {
                    checked: checked,
                    id: id
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {

                    if (checked) {
                        toastr.success("Image Activated");
                    } else {
                        toastr.success("Image Deactivated");
                    }
                },
                error(data) {
                    toastr.error(JSON.stringify(data));
                }

            });
        });

        $(document).ready(function() {
            create_custom_dropdowns();
        });
    </script>
@endsection
