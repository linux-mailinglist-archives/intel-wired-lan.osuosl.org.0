Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7073F1751
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 12:31:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C888E80E6E;
	Thu, 19 Aug 2021 10:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JUsheZ0lA7k; Thu, 19 Aug 2021 10:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40EAE80E79;
	Thu, 19 Aug 2021 10:31:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94E161BF282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 10:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80EDD400F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 10:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3rsppVdl9Ie for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 10:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DA3B400C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 10:31:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216522328"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="216522328"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 03:31:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="451344427"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga007.fm.intel.com with ESMTP; 19 Aug 2021 03:31:19 -0700
Date: Thu, 19 Aug 2021 12:16:19 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: zhoufeng <zhoufeng.zf@bytedance.com>
Message-ID: <20210819101619.GE32204@ranger.igk.intel.com>
References: <20210817075407.11961-1-zhoufeng.zf@bytedance.com>
 <20210817111047.GA8143@ranger.igk.intel.com>
 <5bddff53-9b78-99db-1d8e-23b3d38167a1@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bddff53-9b78-99db-1d8e-23b3d38167a1@bytedance.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [External] Re: [PATCH] ixgbe: Fix NULL
 pointer dereference in ixgbe_xdp_setup
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
Cc: wangdongdong.6@bytedance.com, duanxiongchun@bytedance.com, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 zhengqi.arch@bytedance.com, linux-kernel@vger.kernel.org,
 chenying.kernel@bytedance.com, jeffrey.t.kirsher@intel.com,
 songmuchun@bytedance.com, kuba@kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 magnus.karlsson@intel.com, zhouchengming@bytedance.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBdWcgMTgsIDIwMjEgYXQgMDQ6MzA6MTVQTSArMDgwMCwgemhvdWZlbmcgd3JvdGU6
Cj4gCj4gCj4g5ZyoIDIwMjEvOC8xNyDkuIvljYg3OjEwLCBNYWNpZWogRmlqYWxrb3dza2kg5YaZ
6YGTOgo+ID4gT24gVHVlLCBBdWcgMTcsIDIwMjEgYXQgMDM6NTQ6MDdQTSArMDgwMCwgRmVuZyB6
aG91IHdyb3RlOgo+ID4gPiBGcm9tOiBGZW5nIFpob3UgPHpob3VmZW5nLnpmQGJ5dGVkYW5jZS5j
b20+Cj4gPiA+IAo+ID4gPiBUaGUgaXhnYmUgZHJpdmVyIGN1cnJlbnRseSBnZW5lcmF0ZXMgYSBO
VUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2l0aAo+ID4gPiBzb21lIG1hY2hpbmUgKG9ubGluZSBj
cHVzIDwgNjMpLiBUaGlzIGlzIGR1ZSB0byB0aGUgZmFjdCB0aGF0IHRoZQo+ID4gPiBtYXhpbXVt
IHZhbHVlIG9mIG51bV94ZHBfcXVldWVzIGlzIG5yX2NwdV9pZHMuIENvZGUgaXMgaW4KPiA+ID4g
Iml4Z2JlX3NldF9yc3NfcXVldWVzIiIuCj4gPiAKPiA+IFRoYXQncyBhIGdvb2QgY2F0Y2gsIGJ1
dCB3ZSBzaG91bGQgZml4IHNldCBjaGFubmVscyBjYWxsYmFjayBzbyB0aGF0IGl0Cj4gPiB3aWxs
IG5vdCBhbGxvdyBhIHNldHRpbmcgb2YgcXVldWVzIHRvIGJlIGhpZ2hlciB0aGFuIHRoZQo+ID4g
bnVtX29ubGluZV9jcHVzKCkuCj4gPiAKPiA+IFBsZWFzZSBhbHNvIGluY2x1ZGUgdGhlIHRyZWUg
aW4gdGhlIHBhdGNoIHN1YmplY3QgdGhhdCB5b3UncmUgZGlyZWN0aW5nCj4gPiB0aGUgcGF0Y2gg
dG8uCj4gPiAKPiAKPiBPaywgQmVzaWRlcyBpdCwgSSB3aWxsIGFkZCBtb3JlIGNvZGUgaW4gIml4
Z2JlX3NldF9jaGFubmVscyI6Cj4gLyogdmVyaWZ5IHRoZSBudW1iZXIgb2YgY2hhbm5lbHMgZG9l
cyBub3QgZXhjZWVkIG51bV9vbmxpbmVfY3B1cyAqLwo+IGlmIChjb3VudCA+IG51bV9vbmxpbmVf
Y3B1cygpKQo+IAlyZXR1cm4gLUVJTlZBTDsKPiBJZiB1c2VyIHdhbnQgc2V0IHF1ZXVlcyBudW0g
dG8gYmUgaGlnaGVyIHRoYW4gdGhlIG51bV9vbmxpbmVfY3B1cygpLAo+IHJldHVybiBlcnJvcigt
RUlOVkFMKS4KPiAKPiBXaGF0IGRvIHlvdSB0aGluaz8KClllcywgaW4gZ2VuZXJhbCB5b3UgY2Fu
IHJlZmVyIHRvCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIGFu
ZCBpbiBwYXJ0aWN1bGFyOgoKLyoqCiAqIGljZV9nZXRfbWF4X3J4cSAtIHJldHVybiB0aGUgbWF4
aW11bSBudW1iZXIgb2YgUnggcXVldWVzIGZvciBpbiBhIFBGCiAqIEBwZjogUEYgc3RydWN0dXJl
CiAqLwpzdGF0aWMgaW50IGljZV9nZXRfbWF4X3J4cShzdHJ1Y3QgaWNlX3BmICpwZikKewoJcmV0
dXJuIG1pbjMocGYtPm51bV9sYW5fbXNpeCwgKHUxNiludW1fb25saW5lX2NwdXMoKSwKCQkgICAg
KHUxNilwZi0+aHcuZnVuY19jYXBzLmNvbW1vbl9jYXAubnVtX3J4cSk7Cn0KCgo+IAo+ID4gSSdk
IGJlIGFsc28gdGhhbmtmdWwgaWYgeW91IENjIG1lIG9uIEludGVsIFhEUCByZWxhdGVkIHBhdGNo
ZXMuCj4gPiBUaGFua3MhCj4gPiAKPiAKPiBPaywgb2YgY291cnNlLgo+IAo+IAo+ID4gPiAKPiA+
ID4gSGVyZSdzIGhvdyB0aGUgcHJvYmxlbSByZXBlYXRzIGl0c2VsZjoKPiA+ID4gU29tZSBtYWNo
aW5lIChvbmxpbmUgY3B1cyA8IDYzKSwgQW5kIHVzZXIgc2V0IG51bV9xdWV1ZXMgdG8gNjMgdGhy
b3VnaAo+ID4gPiBldGh0b29sLiBDb2RlIGlzIGluIHRoZSAiaXhnYmVfc2V0X2NoYW5uZWxzIiwK
PiA+ID4gYWRhcHRlci0+cmluZ19mZWF0dXJlW1JJTkdfRl9GRElSXS5saW1pdCA9IGNvdW50Owo+
ID4gPiBJdCBiZWNhbWVzIDYzLgo+ID4gPiBXaGVuIHVzZXIgdXNlIHhkcCwgIml4Z2JlX3NldF9y
c3NfcXVldWVzIiB3aWxsIHNldCBxdWV1ZXMgbnVtLgo+ID4gPiBhZGFwdGVyLT5udW1fcnhfcXVl
dWVzID0gcnNzX2k7Cj4gPiA+IGFkYXB0ZXItPm51bV90eF9xdWV1ZXMgPSByc3NfaTsKPiA+ID4g
YWRhcHRlci0+bnVtX3hkcF9xdWV1ZXMgPSBpeGdiZV94ZHBfcXVldWVzKGFkYXB0ZXIpOwo+ID4g
PiBBbmQgcnNzX2kncyB2YWx1ZSBpcyBmcm9tCj4gPiA+IGYgPSAmYWRhcHRlci0+cmluZ19mZWF0
dXJlW1JJTkdfRl9GRElSXTsKPiA+ID4gcnNzX2kgPSBmLT5pbmRpY2VzID0gZi0+bGltaXQ7Cj4g
PiA+IFNvICJudW1fcnhfcXVldWVzIiA+ICJudW1feGRwX3F1ZXVlcyIsIHdoZW4gcnVuIHRvICJp
eGdiZV94ZHBfc2V0dXAiLAo+ID4gPiBmb3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVtX3J4X3F1
ZXVlczsgaSsrKQo+ID4gPiAJaWYgKGFkYXB0ZXItPnhkcF9yaW5nW2ldLT54c2tfdW1lbSkKPiA+
ID4gbGVhZCB0byBwYW5pYy4KPiA+ID4gQ2FsbCB0cmFjZToKPiA+ID4gW2V4Y2VwdGlvbiBSSVA6
IGl4Z2JlX3hkcCszNjhdCj4gPiA+IFJJUDogZmZmZmZmZmZjMDJhNzZhMCAgUlNQOiBmZmZmOWZl
MTYyMDJmOGQwICBSRkxBR1M6IDAwMDEwMjk3Cj4gPiA+IFJBWDogMDAwMDAwMDAwMDAwMDAwMCAg
UkJYOiAwMDAwMDAwMDAwMDAwMDIwICBSQ1g6IDAwMDAwMDAwMDAwMDAwMDAKPiA+ID4gUkRYOiAw
MDAwMDAwMDAwMDAwMDAwICBSU0k6IDAwMDAwMDAwMDAwMDAwMWMgIFJESTogZmZmZmZmZmZhOTRl
YWQ5MAo+ID4gPiBSQlA6IGZmZmY5MmY4ZjI0YzBjMTggICBSODogMDAwMDAwMDAwMDAwMDAwMCAg
IFI5OiAwMDAwMDAwMDAwMDAwMDAwCj4gPiA+IFIxMDogZmZmZjlmZTE2MjAyZjgzMCAgUjExOiAw
MDAwMDAwMDAwMDAwMDAwICBSMTI6IGZmZmY5MmY4ZjI0YzAwMDAKPiA+ID4gUjEzOiBmZmZmOWZl
MTYyMDJmYzAxICBSMTQ6IDAwMDAwMDAwMDAwMDAwMGEgIFIxNTogZmZmZmZmZmZjMDJhNzUzMAo+
ID4gPiBPUklHX1JBWDogZmZmZmZmZmZmZmZmZmZmZiAgQ1M6IDAwMTAgIFNTOiAwMDE4Cj4gPiA+
ICAgNyBbZmZmZjlmZTE2MjAyZjhmMF0gZGV2X3hkcF9pbnN0YWxsIGF0IGZmZmZmZmZmYTg5ZmJi
Y2MKPiA+ID4gICA4IFtmZmZmOWZlMTYyMDJmOTIwXSBkZXZfY2hhbmdlX3hkcF9mZCBhdCBmZmZm
ZmZmZmE4YTA4ODA4Cj4gPiA+ICAgOSBbZmZmZjlmZTE2MjAyZjk2MF0gZG9fc2V0bGluayBhdCBm
ZmZmZmZmZmE4YTIwMjM1Cj4gPiA+IDEwIFtmZmZmOWZlMTYyMDJmYTg4XSBydG5sX3NldGxpbmsg
YXQgZmZmZmZmZmZhOGEyMDM4NAo+ID4gPiAxMSBbZmZmZjlmZTE2MjAyZmM3OF0gcnRuZXRsaW5r
X3Jjdl9tc2cgYXQgZmZmZmZmZmZhOGExYThkZAo+ID4gPiAxMiBbZmZmZjlmZTE2MjAyZmNmMF0g
bmV0bGlua19yY3Zfc2tiIGF0IGZmZmZmZmZmYThhNzE3ZWIKPiA+ID4gMTMgW2ZmZmY5ZmUxNjIw
MmZkNDBdIG5ldGxpbmtfdW5pY2FzdCBhdCBmZmZmZmZmZmE4YTcwZjg4Cj4gPiA+IDE0IFtmZmZm
OWZlMTYyMDJmZDgwXSBuZXRsaW5rX3NlbmRtc2cgYXQgZmZmZmZmZmZhOGE3MTMxOQo+ID4gPiAx
NSBbZmZmZjlmZTE2MjAyZmRmMF0gc29ja19zZW5kbXNnIGF0IGZmZmZmZmZmYTg5ZGYyOTAKPiA+
ID4gMTYgW2ZmZmY5ZmUxNjIwMmZlMDhdIF9fc3lzX3NlbmR0byBhdCBmZmZmZmZmZmE4OWUxOWM4
Cj4gPiA+IDE3IFtmZmZmOWZlMTYyMDJmZjMwXSBfX3g2NF9zeXNfc2VuZHRvIGF0IGZmZmZmZmZm
YTg5ZTFhNjQKPiA+ID4gMTggW2ZmZmY5ZmUxNjIwMmZmMzhdIGRvX3N5c2NhbGxfNjQgYXQgZmZm
ZmZmZmZhODQwNDJiOQo+ID4gPiAxOSBbZmZmZjlmZTE2MjAyZmY1MF0gZW50cnlfU1lTQ0FMTF82
NF9hZnRlcl9od2ZyYW1lIGF0IGZmZmZmZmZmYThjMDAwOGMKPiA+ID4gCj4gPiA+IEZpeGVzOiA0
YTliMzJmMzBmODAgKCJpeGdiZTogZml4IHBvdGVudGlhbCBSWCBidWZmZXIgc3RhcnZhdGlvbiBm
b3IKPiA+ID4gQUZfWERQIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogRmVuZyBaaG91IDx6aG91ZmVu
Zy56ZkBieXRlZGFuY2UuY29tPgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgfCA4ICsrKysrKy0tCj4gPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKPiA+ID4gaW5kZXgg
MTRhZWE0MGRhNTBmLi41ZGI0OTZjYzUwNzAgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+ID4gPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKPiA+ID4gQEAgLTEwMTEyLDYgKzEw
MTEyLDcgQEAgc3RhdGljIGludCBpeGdiZV94ZHBfc2V0dXAoc3RydWN0IG5ldF9kZXZpY2UgKmRl
diwgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+ID4gPiAgIAlzdHJ1Y3QgaXhnYmVfYWRhcHRlciAq
YWRhcHRlciA9IG5ldGRldl9wcml2KGRldik7Cj4gPiA+ICAgCXN0cnVjdCBicGZfcHJvZyAqb2xk
X3Byb2c7Cj4gPiA+ICAgCWJvb2wgbmVlZF9yZXNldDsKPiA+ID4gKwlpbnQgbnVtX3F1ZXVlczsK
PiA+ID4gICAJaWYgKGFkYXB0ZXItPmZsYWdzICYgSVhHQkVfRkxBR19TUklPVl9FTkFCTEVEKQo+
ID4gPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+IEBAIC0xMDE2MSwxMSArMTAxNjIsMTQgQEAg
c3RhdGljIGludCBpeGdiZV94ZHBfc2V0dXAoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgc3RydWN0
IGJwZl9wcm9nICpwcm9nKQo+ID4gPiAgIAkvKiBLaWNrIHN0YXJ0IHRoZSBOQVBJIGNvbnRleHQg
aWYgdGhlcmUgaXMgYW4gQUZfWERQIHNvY2tldCBvcGVuCj4gPiA+ICAgCSAqIG9uIHRoYXQgcXVl
dWUgaWQuIFRoaXMgc28gdGhhdCByZWNlaXZpbmcgd2lsbCBzdGFydC4KPiA+ID4gICAJICovCj4g
PiA+IC0JaWYgKG5lZWRfcmVzZXQgJiYgcHJvZykKPiA+ID4gLQkJZm9yIChpID0gMDsgaSA8IGFk
YXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykKPiA+ID4gKwlpZiAobmVlZF9yZXNldCAmJiBwcm9n
KSB7Cj4gPiA+ICsJCW51bV9xdWV1ZXMgPSBtaW5fdChpbnQsIGFkYXB0ZXItPm51bV9yeF9xdWV1
ZXMsCj4gPiA+ICsJCQlhZGFwdGVyLT5udW1feGRwX3F1ZXVlcyk7Cj4gPiA+ICsJCWZvciAoaSA9
IDA7IGkgPCBudW1fcXVldWVzOyBpKyspCj4gPiA+ICAgCQkJaWYgKGFkYXB0ZXItPnhkcF9yaW5n
W2ldLT54c2tfcG9vbCkKPiA+ID4gICAJCQkJKHZvaWQpaXhnYmVfeHNrX3dha2V1cChhZGFwdGVy
LT5uZXRkZXYsIGksCj4gPiA+ICAgCQkJCQkJICAgICAgIFhEUF9XQUtFVVBfUlgpOwo+ID4gPiAr
CX0KPiA+ID4gICAJcmV0dXJuIDA7Cj4gPiA+ICAgfQo+ID4gPiAtLSAKPiA+ID4gMi4xMS4wCj4g
PiA+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
