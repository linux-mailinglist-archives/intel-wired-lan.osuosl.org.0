Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B635E21A38
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 17:01:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7360C31539;
	Fri, 17 May 2019 15:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6fQHT5MxYjvC; Fri, 17 May 2019 15:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A80673173C;
	Fri, 17 May 2019 15:01:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31DE31BF376
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D53431735
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GelF6wB+8iKW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 15:01:28 +0000 (UTC)
X-Greylist: delayed 00:06:24 by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id A789531539
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:01:28 +0000 (UTC)
Received: from [192.168.0.13] (ip5f5bd2a4.dynamic.kabel-deutschland.de
 [95.91.210.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 19668202254D3;
 Fri, 17 May 2019 17:01:27 +0200 (CEST)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <d185164e-d09f-39ab-74f0-0c483ab52e67@molgen.mpg.de>
Date: Fri, 17 May 2019 17:01:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-wired-lan] [PATCH] e1000e: Increase pause and refresh time
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
Cc: Miguel Bernal Marin <miguel.bernal.marin@linux.intel.com>,
 Arjan van de Ven <arjan@linux.intel.com>, intel-wired-lan@lists.osuosl.org,
 Tim Pepper <timothy.c.pepper@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTWlndWVsIEJlcm5hbCBNYXJpbiA8bWlndWVsLmJlcm5hbC5tYXJpbkBsaW51eC5pbnRl
bC5jb20+CkRhdGU6IE1vbiwgMjcgTWFyIDIwMTcgMTY6MDE6NTYgLTA2MDAKClN1Z2dlc3RlZC1i
eTogVGltIFBlcHBlciA8dGltb3RoeS5jLnBlcHBlckBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IE1pZ3VlbCBCZXJuYWwgTWFyaW4gPG1pZ3VlbC5iZXJuYWwubWFyaW5AbGludXguaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRl
PgotLS0KTWlndWVsLCBpdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBjb3VsZCB3cml0ZSBhIGNvbW1p
dCBtZXNzYWdlIHN0YXRpbmcgdGhlIAptb3RpdmF0aW9uIGZvciB0aGF0IGNoYW5nZSwgdGhhdCBt
ZWFucywgd2h5IGlzIGl0IHByZWZlcmFibGUgdG8gaW5jcmVhc2UgCnRoZXNlIHZhbHVlcywgYW5k
IHNldCB0aGUgcGF1c2UgdGltZSB1bmNvbmRpdGlvbmFsbHkuCgogIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8IDQgKystLQogIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIApiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9uZXRkZXYuYwppbmRleCBjZTRhYWE5ZjIxNjMuLjU5N2QzY2ExOTU1NSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCisrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwpAQCAtNDA0NywxMiArNDA0
NywxMiBAQCB2b2lkIGUxMDAwZV9yZXNldChzdHJ1Y3QgZTEwMDBfYWRhcHRlciAqYWRhcHRlcikK
ICAJY2FzZSBlMTAwMF9wY2hfbHB0OgogIAljYXNlIGUxMDAwX3BjaF9zcHQ6CiAgCWNhc2UgZTEw
MDBfcGNoX2NucDoKLQkJZmMtPnJlZnJlc2hfdGltZSA9IDB4MDQwMDsKKwkJZmMtPnJlZnJlc2hf
dGltZSA9IDB4RkZGRjsKKwkJZmMtPnBhdXNlX3RpbWUgPSAweEZGRkY7CgogIAkJaWYgKGFkYXB0
ZXItPm5ldGRldi0+bXR1IDw9IEVUSF9EQVRBX0xFTikgewogIAkJCWZjLT5oaWdoX3dhdGVyID0g
MHgwNUMyMDsKICAJCQlmYy0+bG93X3dhdGVyID0gMHgwNTA0ODsKLQkJCWZjLT5wYXVzZV90aW1l
ID0gMHgwNjUwOwogIAkJCWJyZWFrOwogIAkJfQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
