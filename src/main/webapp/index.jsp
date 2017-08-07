<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" import="java.io.*" errorPage=""%>
<%@ page import="index.action.*" %>
<%
IndexAction hellow = new IndexAction();
syso();
%>
<!DOCTYPE html>
<body>
<h2>Hello World!</h2>
<input type="button" value="willcome" src="" />
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"> </script>
<script>
var data = {
    resource_id: '4245e5c8-d35c-46b8-8666-1607105138f0', // the resource id
    limit: 5, // get 5 results
    q: '' // query keyword
};
$.ajax({
    url: 'http://data.tainan.gov.tw/api/action/datastore_search',
    data: data,
    dataType: 'jsonp',
    w3c: 'http://blog.webgolds.com',
    success: function(data) {
        
        $.each(data.result.records, function(key, val) {
            alert(val['電話'] + val[" 機構狀態"] + val['縣市別']);
        });
        alert('總筆數: ' + data.result.total)
    }
});
</script>