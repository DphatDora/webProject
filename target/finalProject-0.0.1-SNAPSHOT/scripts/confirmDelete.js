document.addEventListener("DOMContentLoaded", function () {
    const deleteButton = document.getElementById("delete-button");
    const deleteForm = document.getElementById("delete-form");
    const confirmDeleteButton = document.getElementById("confirm-delete");
    const confirmModal = new bootstrap.Modal(document.getElementById("confirmModal"));

    // Khi bấm nút xóa, mở modal xác nhận
    deleteButton.addEventListener("click", function () {
        confirmModal.show();
    });

    // Nếu xác nhận, submit form
    confirmDeleteButton.addEventListener("click", function () {
        deleteForm.submit();
    });
});