@extends('main')

@php
    $is_permitted = App\Models\Admin::isPermission('category');
@endphp
@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card mb-4">
                <div class="card-header py-0 bg-primary">
                    <div class="d-flex align-items-center">
                        <h6 class="text-white">{{ ucfirst($type) }} Sub Category</h6>
                        <div class="ms-auto d-flex">

                        </div>
                        <div class="ms-auto mt-3 d-flex">
                            <form action="{{ url('category/search') }}" method="POST" class="ms-auto me-4">
                                @csrf
                                <input class="form-control" {{ $is_permitted ? '' : 'disabled' }} placeholder="Search"
                                    value="@if (!empty($search)) {{ $search }} @endif" type="text"
                                    name="search">
                                <input class="form-control" value="{{ $type }}" type="hidden" name="type">
                            </form>
                            <a href="{{ route('subcategory.create') }}"
                                class="btn btn-success {{ $is_permitted ? '' : 'disabled' }}">
                                <i class="fas fa-plus"></i>
                                Add Category
                            </a>
                        </div>
                    </div>
                </div>
                @if ($is_permitted == true)
                    <div class="card-body mt-n4">

                        <div class="row mb">

                            <!--start-->
                            <div class="table-responsive p-0">
                                <table class="table align-items-center mb-0">
                                    <thead>
                                        <tr>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                ID</th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Name
                                            </th>
                                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                Category</th>
                                            <th
                                                class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
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
                                        @foreach ($categories as $category)
                                            <tr>
                                                <td class="align-middle text-center text-sm">
                                                    <p class="text-xs font-weight-bold mb-0">{{ $category->id }}</p>
                                                </td>

                                                <td>
                                                    <div class="d-flex px-2 py-1">
                                                        <div>
                                                            <img src="{{ asset($category->image) }}"
                                                                class="avatar avatar-xl me-3" alt="user1">
                                                        </div>
                                                        <div class="d-flex flex-column justify-content-center">
                                                            <h6 class="mb-0 text-sm title">{{ $category->name }}</h6>

                                                        </div>
                                                    </div>
                                                </td>

                                                <td class="align-middle text-center">
                                                    <span
                                                        class="text-secondary text-xs font-weight-bold">{{ $category->category->name }}</span>
                                                </td>

                                                <td class="align-middle">
                                                    <div class="form-switch align-items-center justify-content-center">
                                                        <input class="form-check-input status-switch" type="checkbox"
                                                            data-id="{{ $category->id }}"
                                                            @if ($category->status == 0) checked @endif>
                                                    </div>
                                                </td>

                                                <td class="align-middle text-center">
                                                    <span
                                                        class="text-secondary text-xs font-weight-bold">{{ $category->created_at }}</span>
                                                </td>


                                                <td class="align-middle">
                                                    <div class="ms-auto text-end align-middle text-center text-sm">
                                                        <a href="#" data-id="{{ $category->id }}" data-toggle="modal"
                                                            data-target="#deleteModal"
                                                            class="btn btn-icon-only btn-rounded btn-danger"><i
                                                                class="far fa-trash-alt"></i></a>
                                                        <a class="btn btn-icon-only btn-rounded btn btn-success"
                                                            href="{{ secure_url('/subcategory/' . $category->id . '/edit') }}"><i
                                                                class="fas fa-pencil-alt"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <form action="{{ url('subcategory/' . $category->id) }}" method="POST"
                                                id="form-{{ $category->id }}">
                                                @method('DELETE')
                                                @csrf
                                                <input type="hidden" name="id" value="{{ $category->id }}">
                                            </form>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <!--end-->

                        </div>

                    </div>
                    @if (empty($search))
                        <div class="d-flex justify-content-center">{{ $categories->links() }}</div>
                    @endif
                @else
                    <span> You are not allowed on this page <span>
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
                url: "{{ secure_url('/subcategory-status') }}",
                data: {
                    checked: checked,
                    id: id
                },
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function(data) {

                    if (checked) {
                        toastr.success("Category Activated");
                    } else {
                        toastr.success("Category Deactivated");
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
