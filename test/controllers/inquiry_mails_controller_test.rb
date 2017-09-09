require 'test_helper'

class InquiryMailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquiry_mail = inquiry_mails(:one)
  end

  test "should get index" do
    get inquiry_mails_url
    assert_response :success
  end

  test "should get new" do
    get new_inquiry_mail_url
    assert_response :success
  end

  test "should create inquiry_mail" do
    assert_difference('InquiryMail.count') do
      post inquiry_mails_url, params: { inquiry_mail: { content: @inquiry_mail.content, sender_email: @inquiry_mail.sender_email, sender_name: @inquiry_mail.sender_name, sender_phone: @inquiry_mail.sender_phone, user_id: @inquiry_mail.user_id } }
    end

    assert_redirected_to inquiry_mail_url(InquiryMail.last)
  end

  test "should show inquiry_mail" do
    get inquiry_mail_url(@inquiry_mail)
    assert_response :success
  end

  test "should get edit" do
    get edit_inquiry_mail_url(@inquiry_mail)
    assert_response :success
  end

  test "should update inquiry_mail" do
    patch inquiry_mail_url(@inquiry_mail), params: { inquiry_mail: { content: @inquiry_mail.content, sender_email: @inquiry_mail.sender_email, sender_name: @inquiry_mail.sender_name, sender_phone: @inquiry_mail.sender_phone, user_id: @inquiry_mail.user_id } }
    assert_redirected_to inquiry_mail_url(@inquiry_mail)
  end

  test "should destroy inquiry_mail" do
    assert_difference('InquiryMail.count', -1) do
      delete inquiry_mail_url(@inquiry_mail)
    end

    assert_redirected_to inquiry_mails_url
  end
end
