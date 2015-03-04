function sendMail{

     Write-Host "Sending Email"

     #SMTP server name
     $smtpServer = "smtp.xxxx.com"

     #Creating a Mail object
     $msg = new-object Net.Mail.MailMessage

     #Creating SMTP server object
     $smtp = new-object Net.Mail.SmtpClient($smtpServer)

     #Email structure 
     $msg.From = "fromID@xxxx.com"
     $msg.ReplyTo = "replyto@xxxx.com"
     $msg.To.Add("toID@xxxx.com")
     $msg.subject = "My Subject"
     $msg.body = "This is the email Body."

     #Sending email 
     $smtp.Send($msg)
  
}

#Calling function
sendMail
