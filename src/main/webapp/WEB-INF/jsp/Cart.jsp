<%--
  Created by IntelliJ IDEA.
  User: arthurvartanyan
  Date: 1/29/18
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file = "header.jsp" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<div class="container py-2" style="width: 50rem">
    <table class="table table-hover">
        <thead class="thead-light">
        <tr>
            <th style="width: 40%">Title</th>
            <th style="width: 20%">Price</th>
            <th style="width: 15%">Quantity</th>
            <th style="width: 30%"></th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${not empty orderItems}">
        <c:forEach items="${orderItems}" var="orderItem">
        <tr>
            <td>
                <div class="row">
                    <div class="col-md-4">
                        <img src="${orderItem.picture}" class="w-100">

                    </div>
                    <div class="col-md-6">
                        <h4>${orderItem.name}</h4>
                        <p class="text-muted">${orderItem.weight}</p>
                    </div>
                </div>
            </td>
            <td>${orderItem.price}$</td>
            <td>
                <div class="row">
                    <div class="input-group">
                        <button type="button" class="btn btn-secondary" disabled="disabled" data-type="minus" data-field="quant[1]">
                            <span class="fa fa-minus"></span>
                        </button>
                        <input type="text" name="quant[1]" class="form-control input-number" value="1" min="1" max="10">
                        <button type="button" class="btn btn-secondary" data-type="plus" data-field="quant[1]">
                            <span class="fa fa-plus"></span>
                        </button>
                    </div>
                </div></td>
            <td style="text-align: center">
                <button class="btn btn-success">
                <span class="fa fa-check"></span>
            </button>
                <button class="btn btn-danger">
                    <span class="fa fa-times"></span>
                </button>
            </td>
        </tr>
    </c:forEach>
        </c:if>
        </tbody>
    </table>
    <hr/>
    <div class="row">
        <h5 class="col-md-4">
            You have ${fn:length(orderItems)} items in your cart
        </h5>
        <h4 class="col-md-5">
            Total amount: ${ordersTotalAmount}$
        </h4>
        <button class="btn btn-success col-md-2" style="margin-bottom: 10%">
            Submit All <span class="fa fa-check"></span>
        </button>
    </div>


</div>
<%@ include file = "footer.jsp" %>