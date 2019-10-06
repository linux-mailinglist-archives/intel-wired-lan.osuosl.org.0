Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F74CDAD0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 05:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 337D920025;
	Mon,  7 Oct 2019 03:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJO6MkK7zgrK; Mon,  7 Oct 2019 03:56:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 003EB20413;
	Mon,  7 Oct 2019 03:56:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76E0D1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 03:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 727532012D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 03:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6eY1IXEGk0D for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 03:56:21 +0000 (UTC)
X-Greylist: delayed 08:10:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0167.hostedemail.com
 [216.40.44.167])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C1A920025
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 03:56:21 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id E9BE8800E2DA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2019 17:19:15 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 41882180A68B1;
 Sun,  6 Oct 2019 17:19:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:152:355:379:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2376:2393:2553:2559:2562:2903:3138:3139:3140:3141:3142:3352:3865:3867:3868:3871:3872:4321:5007:8603:10004:10400:10848:11026:11473:11657:11658:11914:12043:12262:12297:12438:12555:12679:12740:12895:12986:13069:13311:13357:13894:14096:14097:14181:14659:14721:21080:21365:21433:21451:21627:30054:30055:30064:30091,
 0, RBL:error, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0,
 LFtime:260, LUA_SUMMARY:none
X-HE-Tag: road46_333b5ec2ba205
X-Filterd-Recvd-Size: 2145
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Sun,  6 Oct 2019 17:19:11 +0000 (UTC)
Message-ID: <edf91d8284a2a19d956eb8b7e8b6c4984ceaa1ab.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev <netdev@vger.kernel.org>
Date: Sun, 06 Oct 2019 10:19:10 -0700
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: [Intel-wired-lan] i40e_pto.c: Odd use of strlcpy converted from
 strncpy
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
Cc: Patryk =?UTF-8?Q?Ma=C5=82ek?= <patryk.malek@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBnb3QgY29udmVydGVkIGZyb20gc3RybmNweSB0byBzdHJsY3B5IGJ1dCBpdCdzCm5vdyBu
b3QgbmVjZXNzYXJ5IHRvIHVzZSBvbmUgY2hhcmFjdGVyIGxlc3MgdGhhbiB0aGUKYWN0dWFsIHNp
emUuCgpQZXJoYXBzIHRoZSBzaXplb2YoKSAtIDEgaXMgbm93IG5vdCBjb3JyZWN0IGFuZCBpdApz
aG91bGQgdXNlIHN0cnNjcHkgYW5kIGEgbm9ybWFsIHNpemVvZi4KCmZyb206Cgpjb21taXQgN2Vi
NzRmZjg5MWI0ZTk0YjhiYWM0OGY2NDhhMjFlNGI5NGRkZWU2NApBdXRob3I6IE1pdGNoIFdpbGxp
YW1zIDxtaXRjaC5hLndpbGxpYW1zQGludGVsLmNvbT4KRGF0ZTogICBNb24gQXVnIDIwIDA4OjEy
OjMwIDIwMTggLTA3MDAKCiAgICBpNDBlOiB1c2UgY29ycmVjdCBsZW5ndGggZm9yIHN0cm5jcHkK
CmFuZAoKY29tbWl0IDRmZjJkODU0MDMyMTMyNGUwNGMxMzA2Zjg1ZDRmZTY4YTBjMmQwYWUKQXV0
aG9yOiBQYXRyeWsgTWHFgmVrIDxwYXRyeWsubWFsZWtAaW50ZWwuY29tPgpEYXRlOiAgIFR1ZSBP
Y3QgMzAgMTA6NTA6NDQgMjAxOCAtMDcwMAoKICAgIGk0MGU6IFJlcGxhY2Ugc3RybmNweSB3aXRo
IHN0cmxjcHkgdG8gZW5zdXJlIG51bGwgdGVybWluYXRpb24KLS0tCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfcHRwLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3B0cC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3B0cC5jCmluZGV4IDliZjFhZDQzMTlmNS4uNjI3YjFjMDJiYjRiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHRwLmMKKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3B0cC5jCkBAIC03MDAsOCArNzAwLDgg
QEAgc3RhdGljIGxvbmcgaTQwZV9wdHBfY3JlYXRlX2Nsb2NrKHN0cnVjdCBpNDBlX3BmICpwZikK
IAlpZiAoIUlTX0VSUl9PUl9OVUxMKHBmLT5wdHBfY2xvY2spKQogCQlyZXR1cm4gMDsKIAotCXN0
cmxjcHkocGYtPnB0cF9jYXBzLm5hbWUsIGk0MGVfZHJpdmVyX25hbWUsCi0JCXNpemVvZihwZi0+
cHRwX2NhcHMubmFtZSkgLSAxKTsKKwlzdHJzY3B5KHBmLT5wdHBfY2Fwcy5uYW1lLCBpNDBlX2Ry
aXZlcl9uYW1lLCBzaXplb2YocGYtPnB0cF9jYXBzLm5hbWUpKTsKKwogCXBmLT5wdHBfY2Fwcy5v
d25lciA9IFRISVNfTU9EVUxFOwogCXBmLT5wdHBfY2Fwcy5tYXhfYWRqID0gOTk5OTk5OTk5Owog
CXBmLT5wdHBfY2Fwcy5uX2V4dF90cyA9IDA7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
