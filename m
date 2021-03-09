Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 727EF332056
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Mar 2021 09:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7442D49999;
	Tue,  9 Mar 2021 08:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90EuoLbsLHgK; Tue,  9 Mar 2021 08:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35C5E48765;
	Tue,  9 Mar 2021 08:17:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FE281BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 08:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A7BB6F562
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 08:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpsBAS5_t17H for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 08:17:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE1246F4F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 08:17:28 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aea88.dynamic.kabel-deutschland.de
 [95.90.234.136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B9B342064792E;
 Tue,  9 Mar 2021 09:17:25 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210307084427.2882842-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ebb9190c-ac57-9c3a-29d6-1e752e9d9608@molgen.mpg.de>
Date: Tue, 9 Mar 2021 09:17:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210307084427.2882842-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix prototype warning
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

RGVhciBTYXNoYSwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCgpBbSAwNy4wMy4yMSB1bSAw
OTo0NCBzY2hyaWViIFNhc2hhIE5lZnRpbjoKPiBDb3JyZWN0IHJlcG9ydCB3YXJuaW5ncyBpbiBp
Z2NfaTIyNS5jCgpJdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBhZGRlZCBzb21ld2hlcmUgaXTigJlz
IGFib3V0IHRoZSBjb21tZW50L2Z1bmN0aW9uIApkb2N1bWVudGF0aW9uIChEb3h5R2VuKS4gTWF5
YmUgYXMgc3VtbWFyeToKCj4gaWdjOiBGaXggZnVuY3Rpb24gbmFtZSBpbiBgaWdjX2FjcXVpcmVf
bnZtX2kyMjUoKWAgRG94eWdlbiBjb21tZW50Cgo+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRp
biA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfaTIyNS5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfaTIyNS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19pMjI1LmMKPiBpbmRleCA3ZWMwNGU0ODg2MGMuLmNjODNiYjVjMTVlOCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2kyMjUuYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfaTIyNS5jCj4gQEAgLTYsNyArNiw3IEBA
Cj4gICAjaW5jbHVkZSAiaWdjX2h3LmgiCj4gICAKPiAgIC8qKgo+IC0gKiBpZ2NfZ2V0X2h3X3Nl
bWFwaG9yZV9pMjI1IC0gQWNxdWlyZSBoYXJkd2FyZSBzZW1hcGhvcmUKPiArICogaWdjX2FjcXVp
cmVfbnZtX2kyMjUgLSBBY3F1aXJlIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gRUVQUk9NCj4gICAgKiBA
aHc6IHBvaW50ZXIgdG8gdGhlIEhXIHN0cnVjdHVyZQo+ICAgICoKPiAgICAqIEFjcXVpcmUgdGhl
IG5lY2Vzc2FyeSBzZW1hcGhvcmVzIGZvciBleGNsdXNpdmUgYWNjZXNzIHRvIHRoZSBFRVBST00u
CgpBY2tlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KCgpLaW5kIHJl
Z2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
