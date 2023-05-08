Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 359466FB070
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 14:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C93E2842AC;
	Mon,  8 May 2023 12:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C93E2842AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683549844;
	bh=7XJBnd/+3JLwFjqwVva89+O324aUsJYUFUVOeTwYFZY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tA+2NAVoZUsmL8addRsl0sQFid16wpGYph3IM+FNTTcVKouD6A3rks16L8kdJYPTQ
	 79yVKDKN+XidJ/ZjXSS8pYOp6EBGKm2CKGuhCq7FIjgbk01ibOX7UxEzsyT7tsxC0G
	 ehAIhUuHvLjjCorpHumnWfcvMYS8dYfQDUtYE+VQcV+fuHfQ+7105bTFSiAzryxxTs
	 F8stOywQ/lnX88ky7H81pr2mInerW6YuStiUaTpqlIVz1gM9s2W+z/65jMl98orVgI
	 nEj9MWhZdR6csIWmKDDzVvQHRdhS+Ae4X7xf1cnhp9qQPHL0mjeMHv9509IyF5MbQB
	 PXS7djshm4Tag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ueti07y3Bs_i; Mon,  8 May 2023 12:44:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 782F8813CF;
	Mon,  8 May 2023 12:44:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 782F8813CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8756D1BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 12:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F9C984263
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 12:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F9C984263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id auVPp507Ld-3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 12:43:42 +0000 (UTC)
X-Greylist: delayed 00:08:30 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA2B68141B
Received: from mail-m127104.qiye.163.com (mail-m127104.qiye.163.com
 [115.236.127.104])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA2B68141B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 12:43:41 +0000 (UTC)
Received: from [0.0.0.0] (unknown [172.96.223.238])
 by mail-m127104.qiye.163.com (Hmail) with ESMTPA id 1D106A40483;
 Mon,  8 May 2023 20:34:48 +0800 (CST)
Message-ID: <8c243d68-583f-aeea-3d8f-e608746dd9e7@sangfor.com.cn>
Date: Mon, 8 May 2023 20:34:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>,
 "Chittim, Madhu" <madhu.chittim@intel.com>
References: <20230503031541.27855-1-dinghui@sangfor.com.cn>
 <20230503031541.27855-3-dinghui@sangfor.com.cn>
 <20230503082458.GH525452@unreal>
 <d2351c0f-0bfe-9422-f6f3-f0a0db58c729@sangfor.com.cn>
 <20230503162932.GN525452@unreal>
 <941ad3cc-22d6-3459-dfbc-36bc47a8a22a@intel.com>
 <20230504075709.GS525452@unreal>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <20230504075709.GS525452@unreal>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQ05CVk5JQh5DTEIYTBpMT1UTARMWGhIXJBQOD1
 lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Tid: 0a87fb5ba364b282kuuu1d106a40483
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mgw6PDo5AT0JKzYLEDUvLVYR
 DxkKFEhVSlVKTUNITk9CSEtLT09NVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFNSk1PNwY+
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy81LzQgMTU6NTcsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPiBPbiBXZWQsIE1heSAw
MywgMjAyMyBhdCAxMjoyMjowMFBNIC0wNzAwLCBDaGl0dGltLCBNYWRodSB3cm90ZToKPj4KPj4K
Pj4gT24gNS8zLzIwMjMgOToyOSBBTSwgTGVvbiBSb21hbm92c2t5IHdyb3RlOgo+Pj4gT24gV2Vk
LCBNYXkgMDMsIDIwMjMgYXQgMTA6MDA6NDlQTSArMDgwMCwgRGluZyBIdWkgd3JvdGU6Cj4+Pj4g
T24gMjAyMy81LzMgNDoyNCDkuIvljYgsIExlb24gUm9tYW5vdnNreSB3cm90ZToKPj4+Pj4gT24g
V2VkLCBNYXkgMDMsIDIwMjMgYXQgMTE6MTU6NDFBTSArMDgwMCwgRGluZyBIdWkgd3JvdGU6Cj4+
Pj4KPj4+Pj4+Cj4+Pj4+PiBJZiB3ZSBkZXRlY3RlZCByZW1vdmluZyBpcyBpbiBwcm9jZXNzaW5n
LCB3ZSBjYW4gYXZvaWQgdW5uZWNlc3NhcnkKPj4+Pj4+IHdhaXRpbmcgYW5kIHJldHVybiBlcnJv
ciBmYXN0ZXIuCj4+Pj4+Pgo+Pj4+Pj4gT24gdGhlIG90aGVyIGhhbmQgaW4gdGltZW91dCBoYW5k
bGluZywgd2Ugc2hvdWxkIGtlZXAgdGhlIG9yaWdpbmFsCj4+Pj4+PiBudW1fYWN0aXZlX3F1ZXVl
cyBhbmQgcmVzZXQgbnVtX3JlcV9xdWV1ZXMgdG8gMC4KPj4+Pj4+Cj4+Pj4+PiBGaXhlczogNGU1
ZTZiNWQ5ZDEzICgiaWF2ZjogRml4IHJldHVybiBvZiBzZXQgdGhlIG5ldyBjaGFubmVsIGNvdW50
IikKPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IERpbmcgSHVpIDxkaW5naHVpQHNhbmdmb3IuY29tLmNu
Pgo+Pj4+Pj4gQ2M6IERvbmdsaW4gUGVuZyA8cGVuZ2RvbmdsaW5Ac2FuZ2Zvci5jb20uY24+Cj4+
Pj4+PiBDYzogSHVhbmcgQ3VuIDxodWFuZ2N1bkBzYW5nZm9yLmNvbS5jbj4KPj4+Pj4+IFJldmll
d2VkLWJ5OiBTaW1vbiBIb3JtYW4gPHNpbW9uLmhvcm1hbkBjb3JpZ2luZS5jb20+Cj4+Pj4+PiBS
ZXZpZXdlZC1ieTogTWljaGFsIEt1YmlhayA8bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+Cj4+Pj4+
PiAtLS0KPj4+Pj4+IHYzIHRvIHY0Ogo+Pj4+Pj4gICAgICAtIG5vdGhpbmcgY2hhbmdlZAo+Pj4+
Pj4KPj4+Pj4+IHYyIHRvIHYzOgo+Pj4+Pj4gICAgICAtIGZpeCByZXZpZXcgdGFnCj4+Pj4+Pgo+
Pj4+Pj4gdjEgdG8gdjI6Cj4+Pj4+PiAgICAgIC0gYWRkIHJlcHJvZHVjdGlvbiBzY3JpcHQKPj4+
Pj4+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZm
L2lhdmZfZXRodG9vbC5jIHwgNCArKystCj4+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRvb2wuYwo+Pj4+Pj4gaW5kZXggNmYxNzFkMWQ4
NWI3Li5kOGEzYzBjZmVkZDAgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jCj4+Pj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jCj4+Pj4+PiBAQCAtMTg1NywxMyArMTg1Nywx
NSBAQCBzdGF0aWMgaW50IGlhdmZfc2V0X2NoYW5uZWxzKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRk
ZXYsCj4+Pj4+PiAgICAgCS8qIHdhaXQgZm9yIHRoZSByZXNldCBpcyBkb25lICovCj4+Pj4+PiAg
ICAgCWZvciAoaSA9IDA7IGkgPCBJQVZGX1JFU0VUX1dBSVRfQ09NUExFVEVfQ09VTlQ7IGkrKykg
ewo+Pj4+Pj4gICAgIAkJbXNsZWVwKElBVkZfUkVTRVRfV0FJVF9NUyk7Cj4+Pj4+PiArCQlpZiAo
dGVzdF9iaXQoX19JQVZGX0lOX1JFTU9WRV9UQVNLLCAmYWRhcHRlci0+Y3JpdF9zZWN0aW9uKSkK
Pj4+Pj4+ICsJCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4+Pj4+Cj4+Pj4+IFRoaXMgbWFrZXMgbm8g
c2Vuc2Ugd2l0aG91dCBsb2NraW5nIGFzIGNoYW5nZSB0byBfX0lBVkZfSU5fUkVNT1ZFX1RBU0sK
Pj4+Pj4gY2FuIGhhcHBlbiBhbnkgdGltZS4KPj4+Pj4KPj4+Pgo+Pj4+IFRoZSBzdGF0ZSBkb2Vz
bid0IG5lZWQgdG8gYmUgdGhhdCBwcmVjaXNlIGhlcmUsIGl0IGlzIG9wdGltaXplZCBvbmx5IGZv
cgo+Pj4+IHRoZSBmYXN0IHBhdGguIER1cmluZyB0aGUgbGlmZWN5Y2xlIG9mIHRoZSBhZGFwdGVy
LCB0aGUgX19JQVZGX0lOX1JFTU9WRV9UQVNLCj4+Pj4gc3RhdGUgd2lsbCBvbmx5IGJlIHNldCBh
bmQgbm90IGNsZWFyZWQuCj4+Pj4KPj4+PiBJZiB3ZSBkaWRuJ3QgZGV0ZWN0IHRoZSAicmVtb3Zp
bmciIHN0YXRlLCB3ZSBhbHNvIGNhbiBmYWxsYmFjayB0byB0aW1lb3V0Cj4+Pj4gaGFuZGxpbmcu
Cj4+Pj4KPj4+PiBTbyBJIGRvbid0IHRoaW5rIHRoZSBsb2NraW5nIGlzIG5lY2Vzc2FyeSBoZXJl
LCB3aGF0IGRvIHRoZSBtYWludGFpbmVycwo+Pj4+IGF0IEludGVsIHRoaW5rPwo+Pj4KPj4+IEkn
bSBub3QgSW50ZWwgbWFpbnRhaW5lciwgYnV0IHlvdXIgY2hhbmdlLCBleHBsYW5hdGlvbiBhbmQg
dGhlIGZvbGxvd2luZwo+Pj4gbGluZSBmcm9tIHlvdXIgY29tbWl0IG1lc3NhZ2UgYXJlbid0IHJl
YWxseSBhbGlnbmVkLgo+Pj4KPj4+IFsgMzUxMC40MDA3OTldID09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pj4gWyAzNTEw
LjQwMDgyMF0gQlVHOiBLQVNBTjogc2xhYi1vdXQtb2YtYm91bmRzIGluIGlhdmZfZnJlZV9hbGxf
dHhfcmVzb3VyY2VzKzB4MTU2LzB4MTYwIFtpYXZmXQo+Pj4KPj4+Cj4+Cj4+IF9fSUFWRl9JTl9S
RU1PVkVfVEFTSyBpcyBiZWluZyBzZXQgb25seSBpbiBpYXZmX3JlbW92ZSgpIGFuZCB0aGUgYWJv
dmUKPj4gY2hhbmdlIGlzIG9rIGluIHRlcm1zIG9mIGNvbWluZyBvdXQgb2Ygc2V0dGluZyBjaGFu
bmVscyBlYXJseSBlbm91Z2ggd2hpbGUKPj4gcmVtb3ZlIGlzIGluIHByb2dyZXNzLgo+IAo+IEl0
IGlzIG5vdCwgX19JQVZGX0lOX1JFTU9WRV9UQVNLLCBzZXQgYml0IGNhbiBiZSBjaGFuZ2VkIGFu
eSB0aW1lIGR1cmluZwo+IGlhdmZfc2V0X2NoYW5uZWxzKCkgYW5kIGlmIGl0IGlzIG5vdCwgSSB3
b3VsZCBleHBlY3QgdGVzdF9iaXQoLi4pIHBsYWNlZAo+IGF0IHRoZSBiZWdpbm5pbmcgb2YgaWF2
Zl9zZXRfY2hhbm5lbHMoKSBvciBldmVuIGVhcmxpZXIuCj4gCgpTaW5jZSB3ZSBoYXZlIGEgbGl0
dGxlIGRpc3B1dGUgb24gX19JQVZGX0lOX1JFTU9WRV9UQVNLLCBJJ2xsIHJlbW92ZSB0aGUKdGVz
dF9iaXQoKSBpbiB2NSwgYW5kIHJlbW92ZSBSZXZpZXdlZC1ieTogdGFncyBvZiAyLzIgdG8gcmV2
aWV3IGFnYWluLgoKLS0gClRoYW5rcywKLSBEaW5nIEh1aQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
