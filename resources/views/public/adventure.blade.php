@include('layouts.header')
    <section class="content">
        <div class="container-fluid">
            <!-- Custom Content -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Category : Adventure
                            </h2>
                        </div>
                        <div class="body">
                            <div class="row">
                            @foreach($master_datas as $master_datum)
                                <div class="col-sm-6 col-md-3">
                                    <div class="thumbnail">
                                        <a href="{{ route('detail.id', ['id' => $master_datum->id]) }}" ><img src="{{ asset($master_datum->img) }}"></a>
                                        <div class="caption">
                                            <h3>{{ $master_datum->name }}</h3>
                                            <p>
                                                <b>Category : </b> {{ $master_datum->category }}<br/>
                                                <?php if($master_datum->user_rate==NULL){ ?>
                                                <div class="font-15">No Review</div>
                                                <?php }else{ ?>
                                                <span class="rating" data-default-rating="{{ $master_datum->avg_rate }}" disabled></span>
                                                ({{ $master_datum->user_rate }})<br/>
                                                <?php } ?>
                                                <span class="col-red" >IDR{{ number_format($master_datum->price,0) }}</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Custom Content -->
        </div>
    </section>
@include('layouts.footer') 
