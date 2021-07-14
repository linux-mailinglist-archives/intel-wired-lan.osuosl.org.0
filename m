Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D13C7E61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 08:10:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1FA140193;
	Wed, 14 Jul 2021 06:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIrKKoHZ_PKd; Wed, 14 Jul 2021 06:10:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02C1B401EF;
	Wed, 14 Jul 2021 06:10:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B8221BF94B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18B6940696
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:09:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ra_R42hdMGb6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 06:09:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 326E840658
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 06:09:52 +0000 (UTC)
Received: from [192.158.3.58] (p5df34db0.dip0.t-ipconnect.de [93.243.77.176])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3FCE961E64760;
 Wed, 14 Jul 2021 08:09:49 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210624081908.568757-1-sasha.neftin@intel.com>
 <b144efbc-9dbd-dd7c-b8df-a504a757bded@molgen.mpg.de>
 <3de72f51-8f3d-29c9-dc74-b016c13c5b08@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <fab23c51-cfcd-2a20-0558-346ade1199b5@molgen.mpg.de>
Date: Wed, 14 Jul 2021 08:09:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3de72f51-8f3d-29c9-dc74-b016c13c5b08@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 3/3] e1000e: Additional PHY power
 saving in s0ix
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
Cc: michael.edri@intel.com, devora.fuxbrumer@intel.com,
 Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxMy4wNy4yMSB1bSAxODo0MCBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBPbiA3LzEzLzIwMjEgMTA6MTIsIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMjQuMDYuMjEg
dW0gMTA6MTkgc2NocmllYiBTYXNoYSBOZWZ0aW46Cj4+Cj4+IENvdWxkIHlvdSBwbGVhc2UgdXNl
IGEgc3RhdGVtZW50IGluIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5PyBNYXliZToKPj4KPj4+
IERpc2FibGUgYWRkaXRpb25hbCBQSFkgZmVhdHVyZXMoPykgaW4gUzBpeAo+Pgo+Pj4gQWZ0ZXIg
dHJhbnNmZXJyaW5nIHRoZSBNQUMtUEhZIGludGVyZmFjZSB0byB0aGUgU01CdXMgdGhlIFBIWQo+
Pj4gd2lsbCBzYXZlIHBvd2VyIGluIFMwaXggbG93IHBvd2VyIGlkbGUgbW9kZS4KPj4KPj4gSSBk
byBub3QgdW5kZXJzdGFuZCB0aGlzLiBQbGVhc2UgcmV3cml0ZSwgYW5kIG1lbnRpb24gdGhlIHRo
cmVlIFBIWSAKPj4gZmVhdHVyZXMoPykgeW91IGNoYW5nZS4KPj4KPj4gUGxlYXNlIGRvY3VtZW50
IGhvdyB5b3UgdGVzdGVkIHRoaXMsIGFuZCBleGFjdGx5IGhvdyBtdWNoIHBvd2VyIGlzIHNhdmVk
LgoKPiBUaGUgUEhZIHdpbGwgc2F2ZSA0Ny04NW1XIGluIHMwaXguIEl0IGlzIHRlc3RlZCAoYnkg
b3VyIGVsZWN0cmljYWwgCj4gdmFsaWRhdGlvbiB0ZWFtKSBvbiBhIHNlbnNlIHJlc2lzdG9yIG9u
IGEgc3BlY2lmaWMgZXh0ZXJuYWwgYm9hcmQgb3ZlciAKPiB0aGUgVEdMIHBsYXRmb3JtLgo+IAo+
IFRoaXMgbWVhc3VyZW1lbnQgY291bGQgdmFyaWF0ZSBmcm9tIHBsYXRmb3JtIHRvIHBsYXRmb3Jt
IGFuZCBkZXBlbmRzIG9uIAo+IHRoZSBzcGVjaWZpYyBwbGF0Zm9ybSBkZXNpZ24uCgpUaGFuayB5
b3UgZm9yIHNoYXJpbmcgdGhlIGRhdGEuIFBsZWFzZSBhZGQgaXQgdG8gdGhlIGNvbW1pdCBtZXNz
YWdlIGluIHYyLgoKPj4+IFN1Z2dlc3RlZC1ieTogRGltYSBSdWluc2tpeSA8ZGltYS5ydWluc2tp
eUBpbnRlbC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRp
bkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYyB8IDYgKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYyAKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jCj4+PiBpbmRleCA2ZTZlMmU2ODVlOWQuLmM0ZjNlNWNhNzI5NCAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+PiBAQCAtNjM4MCwx
MCArNjM4MCwxNiBAQCBzdGF0aWMgdm9pZCBlMTAwMGVfczBpeF9lbnRyeV9mbG93KHN0cnVjdCAK
Pj4+IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZXczMihD
VFJMX0VYVCwgbWFjX2RhdGEpOwo+Pj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIERGVCBjb250
cm9sOiBQSFkgYml0OiBwYWdlNzY5XzIwWzBdID0gMQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBw
YWdlNzY5XzIwWzddIC0gUEhZIFBMTCBzdG9wCj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIHBhZ2U3
NjlfMjBbOF0gLSBQSFkgZ28gdG8gdGhlIGVsZWN0cmljYWwgaWRsZQo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqAgKiBwYWdlNzY5XzIwWzldIC0gUEhZIHNlcmRlcyBkaXNhYmxlCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIEdhdGUgUFBXIHZpYSBFWFRDTkZfQ1RSTCAtIHNldCAweDBGMDBbN10gPSAx
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGUxZV9y
cGh5KGh3LCBJODI1NzlfREZUX0NUUkwsICZwaHlfZGF0YSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgcGh5X2RhdGEgfD0gQklUKDApOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBoeV9kYXRhIHw9IEJJ
VCg3KTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBwaHlfZGF0YSB8PSBCSVQoOCk7Cj4+PiArwqDCoMKg
wqDCoMKgwqAgcGh5X2RhdGEgfD0gQklUKDkpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGUxZV93
cGh5KGh3LCBJODI1NzlfREZUX0NUUkwsIHBoeV9kYXRhKTsKPj4+IMKgIMKgwqDCoMKgwqDCoMKg
wqDCoCBtYWNfZGF0YSA9IGVyMzIoRVhUQ05GX0NUUkwpOwo+Pj4KCgpLaW5kIHJlZ2FyZHMsCgpQ
YXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
