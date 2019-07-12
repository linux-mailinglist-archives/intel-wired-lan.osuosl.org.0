Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A606664E9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2019 05:23:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 64B39882BB;
	Fri, 12 Jul 2019 03:23:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 53kPAobtU5x0; Fri, 12 Jul 2019 03:23:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91486882AF;
	Fri, 12 Jul 2019 03:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0504D1BF863
 for <intel-wired-lan@osuosl.org>; Fri, 12 Jul 2019 03:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0DA786276
 for <intel-wired-lan@osuosl.org>; Fri, 12 Jul 2019 03:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICyibeqCUeJ4 for <intel-wired-lan@osuosl.org>;
 Fri, 12 Jul 2019 03:23:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5290086448
 for <intel-wired-lan@osuosl.org>; Fri, 12 Jul 2019 03:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:To:
 From:Date:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g6qHUMf7DiTPPmpgYg0PcIOK7hqrNUudrhoZGO7+FmA=; b=wE8yTCuX4YFEuxhtuJnUtn8mC
 DCgWHoPT85xeuWnl6b+p/hL4VWwKF1OXKWCyTszsTMAd0U+g+S5Q3+vDcAUjt7Uh7necTKTSDAOfF
 KHS2xkhUT7TwXUUx+0zIU0l4/BRnyyDxMjbuM/9BRkx6emj5FJAdp3FC9vBxRXquhmr0YW7sF8nhj
 RdqIUy3xNmPD2J+7TplVDNT5Cuh/Maz/W2SBcDpFyA1LMgX820ZHP538+md7W2tsHVbiObbdupUtF
 STJVU3lYrM9vguSLCgO8RCy5HliS7O97/VcI0irnD8zVqhhvwP6oY34D6XPcdhJv6sWWHIuTRqgG+
 8U0jbZv/Q==;
Received: from [::1] (port=33380 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>) id 1hlm9j-0002p4-SX
 for intel-wired-lan@osuosl.org; Thu, 11 Jul 2019 23:23:31 -0400
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=_01404e32d91bfddbcad5187fb3017ca0"
Date: Fri, 12 Jul 2019 15:23:31 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: intel-wired-lan@osuosl.org
In-Reply-To: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
Message-ID: <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1hlm9j-0002p4-SX
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=_01404e32d91bfddbcad5187fb3017ca0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8;
 format=flowed

On 2019-07-11 18:50, I wrote:
> This might be a bit of a tricky question, but I'm not really sure
> where else to ask.  Please cc me on any replies or I might overlook
> them.
> 
> I'm using a system with an e1000e network driver which has been
> patched to bypass the regular Linux network stack (because it can get
> called from a Xenomai RT context, among other reasons -- although in
> my case I'm not doing that).  The complete source for the patched
> version of the code can be found here:
> 
> https://github.com/ribalda/ethercat/blob/master/devices/e1000e/netdev-4.9-ethercat.c
> (There are some minor changes to other files, but the majority of
> changes are only to this file.  You can see just the changes at
> https://gist.github.com/uecasm/5e36a15bda6ffd53079344fc443dcc5f/revisions
> .)
> 
> It was originally based on the in-kernel e1000e driver as of Linux
> 4.9.65.  (I'm not the person who originally made the patches, but I am
> the person who rebased them to kernel 4.9 and I'm the one trying to
> maintain them for newer kernel versions.  Though I'm also not the
> person who made that github repo.)
> 
> On a Debian system with kernel linux-image-4.9.0-4-rt-amd64 (4.9.65)
> installed, this works perfectly.  It also works perfectly with
> linux-image-4.9.0-8-rt-amd64 (4.9.110).
> 
> However, with kernel linux-image-4.9.0-9-rt-amd64 (4.9.168) installed
> (and no other changes to the system other than building the patched
> e1000e module against this kernel's headers), something weird happens
> when the driver is running in its alternate "ecdev" mode.
> 
> Specifically, when the module is initially loaded, it works as
> expected and can send/receive without problems.  When link is removed
> (by disconnecting the Ethernet cable), it detects this as expected.
> When link is restored, it detects this and reports it but is then
> unable to actually send any packets.  (Note: to send packets the
> external code calls the "ndo_start_xmit" operation directly, and to
> receive packets it calls "ec_poll".  Also note that it won't receive a
> packet unless it sends one first, due to the way that the network it's
> connected to works, so I can't tell if receives work or not when sends
> don't work.)  Unloading and reloading the module fixes this, even if
> the link is initially down and then reconnected after the module is
> reloaded.  (So perhaps the problem is something it does at the
> link-loss event?)
> 
> Occasionally, it does manage to survive one or two replugs before
> getting into the problem state.  But once there, no amount of
> replugging appears to recover it; only reloading the module.
> 
> I do know that when it's in the failure state (not actually sending
> packets), e1000_xmit_frame continues to get all the way to the bottom
> and return NETDEV_TX_OK.
> 
> Note that the e1000e code being used is still the code as shown in the
> link above, not the code as exists in Linux 4.9.168.  I did try
> rebasing the ethercat patches onto the new driver version, but this
> didn’t seem to change the behavior.
> 
> Also note that the bad behavior was observed on an I219-V and an
> I219-LM, but does not appear to happen with an 82571EB (these are the
> only devices I have handy at the moment).  The problem also doesn't
> occur when using the unpatched driver from 4.9.168 as a standard Linux
> network driver.
> 
> Obviously, something the patches are doing is causing problems, but it
> seems odd that the issue only occurs with certain hardware and with
> certain kernel versions.  Any ideas on what could be the cause and
> solution (or how to narrow it down further)?  I can easily make
> changes to the driver code; it's a lot harder to try kernel versions
> between the two above, however, but I might be able to do that too.

(I wouldn't normally quote that much, but I haven't seen this message 
appear on the mailing list yet, so I'm not sure if it got through or 
not.)

Another data point: on linux-image-4.9.0-8-rt-amd64 (4.9.110), which 
works ok with the code previously given, if I apply the attached patch 
(which is the rebase to bring the base driver up to date with 4.9.168) 
then the same problem occurs.

So *either* applying this patch or updating to 4.9.168 without applying 
this patch introduces the problem.

Making the further change below to the code fixes the problem in 
4.9.110, but not in 4.9.168:

--- a/netdev-4.9-ethercat.c
+++ b/netdev-4.9-ethercat.c
@@ -5407,7 +5407,7 @@ static void e1000_watchdog_task(struct w
  			 * reset the controller to flush the Tx packet buffers.
  			 */
  			if ((adapter->flags & FLAG_RX_NEEDS_RESTART) ||
-			    e1000_desc_unused(tx_ring) + 1 < tx_ring->count)
+			    (!adapter->ecdev && e1000_desc_unused(tx_ring) + 1 < 
tx_ring->count))
  				adapter->flags |= FLAG_RESTART_NOW;
  			else
  				pm_schedule_suspend(netdev->dev.parent,

Since this was mostly just a rebase error (you can see a similar change 
in the old location of this code), I'm not sure if this helps narrow 
down the source of the problem between 4.9.110 and 4.9.168 or not.  I'm 
still looking for ideas for that.

--=_01404e32d91bfddbcad5187fb3017ca0
Content-Transfer-Encoding: base64
Content-Type: text/x-diff;
 name=e1000e_problem.diff
Content-Disposition: attachment;
 filename=e1000e_problem.diff;
 size=7603

LS0tIGEvbmV0ZGV2LTQuOS1ldGhlcmNhdC5jCisrKyBiL25ldGRldi00LjktZXRoZXJjYXQuYwpA
QCAtMTIwMCw2ICsxMjAwLDcgQEAgc3RhdGljIHZvaWQgZTEwMDBlX3R4X2h3dHN0YW1wX3dvcmso
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCXN0cnVjdCBlMTAwMF9odyAqaHcgPSAmYWRhcHRl
ci0+aHc7CiAKIAlpZiAoZXIzMihUU1lOQ1RYQ1RMKSAmIEUxMDAwX1RTWU5DVFhDVExfVkFMSUQp
IHsKKwkJc3RydWN0IHNrX2J1ZmYgKnNrYiA9IGFkYXB0ZXItPnR4X2h3dHN0YW1wX3NrYjsKIAkJ
c3RydWN0IHNrYl9zaGFyZWRfaHd0c3RhbXBzIHNoaHd0c3RhbXBzOwogCQl1NjQgdHhzdG1wOwog
CkBAIC0xMjA4LDkgKzEyMDksMTQgQEAgc3RhdGljIHZvaWQgZTEwMDBlX3R4X2h3dHN0YW1wX3dv
cmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCiAJCWUxMDAwZV9zeXN0aW1fdG9faHd0c3Rh
bXAoYWRhcHRlciwgJnNoaHd0c3RhbXBzLCB0eHN0bXApOwogCi0JCXNrYl90c3RhbXBfdHgoYWRh
cHRlci0+dHhfaHd0c3RhbXBfc2tiLCAmc2hod3RzdGFtcHMpOwotCQlkZXZfa2ZyZWVfc2tiX2Fu
eShhZGFwdGVyLT50eF9od3RzdGFtcF9za2IpOworCQkvKiBDbGVhciB0aGUgZ2xvYmFsIHR4X2h3
dHN0YW1wX3NrYiBwb2ludGVyIGFuZCBmb3JjZSB3cml0ZXMKKwkJICogcHJpb3IgdG8gbm90aWZ5
aW5nIHRoZSBzdGFjayBvZiBhIFR4IHRpbWVzdGFtcC4KKwkJICovCiAJCWFkYXB0ZXItPnR4X2h3
dHN0YW1wX3NrYiA9IE5VTEw7CisJCXdtYigpOyAvKiBmb3JjZSB3cml0ZSBwcmlvciB0byBza2Jf
dHN0YW1wX3R4ICovCisKKwkJc2tiX3RzdGFtcF90eChza2IsICZzaGh3dHN0YW1wcyk7CisJCWRl
dl9rZnJlZV9za2JfYW55KHNrYik7CiAJfSBlbHNlIGlmICh0aW1lX2FmdGVyKGppZmZpZXMsIGFk
YXB0ZXItPnR4X2h3dHN0YW1wX3N0YXJ0CiAJCQkgICAgICArIGFkYXB0ZXItPnR4X3RpbWVvdXRf
ZmFjdG9yICogSFopKSB7CiAJCWRldl9rZnJlZV9za2JfYW55KGFkYXB0ZXItPnR4X2h3dHN0YW1w
X3NrYik7CkBAIC0xOTE5LDcgKzE5MjUsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgZTEwMDBfaW50
cihpbnQgX19hbHdheXNfdW51c2VkIGlycSwgdm9pZCAqZGF0YSkKIAkJCWFkYXB0ZXItPmZsYWdz
IHw9IEZMQUdfUkVTVEFSVF9OT1c7CiAJCX0KIAkJLyogZ3VhcmQgYWdhaW5zdCBpbnRlcnJ1cHQg
d2hlbiB3ZSdyZSBnb2luZyBkb3duICovCi0JCWlmICghYWRhcHRlci0+ZWNkZXYgJiYgIXRlc3Rf
Yml0KF9fRTEwMDBfRE9XTiwgJmFkYXB0ZXItPnN0YXRlKSkKKwkJaWYgKCF0ZXN0X2JpdChfX0Ux
MDAwX0RPV04sICZhZGFwdGVyLT5zdGF0ZSkpCiAJCQltb2RfdGltZXIoJmFkYXB0ZXItPndhdGNo
ZG9nX3RpbWVyLCBqaWZmaWVzICsgMSk7CiAJfQogCkBAIC0xOTU3LDE2ICsxOTYzLDIxIEBAIHN0
YXRpYyBpcnFyZXR1cm5fdCBlMTAwMF9tc2l4X290aGVyKGludCBfX2Fsd2F5c191bnVzZWQgaXJx
LCB2b2lkICpkYXRhKQogCXN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYgPSBkYXRhOwogCXN0cnVj
dCBlMTAwMF9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKIAlzdHJ1Y3Qg
ZTEwMDBfaHcgKmh3ID0gJmFkYXB0ZXItPmh3OworCXUzMiBpY3IgPSBlcjMyKElDUik7CiAKLQlo
dy0+bWFjLmdldF9saW5rX3N0YXR1cyA9IHRydWU7CisJaWYgKGljciAmIGFkYXB0ZXItPmVpYWNf
bWFzaykKKwkJZXczMihJQ1MsIChpY3IgJiBhZGFwdGVyLT5laWFjX21hc2spKTsKIAotCS8qIGd1
YXJkIGFnYWluc3QgaW50ZXJydXB0IHdoZW4gd2UncmUgZ29pbmcgZG93biAqLwotCWlmICghdGVz
dF9iaXQoX19FMTAwMF9ET1dOLCAmYWRhcHRlci0+c3RhdGUpKSB7Ci0JCWlmICghYWRhcHRlci0+
ZWNkZXYpCisJaWYgKGljciAmIEUxMDAwX0lDUl9MU0MpIHsKKwkJaHctPm1hYy5nZXRfbGlua19z
dGF0dXMgPSB0cnVlOworCQkvKiBndWFyZCBhZ2FpbnN0IGludGVycnVwdCB3aGVuIHdlJ3JlIGdv
aW5nIGRvd24gKi8KKwkJaWYgKCFhZGFwdGVyLT5lY2RldiAmJiAhdGVzdF9iaXQoX19FMTAwMF9E
T1dOLCAmYWRhcHRlci0+c3RhdGUpKQogCQkJbW9kX3RpbWVyKCZhZGFwdGVyLT53YXRjaGRvZ190
aW1lciwgamlmZmllcyArIDEpOwotCQlldzMyKElNUywgRTEwMDBfSU1TX09USEVSKTsKIAl9CiAK
KwlpZiAoIXRlc3RfYml0KF9fRTEwMDBfRE9XTiwgJmFkYXB0ZXItPnN0YXRlKSkKKwkJZXczMihJ
TVMsIEUxMDAwX0lNU19PVEhFUiB8IElNU19PVEhFUl9NQVNLKTsKKwogCXJldHVybiBJUlFfSEFO
RExFRDsKIH0KIApAQCAtMjA3Myw3ICsyMDg0LDYgQEAgc3RhdGljIHZvaWQgZTEwMDBfY29uZmln
dXJlX21zaXgoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCiAJCSAgICAgICBody0+aHdf
YWRkciArIEUxMDAwX0VJVFJfODI1NzQodmVjdG9yKSk7CiAJZWxzZQogCQl3cml0ZWwoMSwgaHct
Pmh3X2FkZHIgKyBFMTAwMF9FSVRSXzgyNTc0KHZlY3RvcikpOwotCWFkYXB0ZXItPmVpYWNfbWFz
ayB8PSBFMTAwMF9JTVNfT1RIRVI7CiAKIAkvKiBDYXVzZSBUeCBpbnRlcnJ1cHRzIG9uIGV2ZXJ5
IHdyaXRlIGJhY2sgKi8KIAlpdmFyIHw9IEJJVCgzMSk7CkBAIC0yMTY4LDcgKzIxNzgsNyBAQCBz
dGF0aWMgaW50IGUxMDAwX3JlcXVlc3RfbXNpeChzdHJ1Y3QgZTEwMDBfYWRhcHRlciAqYWRhcHRl
cikKIAlpZiAoc3RybGVuKG5ldGRldi0+bmFtZSkgPCAoSUZOQU1TSVogLSA1KSkKIAkJc25wcmlu
dGYoYWRhcHRlci0+cnhfcmluZy0+bmFtZSwKIAkJCSBzaXplb2YoYWRhcHRlci0+cnhfcmluZy0+
bmFtZSkgLSAxLAotCQkJICIlcy1yeC0wIiwgbmV0ZGV2LT5uYW1lKTsKKwkJCSAiJS4xNHMtcngt
MCIsIG5ldGRldi0+bmFtZSk7CiAJZWxzZQogCQltZW1jcHkoYWRhcHRlci0+cnhfcmluZy0+bmFt
ZSwgbmV0ZGV2LT5uYW1lLCBJRk5BTVNJWik7CiAJZXJyID0gcmVxdWVzdF9pcnEoYWRhcHRlci0+
bXNpeF9lbnRyaWVzW3ZlY3Rvcl0udmVjdG9yLApAQCAtMjE4NCw3ICsyMTk0LDcgQEAgc3RhdGlj
IGludCBlMTAwMF9yZXF1ZXN0X21zaXgoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCiAJ
aWYgKHN0cmxlbihuZXRkZXYtPm5hbWUpIDwgKElGTkFNU0laIC0gNSkpCiAJCXNucHJpbnRmKGFk
YXB0ZXItPnR4X3JpbmctPm5hbWUsCiAJCQkgc2l6ZW9mKGFkYXB0ZXItPnR4X3JpbmctPm5hbWUp
IC0gMSwKLQkJCSAiJXMtdHgtMCIsIG5ldGRldi0+bmFtZSk7CisJCQkgIiUuMTRzLXR4LTAiLCBu
ZXRkZXYtPm5hbWUpOwogCWVsc2UKIAkJbWVtY3B5KGFkYXB0ZXItPnR4X3JpbmctPm5hbWUsIG5l
dGRldi0+bmFtZSwgSUZOQU1TSVopOwogCWVyciA9IHJlcXVlc3RfaXJxKGFkYXB0ZXItPm1zaXhf
ZW50cmllc1t2ZWN0b3JdLnZlY3RvciwKQEAgLTIzMTIsNyArMjMyMiw4IEBAIHN0YXRpYyB2b2lk
IGUxMDAwX2lycV9lbmFibGUoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCiAKIAlpZiAo
YWRhcHRlci0+bXNpeF9lbnRyaWVzKSB7CiAJCWV3MzIoRUlBQ184MjU3NCwgYWRhcHRlci0+ZWlh
Y19tYXNrICYgRTEwMDBfRUlBQ19NQVNLXzgyNTc0KTsKLQkJZXczMihJTVMsIGFkYXB0ZXItPmVp
YWNfbWFzayB8IEUxMDAwX0lNU19MU0MpOworCQlldzMyKElNUywgYWRhcHRlci0+ZWlhY19tYXNr
IHwgRTEwMDBfSU1TX09USEVSIHwKKwkJICAgICBJTVNfT1RIRVJfTUFTSyk7CiAJfSBlbHNlIGlm
ICgoaHctPm1hYy50eXBlID09IGUxMDAwX3BjaF9scHQpIHx8CiAJCSAgIChody0+bWFjLnR5cGUg
PT0gZTEwMDBfcGNoX3NwdCkpIHsKIAkJZXczMihJTVMsIElNU19FTkFCTEVfTUFTSyB8IEUxMDAw
X0lNU19FQ0NFUik7CkBAIC0yMzgxLDggKzIzOTIsOCBAQCBzdGF0aWMgaW50IGUxMDAwX2FsbG9j
X3JpbmdfZG1hKHN0cnVjdCBlMTAwMF9hZGFwdGVyICphZGFwdGVyLAogewogCXN0cnVjdCBwY2lf
ZGV2ICpwZGV2ID0gYWRhcHRlci0+cGRldjsKIAotCXJpbmctPmRlc2MgPSBkbWFfYWxsb2NfY29o
ZXJlbnQoJnBkZXYtPmRldiwgcmluZy0+c2l6ZSwgJnJpbmctPmRtYSwKLQkJCQkJR0ZQX0tFUk5F
TCk7CisJcmluZy0+ZGVzYyA9IGRtYV96YWxsb2NfY29oZXJlbnQoJnBkZXYtPmRldiwgcmluZy0+
c2l6ZSwgJnJpbmctPmRtYSwKKwkJCQkJIEdGUF9LRVJORUwpOwogCWlmICghcmluZy0+ZGVzYykK
IAkJcmV0dXJuIC1FTk9NRU07CiAKQEAgLTM1ODMsNiArMzU5NCwxMiBAQCBzMzIgZTEwMDBlX2dl
dF9iYXNlX3RpbWluY2Eoc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIsIHUzMiAqdGltaW5j
YSkKIAogCXN3aXRjaCAoaHctPm1hYy50eXBlKSB7CiAJY2FzZSBlMTAwMF9wY2gybGFuOgorCQkv
KiBTdGFibGUgOTZNSHogZnJlcXVlbmN5ICovCisJCWluY3BlcmlvZCA9IElOQ1BFUklPRF85Nk1I
ejsKKwkJaW5jdmFsdWUgPSBJTkNWQUxVRV85Nk1IejsKKwkJc2hpZnQgPSBJTkNWQUxVRV9TSElG
VF85Nk1IejsKKwkJYWRhcHRlci0+Y2Muc2hpZnQgPSBzaGlmdCArIElOQ1BFUklPRF9TSElGVF85
Nk1IejsKKwkJYnJlYWs7CiAJY2FzZSBlMTAwMF9wY2hfbHB0OgogCQlpZiAoZXIzMihUU1lOQ1JY
Q1RMKSAmIEUxMDAwX1RTWU5DUlhDVExfU1lTQ0ZJKSB7CiAJCQkvKiBTdGFibGUgOTZNSHogZnJl
cXVlbmN5ICovCkBAIC00MjU1LDcgKzQyNzIsNyBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfdHJpZ2dl
cl9sc2Moc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCiAJc3RydWN0IGUxMDAwX2h3ICpo
dyA9ICZhZGFwdGVyLT5odzsKIAogCWlmIChhZGFwdGVyLT5tc2l4X2VudHJpZXMpCi0JCWV3MzIo
SUNTLCBFMTAwMF9JQ1NfT1RIRVIpOworCQlldzMyKElDUywgRTEwMDBfSUNTX0xTQyB8IEUxMDAw
X0lDU19PVEhFUik7CiAJZWxzZQogCQlldzMyKElDUywgRTEwMDBfSUNTX0xTQyk7CiB9CkBAIC00
MzIyLDcgKzQzMzksOCBAQCB2b2lkIGUxMDAwZV9kb3duKHN0cnVjdCBlMTAwMF9hZGFwdGVyICph
ZGFwdGVyLCBib29sIHJlc2V0KQogCiAJaWYgKGFkYXB0ZXItPmVjZGV2KSB7CiAJCWVjZGV2X3Nl
dF9saW5rKGFkYXB0ZXItPmVjZGV2LCAwKTsKLQl9IGVsc2UgeworCX0KKwllbHNlIHsKIAkJbmV0
aWZfY2Fycmllcl9vZmYobmV0ZGV2KTsKIAl9CiAKQEAgLTUxNzEsNyArNTE4OSw3IEBAIHN0YXRp
YyBib29sIGUxMDAwZV9oYXNfbGluayhzdHJ1Y3QgZTEwMDBfYWRhcHRlciAqYWRhcHRlcikKIAkJ
YnJlYWs7CiAJfQogCi0JaWYgKChyZXRfdmFsID09IEUxMDAwX0VSUl9QSFkpICYmIChody0+cGh5
LnR5cGUgPT0gZTEwMDBfcGh5X2lncF8zKSAmJgorCWlmICgocmV0X3ZhbCA9PSAtRTEwMDBfRVJS
X1BIWSkgJiYgKGh3LT5waHkudHlwZSA9PSBlMTAwMF9waHlfaWdwXzMpICYmCiAJICAgIChlcjMy
KENUUkwpICYgRTEwMDBfUEhZX0NUUkxfR0JFX0RJU0FCTEUpKSB7CiAJCS8qIFNlZSBlMTAwMF9r
bXJuX2xvY2tfbG9zc193b3JrYXJvdW5kX2ljaDhsYW4oKSAqLwogCQllX2luZm8oIkdpZ2FiaXQg
aGFzIGJlZW4gZGlzYWJsZWQsIGRvd25ncmFkaW5nIHNwZWVkXG4iKTsKQEAgLTUzODMsOCArNTQw
MSwxMyBAQCBzdGF0aWMgdm9pZCBlMTAwMF93YXRjaGRvZ190YXNrKHN0cnVjdCB3b3JrX3N0cnVj
dCAqd29yaykKIAkJCS8qIDgwMDBFUzJMQU4gcmVxdWlyZXMgYSBSeCBwYWNrZXQgYnVmZmVyIHdv
cmstYXJvdW5kCiAJCQkgKiBvbiBsaW5rIGRvd24gZXZlbnQ7IHJlc2V0IHRoZSBjb250cm9sbGVy
IHRvIGZsdXNoCiAJCQkgKiB0aGUgUnggcGFja2V0IGJ1ZmZlci4KKwkJCSAqCisJCQkgKiBJZiB0
aGUgbGluayBpcyBsb3N0IHRoZSBjb250cm9sbGVyIHN0b3BzIERNQSwgYnV0CisJCQkgKiBpZiB0
aGVyZSBpcyBxdWV1ZWQgVHggd29yayBpdCBjYW5ub3QgYmUgZG9uZS4gIFNvCisJCQkgKiByZXNl
dCB0aGUgY29udHJvbGxlciB0byBmbHVzaCB0aGUgVHggcGFja2V0IGJ1ZmZlcnMuCiAJCQkgKi8K
LQkJCWlmIChhZGFwdGVyLT5mbGFncyAmIEZMQUdfUlhfTkVFRFNfUkVTVEFSVCkKKwkJCWlmICgo
YWRhcHRlci0+ZmxhZ3MgJiBGTEFHX1JYX05FRURTX1JFU1RBUlQpIHx8CisJCQkgICAgZTEwMDBf
ZGVzY191bnVzZWQodHhfcmluZykgKyAxIDwgdHhfcmluZy0+Y291bnQpCiAJCQkJYWRhcHRlci0+
ZmxhZ3MgfD0gRkxBR19SRVNUQVJUX05PVzsKIAkJCWVsc2UKIAkJCQlwbV9zY2hlZHVsZV9zdXNw
ZW5kKG5ldGRldi0+ZGV2LnBhcmVudCwKQEAgLTU0MDcsMTQgKzU0MzAsNiBAQCBsaW5rX3VwOgog
CWFkYXB0ZXItPmdvdGNfb2xkID0gYWRhcHRlci0+c3RhdHMuZ290YzsKIAlzcGluX3VubG9jaygm
YWRhcHRlci0+c3RhdHM2NF9sb2NrKTsKIAotCS8qIElmIHRoZSBsaW5rIGlzIGxvc3QgdGhlIGNv
bnRyb2xsZXIgc3RvcHMgRE1BLCBidXQKLQkgKiBpZiB0aGVyZSBpcyBxdWV1ZWQgVHggd29yayBp
dCBjYW5ub3QgYmUgZG9uZS4gIFNvCi0JICogcmVzZXQgdGhlIGNvbnRyb2xsZXIgdG8gZmx1c2gg
dGhlIFR4IHBhY2tldCBidWZmZXJzLgotCSAqLwotCWlmICghYWRhcHRlci0+ZWNkZXYgJiYgIW5l
dGlmX2NhcnJpZXJfb2sobmV0ZGV2KSAmJgotCSAgICAoZTEwMDBfZGVzY191bnVzZWQodHhfcmlu
ZykgKyAxIDwgdHhfcmluZy0+Y291bnQpKQotCQlhZGFwdGVyLT5mbGFncyB8PSBGTEFHX1JFU1RB
UlRfTk9XOwotCiAJLyogSWYgcmVzZXQgaXMgbmVjZXNzYXJ5LCBkbyBpdCBvdXRzaWRlIG9mIGlu
dGVycnVwdCBjb250ZXh0LiAqLwogCWlmIChhZGFwdGVyLT5mbGFncyAmIEZMQUdfUkVTVEFSVF9O
T1cpIHsKIAkJc2NoZWR1bGVfd29yaygmYWRhcHRlci0+cmVzZXRfdGFzayk7CkBAIC01OTkyLDgg
KzYwMDcsOSBAQCBzdGF0aWMgbmV0ZGV2X3R4X3QgZTEwMDBfeG1pdF9mcmFtZShzdHJ1Y3Qgc2tf
YnVmZiAqc2tiLAogCQkJbW1pb3diKCk7CiAJCX0KIAl9IGVsc2UgewotCQlpZiAoIWFkYXB0ZXIt
PmVjZGV2KQorCQlpZiAoIWFkYXB0ZXItPmVjZGV2KSB7CiAJCQlkZXZfa2ZyZWVfc2tiX2FueShz
a2IpOworCQl9CiAJCXR4X3JpbmctPmJ1ZmZlcl9pbmZvW2ZpcnN0XS50aW1lX3N0YW1wID0gMDsK
IAkJdHhfcmluZy0+bmV4dF90b191c2UgPSBmaXJzdDsKIAl9CkBAIC02NzQ3LDYgKzY3NjMsNyBA
QCBzdGF0aWMgaW50IGUxMDAwZV9wbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKIAlzdHJ1
Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoZGV2KTsKIAlzdHJ1Y3QgbmV0X2RldmljZSAq
bmV0ZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwogCXN0cnVjdCBlMTAwMF9hZGFwdGVyICph
ZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKKwlpbnQgcmM7CiAKIAlpZiAoYWRhcHRlci0+
ZWNkZXYpCiAJCXJldHVybiAtRUJVU1k7CkBAIC02NzU1LDcgKzY3NzIsMTEgQEAgc3RhdGljIGlu
dCBlMTAwMGVfcG1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAKIAllMTAwMGVfcG1fZnJl
ZXplKGRldik7CiAKLQlyZXR1cm4gX19lMTAwMF9zaHV0ZG93bihwZGV2LCBmYWxzZSk7CisJcmMg
PSBfX2UxMDAwX3NodXRkb3duKHBkZXYsIGZhbHNlKTsKKwlpZiAocmMpCisJCWUxMDAwZV9wbV90
aGF3KGRldik7CisKKwlyZXR1cm4gcmM7CiB9CiAKIHN0YXRpYyBpbnQgZTEwMDBlX3BtX3Jlc3Vt
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCg==
--=_01404e32d91bfddbcad5187fb3017ca0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--=_01404e32d91bfddbcad5187fb3017ca0--
