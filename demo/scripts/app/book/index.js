module.exports = {
    events: {
        init: function() {
            this.title = this.opts.title || '';

            this.title = '选择';
        }
    },
    actions: {
        show: function() {
            this.dialog.className = 'c-dialog show';
        },
        close: function() {
            this.dialog.className = 'c-dialog';
        }
    }
};
