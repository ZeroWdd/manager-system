layui.define(['layer', 'table'], function (exports) {
    var $ = layui.jquery;
    var layer = layui.layer;
    var table = layui.table;

    var treetable = {
        // ��Ⱦ���α��
        render: function (param) {
            // ������
            if (!treetable.checkParam(param)) {
                return;
            }
            // ��ȡ����
            if (param.data) {
                treetable.init(param, param.data);
            } else {
                $.getJSON(param.url, param.where, function (res) {
                    treetable.init(param, res.data);
                });
            }
        },
        // ��Ⱦ���
        init: function (param, data) {
            var mData = [];
            var doneCallback = param.done;
            var tNodes = data;
            // ����id��pid�ֶ�
            for (var i = 0; i < tNodes.length; i++) {
                var tt = tNodes[i];
                if (!tt.id) {
                    if (!param.treeIdName) {
                        layer.msg('����treeIdName����Ϊ��', {icon: 5});
                        return;
                    }
                    tt.id = tt[param.treeIdName];
                }
                if (!tt.pid) {
                    if (!param.treePidName) {
                        layer.msg('����treePidName����Ϊ��', {icon: 5});
                        return;
                    }
                    tt.pid = tt[param.treePidName];
                }
            }

            // �����ݽ�������
            var sort = function (s_pid, data) {
                for (var i = 0; i < data.length; i++) {
                    if (data[i].pid == s_pid) {
                        var len = mData.length;
                        if (len > 0 && mData[len - 1].id == s_pid) {
                            mData[len - 1].isParent = true;
                        }
                        mData.push(data[i]);
                        sort(data[i].id, data);
                    }
                }
            };
            sort(param.treeSpid, tNodes);

            // ��д����
            param.url = undefined;
            param.data = mData;
            param.page = {
                count: param.data.length,
                limit: param.data.length
            };
            param.cols[0][param.treeColIndex].templet = function (d) {
                var mId = d.id;
                var mPid = d.pid;
                var isDir = d.isParent;
                var emptyNum = treetable.getEmptyNum(mPid, mData);
                var iconHtml = '';
                for (var i = 0; i < emptyNum; i++) {
                    iconHtml += '<span class="treeTable-empty"></span>';
                }
                if (isDir) {
                    iconHtml += '<i class="layui-icon layui-icon-triangle-d"></i> <i class="layui-icon layui-icon-layer"></i>';
                } else {
                    iconHtml += '<i class="layui-icon layui-icon-file"></i>';
                }
                iconHtml += '&nbsp;&nbsp;';
                var ttype = isDir ? 'dir' : 'file';
                var vg = '<span class="treeTable-icon open" lay-tid="' + mId + '" lay-tpid="' + mPid + '" lay-ttype="' + ttype + '">';
                return vg + iconHtml + d[param.cols[0][param.treeColIndex].field] + '</span>'
            };

            param.done = function (res, curr, count) {
                $(param.elem).next().addClass('treeTable');
                $('.treeTable .layui-table-page').css('display', 'none');
                $(param.elem).next().attr('treeLinkage', param.treeLinkage);
                // ���¼����ɶ�body��
                /*$('.treeTable .treeTable-icon').click(function () {
                    treetable.toggleRows($(this), param.treeLinkage);
                });*/
                if (param.treeDefaultClose) {
                    treetable.foldAll(param.elem);
                }
                if (doneCallback) {
                    doneCallback(res, curr, count);
                }
            };

            // ��Ⱦ���
            table.render(param);
        },
        // ��������������
        getEmptyNum: function (pid, data) {
            var num = 0;
            if (!pid) {
                return num;
            }
            var tPid;
            for (var i = 0; i < data.length; i++) {
                if (pid == data[i].id) {
                    num += 1;
                    tPid = data[i].pid;
                    break;
                }
            }
            return num + treetable.getEmptyNum(tPid, data);
        },
        // չ��/�۵���
        toggleRows: function ($dom, linkage) {
            var type = $dom.attr('lay-ttype');
            if ('file' == type) {
                return;
            }
            var mId = $dom.attr('lay-tid');
            var isOpen = $dom.hasClass('open');
            if (isOpen) {
                $dom.removeClass('open');
            } else {
                $dom.addClass('open');
            }
            $dom.closest('tbody').find('tr').each(function () {
                var $ti = $(this).find('.treeTable-icon');
                var pid = $ti.attr('lay-tpid');
                var ttype = $ti.attr('lay-ttype');
                var tOpen = $ti.hasClass('open');
                if (mId == pid) {
                    if (isOpen) {
                        $(this).hide();
                        if ('dir' == ttype && tOpen == isOpen) {
                            $ti.trigger('click');
                        }
                    } else {
                        $(this).show();
                        if (linkage && 'dir' == ttype && tOpen == isOpen) {
                            $ti.trigger('click');
                        }
                    }
                }
            });
        },
        // ������
        checkParam: function (param) {
            if (!param.treeSpid && param.treeSpid != 0) {
                layer.msg('����treeSpid����Ϊ��', {icon: 5});
                return false;
            }

            if (!param.treeColIndex && param.treeColIndex != 0) {
                layer.msg('����treeColIndex����Ϊ��', {icon: 5});
                return false;
            }
            return true;
        },
        // չ������
        expandAll: function (dom) {
            $(dom).next('.treeTable').find('.layui-table-body tbody tr').each(function () {
                var $ti = $(this).find('.treeTable-icon');
                var ttype = $ti.attr('lay-ttype');
                var tOpen = $ti.hasClass('open');
                if ('dir' == ttype && !tOpen) {
                    $ti.trigger('click');
                }
            });
        },
        // �۵�����
        foldAll: function (dom) {
            $(dom).next('.treeTable').find('.layui-table-body tbody tr').each(function () {
                var $ti = $(this).find('.treeTable-icon');
                var ttype = $ti.attr('lay-ttype');
                var tOpen = $ti.hasClass('open');
                if ('dir' == ttype && tOpen) {
                    $ti.trigger('click');
                }
            });
        }
    };

    layui.link(layui.cache.base + 'treetable/treetable.css');

    // ��ͼ���а��¼�
    $('body').on('click', '.treeTable .treeTable-icon', function () {
        var treeLinkage = $(this).parents('.treeTable').attr('treeLinkage');
        if ('true' == treeLinkage) {
            treetable.toggleRows($(this), true);
        } else {
            treetable.toggleRows($(this), false);
        }
    });

    exports('treetable', treetable);
});
