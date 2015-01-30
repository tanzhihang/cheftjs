<grid>
    <div id="store_area"></div>
    <div id="search_area"></div>
    <div id="page_area"></div>
    <table class="table table-striped">
        <tr>
            <th width="18%">操作</th>
            <th width="5%"> # </th>
            <th each={opts.columns}>
                {label || column}
            </th>
        </tr>
        <tr each={d, i in data}>
            <td><span each={parent.opts.operates}><button onclick={parent.parent.event} id="{operate + parent.i}">{label}</button> </span></td>
            <td> {i + 1} </td>
            <td each={parent.opts.columns}>
                {parent.d[column]}
            </td>
        </tr>
    </table>

    @data = opts.data if opts.data
    if opts.store
        store = riot.mountTo @store_area, 'store', url: opts.store
        store.on 'list', =>
            @data = store.result
            @update()

    @event = (e) => @trigger e.item.operate, e.target.id.replace e.item.operate, ''

</grid>
