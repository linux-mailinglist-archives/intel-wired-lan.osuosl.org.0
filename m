Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDC67F333F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 17:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B88334146D;
	Tue, 21 Nov 2023 16:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B88334146D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700582919;
	bh=t7Yj5bzNynRRF+fTrIQJOarcUJN3z/Rp4/W195HnBSY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R73noeNxr4zd3kaWmhi94o+21xVjxEHzs8E157SIG1cnnzpnzmlQqlyIyzN7j9NDQ
	 Oy4Y3yB2nLxPt7L1y15eOImg2dMgMy5Y+RoyGT/kjOwKzyF5GAjTqcRfrswjXB9KJ3
	 zlRl0b2XYUOsgHZ+UfzkQPNRjTOv5xFQaEAuQRv5WbfCw5Pa0jcs03QxDi75iET+DR
	 MulFdb6+ftsHuyeioVU6PQ/4uHmkrufA77IgdKls2RJy/fTbj6ib35qZYp/oxkzbUW
	 RUC0aXVwigJ1slyohhxI8OFkeQicxAlbMtHjVan08j/n+1MKd6T16TOocma8D5sETj
	 lH4+r2EhYPZ2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rLVrQsW2X3Hd; Tue, 21 Nov 2023 16:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFDF541463;
	Tue, 21 Nov 2023 16:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFDF541463
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD0BA1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:13:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FD59606C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FD59606C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yJgXqeA7psWv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:13:02 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB2086068F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB2086068F
X-UUID: fc53191120304ffab81e76ce8ee56509-20231121
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32, REQID:1fcb15c5-4542-451d-85f9-59e249b4c6fa, IP:10,
 URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-9,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:1
X-CID-INFO: VERSION:1.1.32, REQID:1fcb15c5-4542-451d-85f9-59e249b4c6fa, IP:10,
 UR
 L:0,TC:0,Content:0,EDM:0,RT:0,SF:-9,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:1
X-CID-META: VersionHash:5f78ec9, CLOUDID:f5919e95-10ce-4e4b-85c2-c9b5229ff92b,
 B
 ulkID:231119230408XYBZ5UP2,BulkQuantity:8,Recheck:0,SF:66|24|17|19|43|74|6
 4|102,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:40,QS:nil,BEC:nil,
 COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: fc53191120304ffab81e76ce8ee56509-20231121
X-User: chentao@kylinos.cn
Received: from [172.21.13.26] [(116.128.244.171)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 467459029; Tue, 21 Nov 2023 10:12:19 +0800
Message-ID: <55b77a28-a680-4465-bb57-2a5cb20ce06a@kylinos.cn>
Date: Tue, 21 Nov 2023 10:12:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
 <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
 <4b551600-f1a3-4efe-b3e9-99cb4536f487@kylinos.cn>
 <2c61c232-1bbb-4cae-bb7f-92a7f2298e97@intel.com>
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <2c61c232-1bbb-4cae-bb7f-92a7f2298e97@intel.com>
X-Mailman-Approved-At: Tue, 21 Nov 2023 16:08:32 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 horms@kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIGZvciB5b3VyIHJlcGx5LiBJIHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbiwgaS5lLiB0
aGUgY2FsbGVyIG9mIAona2FzcHJpbnRmJyBpcyByZXNwb25zaWJsZSBmb3IgY2FsbGluZyAna2Zy
ZWUnIHRvIGZyZWUgdXAgbWVtb3J5LgoKTXkgY29uY2VybiBpcyB0aGF0IGluIG1hbnkgc2NlbmFy
aW9zLCB0aGUgcmVxdWVzdGVkIG1lbW9yeSB3aWxsIGJlIApyZWxlYXNlZCBhZnRlciBhIHBlcmlv
ZCBvZiB1c2UuCgpIYXMgYW55b25lIGVsc2UgZm9yZ290dGVuIHRvIGZyZWUgdXAgdGhlIHJlcXVl
c3RlZCBtZW1vcnkgd2hlbiB1c2luZyAKJ2thc3ByaW50Zic/IGUuZy4gJ2RhbV9oZWFwX2luaXQn
IGNhbGxzICdkbWFfaGVhcF9kZXZub2RlJyB0byBhbGxvY2F0ZSAKbWVtb3J5OgpkYW1faGVhcF9p
bml0CgktPiBkbWFfaGVhcF9kZXZub2RlCgkJICAtPiBrYXNwcmludGYKCQkJLT5rdmFzcHJpbnRm
CgkJCSAgICAgLT5rbWFsbG9jX25vZGVfdHJhY2tfY2FsbGVyCgkJCSAgCS0+IF9fa21hbGxvY19u
b2RlX3RyYWNrX2NhbGxlcgoJCQkJCSAgLT4gX19kb19rbWFsbG9jX25vZGUKCQkJCQkJICAtPiBr
YXNhbl9rbWFsbG9jCgoKVGhlcmUgaXMgbm8gZnVuY3Rpb24gbGlrZSAnZGFtX2hlYXBfZXhpdCcg
dG8gZnJlZSB0aGUgbWVtbW9yeSBhbGxvY2F0ZWQgCmJ5IGRtYV9oZWFwX2Rldm5vZGUuCgpBbm90
aGVyIGNhc2UgaXMgJ2NwdWlkX2Rldm5vZGUnLiBXaWxsIHRoaXMgY2F1c2UgYSBtZW1vcnkgbGVh
aywgYW5kIGlzIAp0aGVyZSBhIGJldHRlciB3YXkgdG8gYXZvaWQgdGhlIG1lbW9yeSBsZWFrIGlu
IHRoaXMgY2FzZT8KCk9yIGlzIHRoZXJlIGEgdW5pZm9ybSBwbGFjZSBpbiB0aGUgbWVtb3J5IG1h
bmFnZW1lbnQgbW9kdWxlIHRvIGZyZWUgdXAgCnRoaXMgbWVtb3J5PwoKVGhhbmtzLApLdW53dQoK
T24gMjAyMy8xMS8yMCAxOTo0MSwgQWxleGFuZGVyIExvYmFraW4gd3JvdGU6Cj4gRnJvbTogS3Vu
d3UgQ2hhbiA8Y2hlbnRhb0BreWxpbm9zLmNuPgo+IERhdGU6IFN1biwgMTkgTm92IDIwMjMgMjM6
MTI6MDkgKzA4MDAKPiAKPj4gSGkgQWxleGFuZGVyLAo+PiBUaGFuayB5b3Ugc28gbXVjaCBmb3Ig
eW91ciByZXBseSwgSSBsb29rZWQgYXQgdGhlIG1vZGlmaWNhdGlvbiB5b3UKPj4gbWVudGlvbmVk
LCBpdCdzIHJlYWxseSBjb29sLiBJJ2xsIGRlZmluaXRlbHkgdHJ5IGl0IG5leHQgdGltZS4KPj4K
Pj4gQnV0IHdoZW4gdXNpbmcgaXQsIHdpbGwgaXQgYmUgZWFzeSB0byBmb3JnZXQgdG8gZnJlZSB1
cCBtZW1vcnk/Cj4gCj4gWW91IGhhdmUgYSBrZnJlZSgpIGF0IHRoZSBlbmQgb2YgdGhlIGZ1bmN0
aW9uLgo+IAo+IEdlbmVyYWxseSBzcGVha2luZywgJ2thJyBzdGFuZHMgZm9yICJba2VybmVsXSBh
bGxvY2F0ZSIgYW5kIHlvdSBhbHNvCj4gbmVlZCB0byBwYXNzIEdQRl8gYXMgdGhlIHNlY29uZCBh
cmd1bWVudC4gRW5vdWdoIGhpbnRzIHRoYXQgeW91IG5lZWQgdG8KPiBmcmVlIHRoZSBwb2ludGVy
IGFmdGVyIHVzaW5nIGl0IEkgd291bGQgc2F5Lgo+IAo+PiBBbHRob3VnaCAna21hbGxvY190cmFj
a19jYWxsZXInIGlzIHVzZWQsIGFjY29yZGluZyB0byBteSB1bmRlcnN0YW5kaW5nLAo+PiBpdCBp
cyBhbHNvIG5lY2Vzc2FyeSB0byByZWxlYXNlIHRoZSBtZW1vcnkgYXQgdGhlIGVuZCBvZiB1c2Uu
Cj4+Cj4+IE9uIDIwMjMvMTEvMTUgMjM6MzksIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+Pj4g
RnJvbTogS3Vud3UgQ2hhbiA8Y2hlbnRhb0BreWxpbm9zLmNuPgo+Pj4gRGF0ZTogV2VkLCAxNSBO
b3YgMjAyMyAxMToxNDo0NCArMDgwMAo+Pj4KPj4+PiBUaGUgc2l6ZSBvZiAiaTQwZV9kYmdfY29t
bWFuZF9idWYiIGlzIDI1NiwgdGhlIHNpemUgb2YgIm5hbWUiCj4+Pj4gZGVwZW5kcyBvbiAiSUZO
QU1TSVoiLCBwbHVzIGEgbnVsbCBjaGFyYWN0ZXIgYW5kIGZvcm1hdCBzaXplLAo+Pj4+IHRoZSB0
b3RhbCBzaXplIGlzIG1vcmUgdGhhbiAyNTYsIGZpeCBpdC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYt
Ynk6IEt1bnd1IENoYW4gPGNoZW50YW9Aa3lsaW5vcy5jbj4KPj4+PiBTdWdnZXN0ZWQtYnk6IFNp
bW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4KPj4+PiAtLS0KPj4+PiAgwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMuYyB8IDIgKy0KPj4+PiAgwqAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMuYwo+
Pj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMuYwo+Pj4+
IGluZGV4IDk5OWM5NzA4ZGVmNS4uZTNiOTM5YzY3Y2ZlIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMKPj4+PiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jCj4+Pj4gQEAgLTcyLDcg
KzcyLDcgQEAgc3RhdGljIHNzaXplX3QgaTQwZV9kYmdfY29tbWFuZF9yZWFkKHN0cnVjdCBmaWxl
Cj4+Pj4gKmZpbHAsIGNoYXIgX191c2VyICpidWZmZXIsCj4+Pj4gIMKgIHsKPj4+PiAgwqDCoMKg
wqDCoCBzdHJ1Y3QgaTQwZV9wZiAqcGYgPSBmaWxwLT5wcml2YXRlX2RhdGE7Cj4+Pj4gIMKgwqDC
oMKgwqAgaW50IGJ5dGVzX25vdF9jb3BpZWQ7Cj4+Pj4gLcKgwqDCoCBpbnQgYnVmX3NpemUgPSAy
NTY7Cj4+Pj4gK8KgwqDCoCBpbnQgYnVmX3NpemUgPSBJRk5BTVNJWiArIHNpemVvZihpNDBlX2Ri
Z19jb21tYW5kX2J1ZikgKyA0Owo+Pj4KPj4+IFJldmVyc2UgQ2hyaXN0bWFzIFRyZWUgc3R5bGU/
IFNob3VsZCBiZSB0aGUgZmlyc3Qgb25lIGluIHRoZSBkZWNsYXJhdGlvbgo+Pj4gbGlzdC4KPj4+
Cj4+Pj4gIMKgwqDCoMKgwqAgY2hhciAqYnVmOwo+Pj4+ICDCoMKgwqDCoMKgIGludCBsZW47Cj4+
Pgo+Pj4gWW91IGNhbiBmaXggaXQgaW4gYSBkaWZmZXJlbnQgd2F5LiBHaXZlbiB0aGF0IHRoZXJl
J3MgYSBremFsbG9jKCkgZWl0aGVyCj4+PiB3YXksIHdoeSBub3QgYWxsb2NhdGUgdGhlIHByZWNp
c2UgcmVxdWlyZWQgYW1vdW50IG9mIGJ5dGVzIGJ5IHVzaW5nCj4+PiBrYXNwcmludGYoKSBpbnN0
ZWFkIG9mIGt6YWxsb2MoKSArIHNucHJpbnRmKCk/IFlvdSB3b3VsZG4ndCBuZWVkIHRvCj4+PiBj
YWxjdWxhdGUgYW55IGJ1ZmZlciBzaXplcyBldGMuIHRoaXMgd2F5Lgo+Pj4KPj4+IFRoYW5rcywK
Pj4+IE9sZWsKPiAKPiBUaGFua3MsCj4gT2xlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
