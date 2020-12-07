Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF322D0902
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 02:55:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D502B20396;
	Mon,  7 Dec 2020 01:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gn+grDf9LwIN; Mon,  7 Dec 2020 01:55:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBEE42E17F;
	Mon,  7 Dec 2020 01:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 402641BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 01:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3AD2B2E125
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 01:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7NESuaV00INZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 01:55:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E3AE20396
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 01:55:49 +0000 (UTC)
IronPort-SDR: fBfchOwaHwwR7xhJUQUGcIMfo7dXD/te4NdGBQ8D/lqOZCJMWpzi9GxJLVSONA8keuCA2P4jIw
 2G+glttej1Tg==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="235232749"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="235232749"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 17:55:48 -0800
IronPort-SDR: a6Z98o16Q9vmI4WSuvjgJSCGCKKknLx3GQyOhR31BV7HM4n3JfvUWy7gNt215H8JW1ppw27thX
 VmVN5j2Wt5CA==
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="362918747"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.16.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 17:55:48 -0800
Date: Sun, 6 Dec 2020 17:55:47 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Xiaohui Zhang <ruc_zhangxiaohui@163.com>
Message-ID: <20201206175547.00005aa9@intel.com>
In-Reply-To: <20201207011415.463-1-ruc_zhangxiaohui@163.com>
References: <20201207011415.463-1-ruc_zhangxiaohui@163.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: fix array overflow on
 receiving too many fragments for a packet
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

WGlhb2h1aSBaaGFuZyB3cm90ZToKCj4gRnJvbTogWmhhbmcgWGlhb2h1aSA8cnVjX3poYW5neGlh
b2h1aUAxNjMuY29tPgo+IAo+IElmIHRoZSBoYXJkd2FyZSByZWNlaXZlcyBhbiBvdmVyc2l6ZWQg
cGFja2V0IHdpdGggdG9vIG1hbnkgcnggZnJhZ21lbnRzLAo+IHNrYl9zaGluZm8oc2tiKS0+ZnJh
Z3MgY2FuIG92ZXJmbG93IGFuZCBjb3JydXB0IG1lbW9yeSBvZiBhZGphY2VudCBwYWdlcy4KPiBU
aGlzIGJlY29tZXMgZXNwZWNpYWxseSB2aXNpYmxlIGlmIGl0IGNvcnJ1cHRzIHRoZSBmcmVlbGlz
dCBwb2ludGVyIG9mCj4gYSBzbGFiIHBhZ2UuCgpBcyBJIHJlcGxpZWQgdG8gdGhlIGlvbmljIHBh
dGNoLCBwbGVhc2UganVzdGlmeSB0aGlzIHdpdGggaG93IHlvdSBmb3VuZAppdCBhbmQgaG93IHlv
dSByZXByb2R1Y2VkIGEgcHJvYmxlbS4gUmVzZW5kIHRoZSBwYXRjaGVzIGFzIGEgc2VyaWVzIHNv
CndlIGNhbiBkaXNjdXNzIHRoZW0gYXMgb25lIGNoYW5nZS4KCj4gCj4gU2lnbmVkLW9mZi1ieTog
WmhhbmcgWGlhb2h1aSA8cnVjX3poYW5neGlhb2h1aUAxNjMuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyB8IDYgKysrKystCj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYwo+IGluZGV4IGVhZTc1MjYwZi4uZjBmMDM0ZmE1
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5j
Cj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKPiBAQCAt
ODIzLDggKzgyMywxMiBAQCBpY2VfYWRkX3J4X2ZyYWcoc3RydWN0IGljZV9yaW5nICpyeF9yaW5n
LCBzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmLAo+ICAKPiAgCWlmICghc2l6ZSkKPiAgCQlyZXR1
cm47Cj4gLQlza2JfYWRkX3J4X2ZyYWcoc2tiLCBza2Jfc2hpbmZvKHNrYiktPm5yX2ZyYWdzLCBy
eF9idWYtPnBhZ2UsCj4gKwlzdHJ1Y3Qgc2tiX3NoYXJlZF9pbmZvICpzaGluZm8gPSBza2Jfc2hp
bmZvKHNrYik7Cj4gKwo+ICsJaWYgKHNoaW5mby0+bnJfZnJhZ3MgPCBBUlJBWV9TSVpFKHNoaW5m
by0+ZnJhZ3MpKSB7Cj4gKwkJc2tiX2FkZF9yeF9mcmFnKHNrYiwgc2hpbmZvLCByeF9idWYtPnBh
Z2UsCj4gIAkJCXJ4X2J1Zi0+cGFnZV9vZmZzZXQsIHNpemUsIHRydWVzaXplKTsKPiArCX0KClRo
ZSBkcml2ZXIgaXMgdXNpbmcgMmtCIHJlY2VpdmUgYnVmZmVycywgYW5kIGNhbiBjaGFpbiB0aGVt
IHRvZ2V0aGVyIHVwCnRvIGEgbWF4IHJlY2VpdmUgc2l6ZSBvZiA5MTI2IGJ5dGVzIChvciBzbyks
IHNvIGhvdyBjYW4gd2UgcmVjZWl2ZSBtb3JlCnRoYW4gMTggZnJhZ21lbnRzPyBQbGVhc2UgZXhw
bGFpbiB5b3VyIGxvZ2ljCgo+ICAKPiAgCS8qIHBhZ2UgaXMgYmVpbmcgdXNlZCBzbyB3ZSBtdXN0
IHVwZGF0ZSB0aGUgcGFnZSBvZmZzZXQgKi8KPiAgCWljZV9yeF9idWZfYWRqdXN0X3BnX29mZnNl
dChyeF9idWYsIHRydWVzaXplKTsKCllvdXIgcGF0Y2ggZG9lc24ndCBjb21waWxlLiBZb3UgbXVz
dCBjb21waWxlIHRlc3QgYW5kIGV4cGxhaW4geW91cgpwYXRjaGVzIGJldHRlci4KCiAgQ0MgW01d
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvL2ljZV9tYWluLm8KICBDQyBbTV0gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS8vaWNlX2NvbnRyb2xxLm8KICBDQyBbTV0gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS8vaWNlX2NvbW1vbi5vCiAgQ0MgW01dICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvL2ljZV9udm0ubwogIENDIFtNXSAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlLy9pY2Vfc3dpdGNoLm8KICBDQyBbTV0gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS8vaWNlX3NjaGVkLm8KICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS8vaWNlX2Jhc2UubwogIENDIFtNXSAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlLy9pY2VfbGliLm8KICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS8vaWNlX3R4cnhfbGliLm8KICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS8vaWNlX3R4cngubwpkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvL2ljZV90
eHJ4LmM6IEluIGZ1bmN0aW9uIOKAmGljZV9hZGRfcnhfZnJhZ+KAmToKZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlLy9pY2VfdHhyeC5jOjgyOToyOiB3YXJuaW5nOiBJU08gQzkwIGZvcmJp
ZHMgbWl4ZWQgZGVjbGFyYXRpb25zIGFuZCBjb2RlIFstV2RlY2xhcmF0aW9uLWFmdGVyLXN0YXRl
bWVudF0KICA4MjkgfCAgc3RydWN0IHNrYl9zaGFyZWRfaW5mbyAqc2hpbmZvID0gc2tiX3NoaW5m
byhza2IpOwogICAgICB8ICBefn5+fn4KZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlLy9p
Y2VfdHhyeC5jOjgzMjoyNDogd2FybmluZzogcGFzc2luZyBhcmd1bWVudCAyIG9mIOKAmHNrYl9h
ZGRfcnhfZnJhZ+KAmSBtYWtlcyBpbnRlZ2VyIGZyb20gcG9pbnRlciB3aXRob3V0IGEgY2FzdCBb
LVdpbnQtY29udmVyc2lvbl0KICA4MzIgfCAgIHNrYl9hZGRfcnhfZnJhZyhza2IsIHNoaW5mbywg
cnhfYnVmLT5wYWdlLAogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+CiAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICB8CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3Qgc2tiX3NoYXJlZF9pbmZvICoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVk
ZS9saW51eC9pZl9ldGhlci5oOjE5LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL3Vh
cGkvbGludXgvZXRodG9vbC5oOjE5LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xp
bnV4L2V0aHRvb2wuaDoxOCwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9u
ZXRkZXZpY2UuaDozNywKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS90cmFjZS9ldmVu
dHMveGRwLmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9icGZfdHJh
Y2UuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlLy9pY2VfdHhyeC5jOjg6Ci4vaW5jbHVkZS9saW51eC9za2J1ZmYuaDoyMTgyOjQ3OiBub3Rl
OiBleHBlY3RlZCDigJhpbnTigJkgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg4oCYc3RydWN0IHNr
Yl9zaGFyZWRfaW5mbyAq4oCZCiAyMTgyIHwgdm9pZCBza2JfYWRkX3J4X2ZyYWcoc3RydWN0IHNr
X2J1ZmYgKnNrYiwgaW50IGksIHN0cnVjdCBwYWdlICpwYWdlLCBpbnQgb2ZmLAogICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5eCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
