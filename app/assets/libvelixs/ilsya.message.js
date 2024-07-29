$(document).on('click', '.filemanagerilsya', function () {
  $('#modal-files').modal('show');
  files.init({
    body: '#modal-files .modal-body',
  });
});

$(document).on('click', '.getfiles-ilsya', function () {
  var src = $(this).data('url');
  $("input[name='media']").val(src);
  $('#modal-files').modal('hide');
});

$("select[name='message_type']").on('change', function () {
  var value = $(this).val();
  let html = '<div class="row">';
  switch (value) {
    case 'text':
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" rows="20" class="form-control" placeholder="Drop your message in here" required></textarea></div></div>';
      break;
    case 'textbill':
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" rows="20" class="form-control" required>Assalamu\'alaikum Wr. Wb.\nYth. Bapak/Ibu {name},\n\nSemoga Bapak/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin mengingatkan bahwa tagihan pembiayaan Bapak/Ibu sebesar Rp {billing} akan jatuh tempo pada tanggal {tgljt}.\n\nKami mengharapkan pembayaran dapat dilakukan sebelum atau pada tanggal jatuh tempo tersebut untuk menghindari denda keterlambatan. Pembayaran dapat dilakukan melalui:\n\nTransfer ke rekening Bank Syariah BSI dengan nomor rekening: xxxxxxx\nMelalui aplikasi mobile banking PT BPRS HIKMAH BAHARI\nDatang langsung ke kantor cabang terdekat\n\nJika Bapak/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\n\nTerima kasih atas perhatian dan kerjasama Bapak/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\n\nWassalamu\'alaikum Wr. Wb.\n</textarea></div></div>';
      break;
    case 'textbaghas':
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" rows="20" class="form-control" required>Assalamu\'alaikum Wr. Wb.\nYth. Bapak/Ibu {name},\n\nSemoga Bapak/Ibu selalu dalam keadaan sehat dan dalam lindungan Allah SWT. Kami dari PT BPRS Hikmah Bahari ingin menyampaikan bahwa bagi hasil bulan ini telah berhasil didistribusikan ke rekening Bapak/Ibu sebesar Rp {baghas}. \n\nJika Bapak/Ibu memiliki pertanyaan atau membutuhkan bantuan lebih lanjut, silakan menghubungi layanan pelanggan kami di nomor 123.\n\nTerima kasih atas perhatian dan kerjasama Bapak/Ibu. Semoga Allah SWT senantiasa memberikan keberkahan kepada kita semua.\n\nWassalamu\'alaikum Wr. Wb.\n</textarea></div></div>';
      break;
    case 'textbirthday':
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" rows="20" class="form-control" required>Assalamu\'alaikum Wr. Wb.\nYth.  Bapak/Ibu {name},\n\nSelamat milad ke {age}. Kami dari PT BPRS Hikmah Bahari mendoakan semoga tahun ini penuh dengan kebahagiaan dan kesuksesan. Terima kasih telah menjadi bagian dari keluarga kami.</textarea></div></div>';
      break;
    case 'media':
      html +=
        '<div class="col-12 col-xl-6 col-lg-6"><div class="mb-3"><label class="form-label">Media</label><div class="input-group"><input type="text" class="form-control" name="media" placeholder="Example : {{Hai|Hello}} {name}, your number is {number} registered at wisender.com" required><button class="btn btn-primary waves-effect filemanagerilsya" type="button">Upload</button></div></div></div>';
      html +=
        '<div class="col-12 col-xl-6 col-lg-6"><div class="mb-3"><label class="form-label">Media Mime</label><select name="media_type" required class="form-select"><option value="">-- Select One --</option><option value="image">Image</option><option value="video">Video</option><option value="audio">Audio</option><option value="file">File</option></select></div></div>';
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" rows="6" class="form-control"></textarea></div></div>';
      break;
    case 'button':
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" rows="6" class="form-control" required></textarea></div></div>';
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Footer</label><input name="footer" class="form-control" required autocomplete="off"></div></div>';
      tbody =
        '<tr><td><input type="text" name="btn_display[]" class="form-control" placeholder="Ex: Menu Click Me" required=""></td><td><input type="text" name="btn_id[]" placeholder="Ex: !menu" class="form-control" required=""></td><td><button class="btn btn-label-danger is-delete" type="button"><i class="ti ti-trash-x"></i></button></td></tr>';
      html +=
        '<div class="col-12"><div class="table_button_message table-btn"><div class="text-end"><button type="button" class="btn btn-label-primary is-add">Add Button</button></div><div class="table-responsive text-nowrap"><table class="table table-striped"><thead><tr><th>Display Text</th><th>Id</th><th>Action</th></tr></thead><tbody class="table-border-bottom-0 is-content">' +
        tbody +
        '</tbody></table></div></div></div>';
      break;
    case 'list':
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Title</label><input name="title" class="form-control" autocomplete="off"></div></div>';
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Message</label><textarea name="message" placeholder="Example : {{Hai|Hello}} {name}, your number is {number} registered at wisender.com" rows="6" class="form-control" required></textarea></div></div>';
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Footer</label><input name="footer" class="form-control" required autocomplete="off"></div></div>';
      html +=
        '<div class="col-12"><div class="mb-3"><label class="form-label">Button Text</label><input name="button_text" class="form-control" required placeholder="Click Here" autocomplete="off"></div></div>';
      tbody =
        '<tr><td><select name="type[]" class="form-select" required=""><option value="option">Option</option><option value="section">Section</option></select></td><td><input type="text" name="btn_display[]" class="form-control" placeholder="Ex: Menu Click Me" required=""></td><td data-input-btn-id><input type="text" name="btn_id[]" placeholder="Ex: !menu" class="form-control" required=""></td><td><button class="btn btn-label-danger is-delete" type="button"><i class="ti ti-trash-x"></i></button></td></tr>';
      html +=
        '<div class="col-12"><div class="table_button_message table-list-btn"><div class="text-end"><button type="button" class="btn btn-label-primary is-add">Add Button</button></div><div class="table-responsive text-nowrap"><table class="table table-striped"><thead><tr><th>Type</th><th>Display Text</th><th>Id</th><th>Action</th></tr></thead><tbody class="table-border-bottom-0 is-content">' +
        tbody +
        '</tbody></table></div></div></div>';
      break;
  }
  html += '</div>';

  $('#message-content').html(html);
});

// if name type[] change
$(document).on('change', '.table-list-btn select[name="type[]"]', function () {
  // if value section disable btn_id
  if ($(this).val() == 'section') {
    // hidden data-input-btn-id
    $(this).parent().parent().find('td[data-input-btn-id] input').hide();
    $(this)
      .parent()
      .parent()
      .find('td[data-input-btn-id]')
      .append('<div class="text-danger">-</div>');
    $(this).parent().parent().find('input[name="btn_id[]"]').val('Disabled');
  } else {
    // show
    $(this).parent().parent().find('td[data-input-btn-id] input').show();
    $(this).parent().parent().find('td[data-input-btn-id] div').remove();
    $(this).parent().parent().find('input[name="btn_id[]"]').val('');
  }
});

$(document).on('click', '.table-list-btn .is-add', function () {
  var html = '<tr>';
  html +=
    '<td><select name="type[]" class="form-select" required=""><option value="option">Option</option><option value="section">Section</option></select></td>';
  html +=
    '<td><input type="text" name="btn_display[]" class="form-control" required></td>';
  html +=
    '<td data-input-btn-id><input type="text" name="btn_id[]" class="form-control" required></td>';
  html +=
    '<td><button class="btn btn-label-danger is-delete" type="button"><i class="ti ti-trash-x"></i></button></td>';
  html += '</tr>';
  $('.table-list-btn .is-content').append(html);
});

$(document).on('click', '.table-btn .is-add', function () {
  var html = '<tr>';
  html +=
    '<td><input type="text" name="btn_display[]" class="form-control" required></td>';
  html +=
    '<td><input type="text" name="btn_id[]" class="form-control" required></td>';
  html +=
    '<td><button class="btn btn-label-danger is-delete" type="button"><i class="ti ti-trash-x"></i></button></td>';
  html += '</tr>';
  // max 3 button
  if ($('.table-btn .is-content tr').length == 3) {
    return Swal.fire({
      icon: 'info',
      text: 'You can only have 3 buttons.',
      customClass: {
        confirmButton: 'btn btn-primary',
      },
      buttonsStyling: false,
    });
  }
  $('.table-btn .is-content').append(html);
});

$(document).on('click', '.table_button_message .is-delete', function () {
  if ($('.table_button_message .is-content tr').length == 1) {
    return Swal.fire({
      icon: 'info',
      text: 'You must have at least one button.',
      customClass: {
        confirmButton: 'btn btn-primary',
      },
      buttonsStyling: false,
    });
  }
  $(this).parents('tr').remove();
});
