package php.imap;

typedef ImapHeaders =
{
	var toaddress : String; // full to: line, up to 1024 characters
	var to : NativeArray; // an array of objects from the To: line, with the following properties: personal, adl, mailbox, and host
	var fromaddress : String; // full from: line, up to 1024 characters
	var from : NativeArray; // an array of objects from the From: line, with the following properties: personal, adl, mailbox, and host
	var ccaddress : String; // full cc: line, up to 1024 characters
	var cc : NativeArray; // an array of objects from the Cc: line, with the following properties: personal, adl, mailbox, and host
	var bccaddress : String; // full bcc: line, up to 1024 characters
	var bcc : NativeArray; // an array of objects from the Bcc: line, with the following properties: personal, adl, mailbox, and host
	var reply_toaddress : String; // full Reply-To: line, up to 1024 characters
	var reply_to : NativeArray; // an array of objects from the Reply-To: line, with the following properties: personal, adl, mailbox, and host
	var senderaddress : String; // full sender: line, up to 1024 characters
	var sender : NativeArray; // an array of objects from the Sender: line, with the following properties: personal, adl, mailbox, and host
	var return_pathaddress : String; // full Return-Path: line, up to 1024 characters
	var return_path : NativeArray; // an array of objects from the Return-Path: line, with the following properties: personal, adl, mailbox, and host
	var remail : String;
	var date : String; // The message date as found in its headers
	var Date : String; // Same as date
	var subject : String; // The message subject
	var Subject : String; // Same as subject
	var in_reply_to : String;
	var message_id : String;
	var newsgroups : String;
	var followup_to : String;
	var references : String;
	var Recent : String; // R if recent and seen, N if recent and not seen, ' ' if not recent.
	var Unseen : String; // U if not seen AND not recent, ' ' if seen OR not seen and recent
	var Flagged : String; // F if flagged, ' ' if not flagged
	var Answered : String; // A if answered, ' ' if unanswered
	var Deleted : String; // D if deleted, ' ' if not deleted
	var Draft : String; // X if draft, ' ' if not draft
	var Msgno : Int; // The message number
	var MailDate : String;
	var Size : Int; // The message size
	var udate : String; // mail message date in Unix time
	var fetchfrom : String; // from line formatted to fit fromlength characters
	var fetchsubject : String; // subject line formatted to fit subjectlength characters
}