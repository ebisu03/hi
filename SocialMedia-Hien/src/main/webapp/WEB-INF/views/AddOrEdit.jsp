<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>ALOHCMUTE</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="/template/home.css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<!-- content-area------------ -->
<div class="row bg-light">
    <!-- leftSidebar -->
    <div class="leftSidebar col-3 ">
        <div class="advertisement bg-white mt-3 ms-3">
            <div class="advertisement__title d-flex m-2 pt-3 ps-3">
                <h6 class="mb-1" style="font-size: 14px;">Advertisement</h6>
            </div>
            <img src="/assets/Advertisement-img.png" alt="" class="advertisement__img me-2 ms-2 pe-3 ps-3 pb-3">
        </div>
        <div class="notification bg-white mt-3 ms-3">
            <div class="advertisement__title  m-2 pt-3 ps-3 d-flex">
                <i class="fa-solid fa-bell me-2"></i>
                <h6 class="mb-1 text-" >Notification</h6>
            </div>
            <div class="notification__content m-2 pt-3 ps-3 pb-3 d-flex">
                <h6 class="mb-1" style="font-size: 14px;">Nguyễn Chí Thanh đã nhắc đến bạn trong 1 bình luận</h6>

            </div>

        </div>
    </div>
    <!-- content-area -->
    <div class="content-area col-6 bg-white">
        <div class="writePost bg-white">
        <form action="/SaveOrUpdate" method="POST" enctype="multipart/form-data">
            <div class="writePost__userProfile d-flex m-2 pt-3 ps-3">
                <img src="/assets/avt-profile.png" alt="" class="writePost__userImg me-1">
                <div>
                    <h6 class="mb-1" style="font-size: 14px;" >${posts.postId}</h6>
                    <c:if test="${posts.edit}">
				        <!-- Hiển thị nội dung chỉnh sửa -->
				        <input type="hidden" name="edit" value="true">
				        <input type="hidden" name="postId" value="${posts.postId}">
				    </c:if>
                    <select class="form-select" name="privacyLevel" style="font-size: 10px;">
						  <option ${posts.privacyLevel == true ? 'selected': ''} value="true">Public</option>
						  <option ${posts.privacyLevel == false ? 'selected': ''} value="false">Private</option>
					</select>
                </div>
            </div>
                <div class="ms-4 me-5">
                    <input class="form-control" rows="3" id="writePost" name="content" value="${posts.content}" placeholder="Hôm nay của bạn như thế nào"></input>
                </div>
            <hr class="ms-4 me-5">
			<input type="file" class="ms-3 me-3 mb-3" name="imageData" id="file" accept="image/*">
            <button type="submit" class="btn btn-primary writePost__btnPost ms-3 me-3 mb-3 justify-content-between">Post</button>
          </form>
        </div>

        


    </div>
    <!-- rightSidebar -->
    <div class="rightSidebar col-3 bg-light ps-3">
        <p class="pt-2 m-2">Người liên Hệ</p>
        <hr>

        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>
        <div class="d-flex rightSidebar__user mb-2">
            <img src="/assets/avt-profile.png" alt="" class="rightSidebar__userImg me-2">
            <p class="rightSidebar__userName">Nguyễn Chí Thanh</p>
        </div>


    </div>
</div>
<script src="function.js"></script>
</body>
</html>