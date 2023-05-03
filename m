Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACE46F597C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 16:02:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6F7541CDA;
	Wed,  3 May 2023 14:02:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6F7541CDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683122555;
	bh=ldM1NZM3Tbj7bURlIqoNDRnLh+x+Rb54cl24zLkbYz8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XtETtMaNDSNDnFhJxvomWLAkUM/2v2paHc980khGoe1+/5Qsl5VD96uJKNpM4w/yq
	 5DoJTNI5r8BQGdf3/q/n+SNymBdkVO4u/ghkx5CK6trENp8umuU51FhTTG3xUnMhUz
	 W03x+VTSJQaLk1drQS5kz7JzuskKyO0n2+2ffFcR+gCE4c+8Q4wP+uTRXPfgl9OK2d
	 ptUkRBmsr8CTNrYI9xv3hiyWm0ALTryndwcYeksT3ljvKhb9ysjpM01h3C5/C0vEso
	 21BGHiAaDbtutoFhMH6hgcyFTBzBucSSn5WVUgMwwd1jsvQMtRmYD39f0S/blGNwgu
	 ArkkO11Mcvlsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZFRCZ1EYTI0; Wed,  3 May 2023 14:02:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9790B41CB3;
	Wed,  3 May 2023 14:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9790B41CB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD0B01BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 14:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94F9641D87
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 14:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94F9641D87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f9-fgDi5qU5G for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 14:02:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 682A841DBB
Received: from mail-m11876.qiye.163.com (mail-m11876.qiye.163.com
 [115.236.118.76])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 682A841DBB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 14:02:25 +0000 (UTC)
Received: from [IPV6:240e:3b7:327f:5c30:3c7d:9d61:755a:9449] (unknown
 [IPV6:240e:3b7:327f:5c30:3c7d:9d61:755a:9449])
 by mail-m11876.qiye.163.com (Hmail) with ESMTPA id DD8973C0341;
 Wed,  3 May 2023 22:00:49 +0800 (CST)
Message-ID: <d2351c0f-0bfe-9422-f6f3-f0a0db58c729@sangfor.com.cn>
Date: Wed, 3 May 2023 22:00:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:102.0)
 Gecko/20100101 Thunderbird/102.8.0
From: Ding Hui <dinghui@sangfor.com.cn>
To: Leon Romanovsky <leon@kernel.org>
References: <20230503031541.27855-1-dinghui@sangfor.com.cn>
 <20230503031541.27855-3-dinghui@sangfor.com.cn>
 <20230503082458.GH525452@unreal>
Content-Language: en-US
In-Reply-To: <20230503082458.GH525452@unreal>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZH0MeVksZS05LGh0eHUpLSlUTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTB1BThhIS0FIGEwfQUIfTUpBTE5OGkFCT09CWVdZFhoPEhUdFF
 lBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Tid: 0a87e1ea708f2eb2kusndd8973c0341
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORg6Qzo4Lj0TIzkvPjdCTR0Q
 Cx4aCwpVSlVKTUNISklJT05LQkxIVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlJT0seQUgZTEFISUwdQU4YSEtBSBhMH0FCH01KQUxOThpBQk9PQllXWQgBWUFPQ09NNwY+
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
Cc: simon.horman@corigine.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, jesse.brandeburg@intel.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, kuba@kernel.org, pabeni@redhat.com,
 keescook@chromium.org, mitch.a.williams@intel.com, gregory.v.rose@intel.com,
 pengdonglin@sangfor.com.cn, grzegorzx.szczurek@intel.com,
 netdev@vger.kernel.org, dinghui@sangfor.com.cn, linux-kernel@vger.kernel.org,
 huangcun@sangfor.com.cn, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy81LzMgNDoyNCDkuIvljYgsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPiBPbiBXZWQs
IE1heSAwMywgMjAyMyBhdCAxMToxNTo0MUFNICswODAwLCBEaW5nIEh1aSB3cm90ZToKCj4+Cj4+
IElmIHdlIGRldGVjdGVkIHJlbW92aW5nIGlzIGluIHByb2Nlc3NpbmcsIHdlIGNhbiBhdm9pZCB1
bm5lY2Vzc2FyeQo+PiB3YWl0aW5nIGFuZCByZXR1cm4gZXJyb3IgZmFzdGVyLgo+Pgo+PiBPbiB0
aGUgb3RoZXIgaGFuZCBpbiB0aW1lb3V0IGhhbmRsaW5nLCB3ZSBzaG91bGQga2VlcCB0aGUgb3Jp
Z2luYWwKPj4gbnVtX2FjdGl2ZV9xdWV1ZXMgYW5kIHJlc2V0IG51bV9yZXFfcXVldWVzIHRvIDAu
Cj4+Cj4+IEZpeGVzOiA0ZTVlNmI1ZDlkMTMgKCJpYXZmOiBGaXggcmV0dXJuIG9mIHNldCB0aGUg
bmV3IGNoYW5uZWwgY291bnQiKQo+PiBTaWduZWQtb2ZmLWJ5OiBEaW5nIEh1aSA8ZGluZ2h1aUBz
YW5nZm9yLmNvbS5jbj4KPj4gQ2M6IERvbmdsaW4gUGVuZyA8cGVuZ2RvbmdsaW5Ac2FuZ2Zvci5j
b20uY24+Cj4+IENjOiBIdWFuZyBDdW4gPGh1YW5nY3VuQHNhbmdmb3IuY29tLmNuPgo+PiBSZXZp
ZXdlZC1ieTogU2ltb24gSG9ybWFuIDxzaW1vbi5ob3JtYW5AY29yaWdpbmUuY29tPgo+PiBSZXZp
ZXdlZC1ieTogTWljaGFsIEt1YmlhayA8bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+Cj4+IC0tLQo+
PiB2MyB0byB2NDoKPj4gICAgLSBub3RoaW5nIGNoYW5nZWQKPj4KPj4gdjIgdG8gdjM6Cj4+ICAg
IC0gZml4IHJldmlldyB0YWcKPj4KPj4gdjEgdG8gdjI6Cj4+ICAgIC0gYWRkIHJlcHJvZHVjdGlv
biBzY3JpcHQKPj4KPj4gLS0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX2V0aHRvb2wuYyB8IDQgKysrLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
YXZmL2lhdmZfZXRodG9vbC5jCj4+IGluZGV4IDZmMTcxZDFkODViNy4uZDhhM2MwY2ZlZGQwIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9v
bC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29s
LmMKPj4gQEAgLTE4NTcsMTMgKzE4NTcsMTUgQEAgc3RhdGljIGludCBpYXZmX3NldF9jaGFubmVs
cyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LAo+PiAgIAkvKiB3YWl0IGZvciB0aGUgcmVzZXQg
aXMgZG9uZSAqLwo+PiAgIAlmb3IgKGkgPSAwOyBpIDwgSUFWRl9SRVNFVF9XQUlUX0NPTVBMRVRF
X0NPVU5UOyBpKyspIHsKPj4gICAJCW1zbGVlcChJQVZGX1JFU0VUX1dBSVRfTVMpOwo+PiArCQlp
ZiAodGVzdF9iaXQoX19JQVZGX0lOX1JFTU9WRV9UQVNLLCAmYWRhcHRlci0+Y3JpdF9zZWN0aW9u
KSkKPj4gKwkJCXJldHVybiAtRU9QTk9UU1VQUDsKPiAKPiBUaGlzIG1ha2VzIG5vIHNlbnNlIHdp
dGhvdXQgbG9ja2luZyBhcyBjaGFuZ2UgdG8gX19JQVZGX0lOX1JFTU9WRV9UQVNLCj4gY2FuIGhh
cHBlbiBhbnkgdGltZS4KPiAKClRoZSBzdGF0ZSBkb2Vzbid0IG5lZWQgdG8gYmUgdGhhdCBwcmVj
aXNlIGhlcmUsIGl0IGlzIG9wdGltaXplZCBvbmx5IGZvcgp0aGUgZmFzdCBwYXRoLiBEdXJpbmcg
dGhlIGxpZmVjeWNsZSBvZiB0aGUgYWRhcHRlciwgdGhlIF9fSUFWRl9JTl9SRU1PVkVfVEFTSwpz
dGF0ZSB3aWxsIG9ubHkgYmUgc2V0IGFuZCBub3QgY2xlYXJlZC4KCklmIHdlIGRpZG4ndCBkZXRl
Y3QgdGhlICJyZW1vdmluZyIgc3RhdGUsIHdlIGFsc28gY2FuIGZhbGxiYWNrIHRvIHRpbWVvdXQK
aGFuZGxpbmcuCgpTbyBJIGRvbid0IHRoaW5rIHRoZSBsb2NraW5nIGlzIG5lY2Vzc2FyeSBoZXJl
LCB3aGF0IGRvIHRoZSBtYWludGFpbmVycwphdCBJbnRlbCB0aGluaz8KCj4gVGhhbmtzCj4gCj4+
ICAgCQlpZiAoYWRhcHRlci0+ZmxhZ3MgJiBJQVZGX0ZMQUdfUkVTRVRfUEVORElORykKPj4gICAJ
CQljb250aW51ZTsKPj4gICAJCWJyZWFrOwo+PiAgIAl9Cj4+ICAgCWlmIChpID09IElBVkZfUkVT
RVRfV0FJVF9DT01QTEVURV9DT1VOVCkgewo+PiAgIAkJYWRhcHRlci0+ZmxhZ3MgJj0gfklBVkZf
RkxBR19SRUlOSVRfSVRSX05FRURFRDsKPj4gLQkJYWRhcHRlci0+bnVtX2FjdGl2ZV9xdWV1ZXMg
PSBudW1fcmVxOwo+PiArCQlhZGFwdGVyLT5udW1fcmVxX3F1ZXVlcyA9IDA7Cj4+ICAgCQlyZXR1
cm4gLUVPUE5PVFNVUFA7Cj4+ICAgCX0KPj4gICAKPj4gLS0gCj4+IDIuMTcuMQo+Pgo+Pgo+IAoK
LS0gClRoYW5rcywKLWRpbmdodWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
