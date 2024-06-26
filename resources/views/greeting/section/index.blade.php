@extends('main')

@php
    $is_permitted = App\Models\Admin::isPermission('section') == 'true';
@endphp
@section('content')
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <div class="row">
        <div class="col-12">
            <div class="card mb-4">

                <div class="card-header py-0 bg-primary">
                    <div class="d-flex align-items-center">
                        <h6 class="text-white">Greeting Section</h6>

                        <div class="ms-auto mt-3">
                            <a href="{{ route('greetingsection.create') }}"
                                class="btn btn-success {{ $is_permitted ? '' : 'disabled' }}">
                                <i class="fas fa-plus"></i> Add New</a>
                        </div>
                    </div>
                </div>
                <div class="card-body mt-n3">
                    @if ($is_permitted == true)
                        <div class="row mb">

                            <!--start-->
                            <div class="table-responsive p-0">
                                <table class="table align-items-center mb-0 sort">
                                    <thead>
                                        <tr>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Id</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Name
                                            </th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Status</th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Created</th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($sections as $section)
                                            <tr id="{{ $section->id }}">
                                                <td class="align-middle text-center text-sm">
                                                    <p class="text-xs font-weight-bold mb-0">{{ $section->id }}</p>
                                                </td>

                                                <td>
                                                    <h6 class="mb-0 text-sm title">{{ $section->name }}</h6>
                                                </td>


                                                <td class="align-middle">
                                                    <div class="form-switch align-items-center justify-content-center">
                                                        <input class="form-check-input status-switch" type="checkbox"
                                                            data-id="{{ $section->id }}"
                                                            @if ($section->status == 0) checked @endif>
                                                    </div>
                                                </td>

                                                <td class="align-middle text-center">
                                                    <span
                                                        class="text-secondary text-xs font-weight-bold">{{ date('d M, y', strtotime($section->created_at)) }}</span>
                                                </td>


                                                <td class="align-middle">
                                                    <div class="ms-auto text-end align-middle text-center text-sm">
                                                        <a class="btn btn-icon-only btn-rounded btn-warning"><i
                                                                class="fas fa-hand-paper"></i></a>
                                                        <a href="#" data-id="{{ $section->id }}" data-toggle="modal"
                                                            data-target="#deleteModal"
                                                            class="btn btn-icon-only btn-rounded btn-danger"><i
                                                                class="far fa-trash-alt"></i></a>
                                                        <a class="btn btn-icon-only btn-rounded btn-success"
                                                            href="{{ secure_url('/greetingsection/' . $section->id . '/edit') }}"><i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <form action="{{ url('greetingsection/' . $section->id) }}" method="POST"
                                                id="form-{{ $section->id }}">
                                                @method('DELETE')
                                                @csrf
                                                <input type="hidden" name="id" value="{{ $section->id }}">
                                            </form>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <!--end-->

                        </div>
                    @else
                        <span> You are not allowed on this page </span>
                    @endif
                </div>

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
        $(function() {
            $(".sort").sortable({
                items: "> tbody > tr",
                stop: function(event, ui) {
                    var parameter = $(this).sortable("toArray");
                    var position = [];
                    $.each(parameter, function(index, value) {
                        position.push(index + 1);
                    });
                    console.log(position, parameter);
                    $.ajax({
                        type: "POST",
                        url: "{{ secure_url('/greeting-section-order') }}",
                        data: {
                            position: JSON.stringify(position),
                            parameter: JSON.stringify(parameter)
                        },
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(data) {

                            toastr.success("Order saved successfull");

                        },
                        error(data) {
                            toastr.error(JSON.stringify(data));
                        }

                    });
                }
            });
        });
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
                url: "{{ secure_url('/greeting-section-status') }}",
                data: {
                    checked: checked,
                    id: id
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {

                    if (checked) {
                        toastr.success("Post Activated");
                    } else {
                        toastr.success("Post Deactivated");
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
