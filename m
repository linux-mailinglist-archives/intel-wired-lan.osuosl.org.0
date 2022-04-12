Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B23F34FCF04
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 07:38:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C58360F21;
	Tue, 12 Apr 2022 05:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZMpIVooiNpnw; Tue, 12 Apr 2022 05:38:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E48E60F28;
	Tue, 12 Apr 2022 05:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DC341BF362
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B73E60F21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLfIaygCdGbJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 05:38:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBC2E60F04
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:38:45 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef95.dynamic.kabel-deutschland.de
 [95.90.239.149])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id D489961EA192A;
 Tue, 12 Apr 2022 07:38:43 +0200 (CEST)
Message-ID: <e079ab74-48fc-65d1-4d3f-2c0cdd4ffcb9@molgen.mpg.de>
Date: Tue, 12 Apr 2022 07:38:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-3-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220411232907.1022602-3-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] ice: always check VF VSI
 pointer values
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKYWNvYiwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCkFtIDEyLjA0LjIyIHVtIDAx
OjI5IHNjaHJpZWIgSmFjb2IgS2VsbGVyOgo+IFRoZSBpY2VfZ2V0X3ZmX3ZzaSBmdW5jdGlvbiBj
YW4gcmV0dXJuIE5VTEwgaW4gc29tZSBjYXNlcywgc3VjaCBhcyBpZgo+IGhhbmRsaW5nIG1lc3Nh
Z2VzIGR1cmluZyBhIHJlc2V0IHdoZXJlIHRoZSBWU0kgaXMgYmVpbmcgcmVtb3ZlZCBhbmQKPiBy
ZWNyZWF0ZWQuCj4gCj4gU2V2ZXJhbCBwbGFjZXMgdGhyb3VnaG91dCB0aGUgZHJpdmVyIGRvIG5v
dCBib3RoZXIgdG8gY2hlY2sgd2hldGhlciB0aGlzCj4gVlNJIHBvaW50ZXIgaXMgdmFsaWQuIFN0
YXRpYyBhbmFseXNpcyB0b29scyBtYXliZSByZXBvcnQgaXNzdWVzIGJlY2F1c2UKPiB0aGV5IGRl
dGVjdCBwYXRocyB3aGVyZSBhIHBvdGVudGlhbGx5IE5VTEwgcG9pbnRlciBjb3VsZCBiZQo+IGRl
cmVmZXJlbmNlZC4KCihzaWRlIG5vdGU6IHNjcmlwdHMvY2hlY2twYXRjaC5wbCBjaGVja3MgZm9y
IDc1IGNoYXJhY3RlcnMgcGVyIGxpbmUsIGFuZCAKeW91IHNlZW0gdG8gdXNlIDcyIGNoYXJhY3Rl
cnMgcGVyIGxpbmUuKQoKPiBGaXggdGhpcyBieSBjaGVja2luZyB0aGUgcmV0dXJuIHZhbHVlIG9m
IGljZV9nZXRfdmZfdnNpIGV2ZXJ5d2hlcmUuCgpJIGRpZG7igJl0IHVuZGVyc3RhbmQsIHdoZW4g
V0FSTl9PTigpIGlzIG5lY2Vzc2FyeSwgYW5kIHdoZW4gbm90LCBidXQgCmxvb2tzIGZpbmUuCgo+
IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+
IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMgIHwg
IDUgKystCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3JlcHIuYyAgICAg
fCAgNyArKystCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NyaW92LmMg
ICAgfCAzMiArKysrKysrKysrKysrKysrKy0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3ZmX2xpYi5jICAgfCAyOCArKysrKysrKysrKysrKystCj4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMgfCAgNSArKysKPiAgIC4uLi9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIuYyAgICB8ICA3ICsrKy0KPiAgIDYgZmls
ZXMgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKClvigKZdCgpSZXZp
ZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KCgpLaW5kIHJlZ2Fy
ZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
