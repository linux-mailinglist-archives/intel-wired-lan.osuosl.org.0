Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB36417F6F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2019 19:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9BD0B871CF;
	Wed,  8 May 2019 17:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IzD6cdvMrGKf; Wed,  8 May 2019 17:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7563687169;
	Wed,  8 May 2019 17:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C44F41BF238
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 17:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFF0D21552
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 17:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E827LZg1+ZSV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2019 17:59:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
 [192.185.51.209])
 by silver.osuosl.org (Postfix) with ESMTPS id D99F92152A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 17:59:50 +0000 (UTC)
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id 213265C93D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 12:59:50 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id OQr8hquOJ2qH7OQr8h8a1P; Wed, 08 May 2019 12:59:50 -0500
X-Authority-Reason: nr=8
Received: from [189.250.119.7] (port=40742 helo=[192.168.1.76])
 by gator4166.hostgator.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hOQr7-000J5A-OQ; Wed, 08 May 2019 12:59:49 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org, Kees Cook <keescook@chromium.org>
References: <20190329233850.29630-1-jeffrey.t.kirsher@intel.com>
 <b5f1f0c0-e27b-f861-c36e-35e493f45dff@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <dd2974a0-b559-cfd1-c3d8-0839594ef03c@embeddedor.com>
Date: Wed, 8 May 2019 12:59:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b5f1f0c0-e27b-f861-c36e-35e493f45dff@embeddedor.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.119.7
X-Source-L: No
X-Exim-ID: 1hOQr7-000J5A-OQ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.76]) [189.250.119.7]:40742
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 13
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: Re: [Intel-wired-lan] [PATCH 1/6] igb: mark expected switch
 fall-through
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmVmZiwKCkkgd29uZGVyIGlmIHRoZXJlIGlzIGFueSBjaGFuY2UgZm9yIHRoaXMgc2VyaWVz
IHRvIGJlIHF1ZXVlZCB1cCBmb3IgNS4yLXJjMS4KClRoYW5rcwotLQpHdXN0YXZvCgpPbiA0LzI0
LzE5IDExOjQyIEFNLCBHdXN0YXZvIEEuIFIuIFNpbHZhIHdyb3RlOgo+IEhpIEplZmYsCj4gCj4g
SSBqdXN0IHdhbnRlZCB0byBjaGVjayBpZiB0aGlzIHNlcmllcyBoYXMgYWxyZWFkeSBiZWVuIGFw
cGxpZWQgc29tZXdoZXJlLgo+IAo+IFRoYW5rcwo+IC0tCj4gR3VzdGF2bwo+IAo+IE9uIDMvMjkv
MTkgNjozOCBQTSwgSmVmZiBLaXJzaGVyIHdyb3RlOgo+PiBGcm9tOiAiR3VzdGF2byBBLiBSLiBT
aWx2YSIgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+Cj4+Cj4+IEluIHByZXBhcmF0aW9uIHRvIGVu
YWJsaW5nIC1XaW1wbGljaXQtZmFsbHRocm91Z2gsIG1hcmsgc3dpdGNoIGNhc2VzCj4+IHdoZXJl
IHdlIGFyZSBleHBlY3RpbmcgdG8gZmFsbCB0aHJvdWdoLgo+Pgo+PiBUaGlzIHBhdGNoIGZpeGVz
IHRoZSBmb2xsb3dpbmcgd2FybmluZzoKPj4KPj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9tYWluLmM6IEluIGZ1bmN0aW9uIOKAmF9faWdiX25vdGlmeV9kY2HigJk6Cj4+IGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jOjY2OTQ6Njogd2FybmluZzog
dGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1d
Cj4+ICAgIGlmIChkY2FfYWRkX3JlcXVlc3RlcihkZXYpID09IDApIHsKPj4gICAgICAgXgo+PiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYzo2NzAxOjI6IG5vdGU6IGhl
cmUKPj4gICBjYXNlIERDQV9QUk9WSURFUl9SRU1PVkU6Cj4+ICAgXn5+fgo+Pgo+PiBXYXJuaW5n
IGxldmVsIDMgd2FzIHVzZWQ6IC1XaW1wbGljaXQtZmFsbHRocm91Z2g9Mwo+Pgo+PiBOb3RpY2Ug
dGhhdCwgaW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UsIHRoZSBjb2RlIGNvbW1lbnQgaXMgbW9kaWZp
ZWQKPj4gaW4gYWNjb3JkYW5jZSB3aXRoIHdoYXQgR0NDIGlzIGV4cGVjdGluZyB0byBmaW5kLgo+
Pgo+PiBUaGlzIHBhdGNoIGlzIHBhcnQgb2YgdGhlIG9uZ29pbmcgZWZmb3J0cyB0byBlbmFibGUK
Pj4gLVdpbXBsaWNpdC1mYWxsdGhyb3VnaC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogIkd1c3Rhdm8g
QS4gUi4gU2lsdmEiIDxndXN0YXZvQGVtYmVkZGVkb3IuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4+IGluZGV4IDgzNGU4NzllMWQ1Ny4uZTgwNDJiMDI1
NGJjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21h
aW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+
PiBAQCAtNjcwMSw3ICs2NzAxLDcgQEAgc3RhdGljIGludCBfX2lnYl9ub3RpZnlfZGNhKHN0cnVj
dCBkZXZpY2UgKmRldiwgdm9pZCAqZGF0YSkKPj4gIAkJCWlnYl9zZXR1cF9kY2EoYWRhcHRlcik7
Cj4+ICAJCQlicmVhazsKPj4gIAkJfQo+PiAtCQkvKiBGYWxsIFRocm91Z2ggc2luY2UgRENBIGlz
IGRpc2FibGVkLiAqLwo+PiArCQkvKiBGYWxsIFRocm91Z2ggLSBzaW5jZSBEQ0EgaXMgZGlzYWJs
ZWQuICovCj4+ICAJY2FzZSBEQ0FfUFJPVklERVJfUkVNT1ZFOgo+PiAgCQlpZiAoYWRhcHRlci0+
ZmxhZ3MgJiBJR0JfRkxBR19EQ0FfRU5BQkxFRCkgewo+PiAgCQkJLyogd2l0aG91dCB0aGlzIGEg
Y2xhc3NfZGV2aWNlIGlzIGxlZnQKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
