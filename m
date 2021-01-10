Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 078572F07A6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Jan 2021 15:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 946E320366;
	Sun, 10 Jan 2021 14:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pg1hk1ZZ0j7f; Sun, 10 Jan 2021 14:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 404E92036E;
	Sun, 10 Jan 2021 14:56:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CA3D1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Jan 2021 14:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 388FB866B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Jan 2021 14:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRrAXGhh0Wyk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Jan 2021 14:56:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4F9F8665B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Jan 2021 14:56:09 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea97.dynamic.kabel-deutschland.de
 [95.90.234.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 598A320645D43;
 Sun, 10 Jan 2021 15:56:06 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210110145114.3493608-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <99bb5e22-086c-365b-7d9c-263b18f4c9dd@molgen.mpg.de>
Date: Sun, 10 Jan 2021 15:56:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210110145114.3493608-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused MII_CR_RESET
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
Cc: Anna Kostyukovsky <anna.kostyukovsky@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxMC4wMS4yMSB1bSAxNTo1MSBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBNSUlfQ1JfUkVTRVQgbWFzayBub3QgaW4gdXNlIGluIGkyMjUgZGV2aWNlIGFuZCBjb3VsZCBi
ZSByZW1vdmVkCgpOaXQ6IOKApiBhbmQgaXMgcmVtb3ZlZC4KCj4gU2lnbmVkLW9mZi1ieTogU2Fz
aGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19kZWZpbmVzLmggfCAxIC0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfZGVmaW5lcy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19kZWZpbmVzLmgKPiBpbmRleCA0ZmM5ZWY5NzhhZDMuLjU4ZmMyMDdkYzk5NSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2RlZmluZXMuaAo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZGVmaW5lcy5oCj4gQEAgLTQ0Miw3
ICs0NDIsNiBAQAo+ICAgI2RlZmluZSBNSUlfQ1JfUE9XRVJfRE9XTgkweDA4MDAgIC8qIFBvd2Vy
IGRvd24gKi8KPiAgICNkZWZpbmUgTUlJX0NSX0FVVE9fTkVHX0VOCTB4MTAwMCAgLyogQXV0byBO
ZWcgRW5hYmxlICovCj4gICAjZGVmaW5lIE1JSV9DUl9MT09QQkFDSwkJMHg0MDAwICAvKiAwID0g
bm9ybWFsLCAxID0gbG9vcGJhY2sgKi8KPiAtI2RlZmluZSBNSUlfQ1JfUkVTRVQJCTB4ODAwMCAg
LyogMCA9IG5vcm1hbCwgMSA9IFBIWSByZXNldCAqLwo+ICAgI2RlZmluZSBNSUlfQ1JfU1BFRURf
MTAwMAkweDAwNDAKPiAgICNkZWZpbmUgTUlJX0NSX1NQRUVEXzEwMAkweDIwMDAKPiAgICNkZWZp
bmUgTUlJX0NSX1NQRUVEXzEwCQkweDAwMDAKClJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1l
bnplbEBtb2xnZW4ubXBnLmRlPgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
