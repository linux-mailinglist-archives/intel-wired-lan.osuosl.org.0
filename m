Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA63B6F5C04
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 18:29:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3288781F34;
	Wed,  3 May 2023 16:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3288781F34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683131386;
	bh=cc493d7n/KPL8a9i+00Vkowl6TUmOAiU5Dvzcalpjy8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qk/fapIBNBPspsHoyvegJMveEpBVVeQfwUw5p9sb4kc6p2LRyyieH6GBA405pMBuJ
	 MeVxHR3FO6VufOSt4fRvR+IwY6zYhIfYOC7LwB2EJWoi5DP7qr3V9uZ3oeI7nMLhu8
	 KpJXMXrcoxW8yBmzRgkN7rCnhNhcgYLM667yM4s36MceNYk4XBNeGw+iTGOWS6nbyv
	 nJjGjnr1eZo9tmjIQjM1zRXOi13ujeMJmlsvogfJ+3RAEf3yXfUoiJAb25Xp7GTlP1
	 FQFkKYi8vKyTKZKfObOcZC6A/Ie4hukjdIvZpcDLMz64MdOXyNhP7k8ElEC8wEEVrO
	 +gGcessPi4Vhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLqVdJZ6N7Gy; Wed,  3 May 2023 16:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDDD881F50;
	Wed,  3 May 2023 16:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDDD881F50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFD891BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 16:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87ED76152F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 16:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87ED76152F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4ErjCVFwsD8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 16:29:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B669861526
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B669861526
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 16:29:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 157F26265A;
 Wed,  3 May 2023 16:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC06CC433D2;
 Wed,  3 May 2023 16:29:35 +0000 (UTC)
Date: Wed, 3 May 2023 19:29:32 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <20230503162932.GN525452@unreal>
References: <20230503031541.27855-1-dinghui@sangfor.com.cn>
 <20230503031541.27855-3-dinghui@sangfor.com.cn>
 <20230503082458.GH525452@unreal>
 <d2351c0f-0bfe-9422-f6f3-f0a0db58c729@sangfor.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2351c0f-0bfe-9422-f6f3-f0a0db58c729@sangfor.com.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1683131376;
 bh=+Fa8lWXq+eKn54nxvLtDWjF14FF8nVDjXsR+6SPokpg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ala5bqNF4QzuhsDsLBzQ1IP0XdwwIbDJ3GLns3f6uzPfhcI7QGlMw2tqwy04hpTRt
 0oHMxsoxfOKIkGu+X4P62VCbNbGiKnb86a3Onb/lBvNbHpJjlMzk060TTdista/eVW
 RGq0xAj4h2Gi86TTggpW7vmEqbXglXHX8Bz18ffQ9hzgIrWaKg2Ka+YUsfIgHy6RQd
 oFIzyqUPYoo4Mbd2gW0oaMTZJaBlZJINKgaxGy5x0npQkSQRL6vIu8JBhiWvwvWTj5
 heLSJohzf2nBNT9CbXpER2fku1XcLUmA/cFnyLs2j0Fio0ZNCOopL0DdHQglz7JyqF
 20zuTnRxMm08g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ala5bqNF
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/2] iavf: Fix out-of-bounds
 when setting channels on remove
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXkgMDMsIDIwMjMgYXQgMTA6MDA6NDlQTSArMDgwMCwgRGluZyBIdWkgd3JvdGU6
Cj4gT24gMjAyMy81LzMgNDoyNCDkuIvljYgsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPiA+IE9u
IFdlZCwgTWF5IDAzLCAyMDIzIGF0IDExOjE1OjQxQU0gKzA4MDAsIERpbmcgSHVpIHdyb3RlOgo+
IAo+ID4gPiAKPiA+ID4gSWYgd2UgZGV0ZWN0ZWQgcmVtb3ZpbmcgaXMgaW4gcHJvY2Vzc2luZywg
d2UgY2FuIGF2b2lkIHVubmVjZXNzYXJ5Cj4gPiA+IHdhaXRpbmcgYW5kIHJldHVybiBlcnJvciBm
YXN0ZXIuCj4gPiA+IAo+ID4gPiBPbiB0aGUgb3RoZXIgaGFuZCBpbiB0aW1lb3V0IGhhbmRsaW5n
LCB3ZSBzaG91bGQga2VlcCB0aGUgb3JpZ2luYWwKPiA+ID4gbnVtX2FjdGl2ZV9xdWV1ZXMgYW5k
IHJlc2V0IG51bV9yZXFfcXVldWVzIHRvIDAuCj4gPiA+IAo+ID4gPiBGaXhlczogNGU1ZTZiNWQ5
ZDEzICgiaWF2ZjogRml4IHJldHVybiBvZiBzZXQgdGhlIG5ldyBjaGFubmVsIGNvdW50IikKPiA+
ID4gU2lnbmVkLW9mZi1ieTogRGluZyBIdWkgPGRpbmdodWlAc2FuZ2Zvci5jb20uY24+Cj4gPiA+
IENjOiBEb25nbGluIFBlbmcgPHBlbmdkb25nbGluQHNhbmdmb3IuY29tLmNuPgo+ID4gPiBDYzog
SHVhbmcgQ3VuIDxodWFuZ2N1bkBzYW5nZm9yLmNvbS5jbj4KPiA+ID4gUmV2aWV3ZWQtYnk6IFNp
bW9uIEhvcm1hbiA8c2ltb24uaG9ybWFuQGNvcmlnaW5lLmNvbT4KPiA+ID4gUmV2aWV3ZWQtYnk6
IE1pY2hhbCBLdWJpYWsgPG1pY2hhbC5rdWJpYWtAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4g
djMgdG8gdjQ6Cj4gPiA+ICAgIC0gbm90aGluZyBjaGFuZ2VkCj4gPiA+IAo+ID4gPiB2MiB0byB2
MzoKPiA+ID4gICAgLSBmaXggcmV2aWV3IHRhZwo+ID4gPiAKPiA+ID4gdjEgdG8gdjI6Cj4gPiA+
ICAgIC0gYWRkIHJlcHJvZHVjdGlvbiBzY3JpcHQKPiA+ID4gCj4gPiA+IC0tLQo+ID4gPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMgfCA0ICsrKy0KPiA+
ID4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+
IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZm
X2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29s
LmMKPiA+ID4gaW5kZXggNmYxNzFkMWQ4NWI3Li5kOGEzYzBjZmVkZDAgMTAwNjQ0Cj4gPiA+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMKPiA+ID4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYwo+ID4g
PiBAQCAtMTg1NywxMyArMTg1NywxNSBAQCBzdGF0aWMgaW50IGlhdmZfc2V0X2NoYW5uZWxzKHN0
cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsCj4gPiA+ICAgCS8qIHdhaXQgZm9yIHRoZSByZXNldCBp
cyBkb25lICovCj4gPiA+ICAgCWZvciAoaSA9IDA7IGkgPCBJQVZGX1JFU0VUX1dBSVRfQ09NUExF
VEVfQ09VTlQ7IGkrKykgewo+ID4gPiAgIAkJbXNsZWVwKElBVkZfUkVTRVRfV0FJVF9NUyk7Cj4g
PiA+ICsJCWlmICh0ZXN0X2JpdChfX0lBVkZfSU5fUkVNT1ZFX1RBU0ssICZhZGFwdGVyLT5jcml0
X3NlY3Rpb24pKQo+ID4gPiArCQkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ID4gCj4gPiBUaGlzIG1h
a2VzIG5vIHNlbnNlIHdpdGhvdXQgbG9ja2luZyBhcyBjaGFuZ2UgdG8gX19JQVZGX0lOX1JFTU9W
RV9UQVNLCj4gPiBjYW4gaGFwcGVuIGFueSB0aW1lLgo+ID4gCj4gCj4gVGhlIHN0YXRlIGRvZXNu
J3QgbmVlZCB0byBiZSB0aGF0IHByZWNpc2UgaGVyZSwgaXQgaXMgb3B0aW1pemVkIG9ubHkgZm9y
Cj4gdGhlIGZhc3QgcGF0aC4gRHVyaW5nIHRoZSBsaWZlY3ljbGUgb2YgdGhlIGFkYXB0ZXIsIHRo
ZSBfX0lBVkZfSU5fUkVNT1ZFX1RBU0sKPiBzdGF0ZSB3aWxsIG9ubHkgYmUgc2V0IGFuZCBub3Qg
Y2xlYXJlZC4KPiAKPiBJZiB3ZSBkaWRuJ3QgZGV0ZWN0IHRoZSAicmVtb3ZpbmciIHN0YXRlLCB3
ZSBhbHNvIGNhbiBmYWxsYmFjayB0byB0aW1lb3V0Cj4gaGFuZGxpbmcuCj4gCj4gU28gSSBkb24n
dCB0aGluayB0aGUgbG9ja2luZyBpcyBuZWNlc3NhcnkgaGVyZSwgd2hhdCBkbyB0aGUgbWFpbnRh
aW5lcnMKPiBhdCBJbnRlbCB0aGluaz8KCkknbSBub3QgSW50ZWwgbWFpbnRhaW5lciwgYnV0IHlv
dXIgY2hhbmdlLCBleHBsYW5hdGlvbiBhbmQgdGhlIGZvbGxvd2luZwpsaW5lIGZyb20geW91ciBj
b21taXQgbWVzc2FnZSBhcmVuJ3QgcmVhbGx5IGFsaWduZWQuCgpbIDM1MTAuNDAwNzk5XSA9PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KWyAzNTEwLjQwMDgyMF0gQlVHOiBLQVNBTjogc2xhYi1vdXQtb2YtYm91bmRzIGluIGlh
dmZfZnJlZV9hbGxfdHhfcmVzb3VyY2VzKzB4MTU2LzB4MTYwIFtpYXZmXQoKCj4gCj4gPiBUaGFu
a3MKPiA+IAo+ID4gPiAgIAkJaWYgKGFkYXB0ZXItPmZsYWdzICYgSUFWRl9GTEFHX1JFU0VUX1BF
TkRJTkcpCj4gPiA+ICAgCQkJY29udGludWU7Cj4gPiA+ICAgCQlicmVhazsKPiA+ID4gICAJfQo+
ID4gPiAgIAlpZiAoaSA9PSBJQVZGX1JFU0VUX1dBSVRfQ09NUExFVEVfQ09VTlQpIHsKPiA+ID4g
ICAJCWFkYXB0ZXItPmZsYWdzICY9IH5JQVZGX0ZMQUdfUkVJTklUX0lUUl9ORUVERUQ7Cj4gPiA+
IC0JCWFkYXB0ZXItPm51bV9hY3RpdmVfcXVldWVzID0gbnVtX3JlcTsKPiA+ID4gKwkJYWRhcHRl
ci0+bnVtX3JlcV9xdWV1ZXMgPSAwOwo+ID4gPiAgIAkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ID4g
PiAgIAl9Cj4gPiA+IC0tIAo+ID4gPiAyLjE3LjEKPiA+ID4gCj4gPiA+IAo+ID4gCj4gCj4gLS0g
Cj4gVGhhbmtzLAo+IC1kaW5naHVpCj4gCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
