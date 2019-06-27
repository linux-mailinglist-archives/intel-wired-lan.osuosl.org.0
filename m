Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806C358135
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2019 13:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5FB5887EBB;
	Thu, 27 Jun 2019 11:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 559m6TsILTW1; Thu, 27 Jun 2019 11:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D712D87EB0;
	Thu, 27 Jun 2019 11:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C95B91BF83B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 11:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C55F4811CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 11:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yObQT2Un3tq3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2019 11:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E60D6842B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 11:14:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 04:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="162604553"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jun 2019 04:14:51 -0700
To: Jonathan Lemon <jonathan.lemon@gmail.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
Date: Thu, 27 Jun 2019 12:14:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, bpf@vger.kernel.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 bruce.richardson@intel.com, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDI1LzA2LzIwMTkgMTk6NDQsIEpvbmF0aGFuIExlbW9uIHdyb3RlOgo+IE9uIDIwIEp1biAy
MDE5LCBhdCAxOjM5LCBLZXZpbiBMYWF0eiB3cm90ZToKPgo+PiBUaGlzIHBhdGNoc2V0IGFkZHMg
dGhlIGFiaWxpdHkgdG8gdXNlIHVuYWxpZ25lZCBjaHVua3MgaW4gdGhlIFhEUCB1bWVtLgo+Pgo+
PiBDdXJyZW50bHksIGFsbCBjaHVuayBhZGRyZXNzZXMgcGFzc2VkIHRvIHRoZSB1bWVtIGFyZSBt
YXNrZWQgdG8gYmUgY2h1bmsKPj4gc2l6ZSBhbGlnbmVkIChkZWZhdWx0IGlzIDJrLCBtYXggaXMg
UEFHRV9TSVpFKS4gVGhpcyBsaW1pdHMgd2hlcmUgd2UgY2FuCj4+IHBsYWNlIGNodW5rcyB3aXRo
aW4gdGhlIHVtZW0gYXMgd2VsbCBhcyBsaW1pdGluZyB0aGUgcGFja2V0IHNpemVzIAo+PiB0aGF0
IGFyZQo+PiBzdXBwb3J0ZWQuCj4+Cj4+IFRoZSBjaGFuZ2VzIGluIHRoaXMgcGF0Y2hzZXQgcmVt
b3ZlcyB0aGVzZSByZXN0cmljdGlvbnMsIGFsbG93aW5nIFhEUCAKPj4gdG8gYmUKPj4gbW9yZSBm
bGV4aWJsZSBpbiB3aGVyZSBpdCBjYW4gcGxhY2UgYSBjaHVuayB3aXRoaW4gYSB1bWVtLiBCeSAK
Pj4gcmVsYXhpbmcgd2hlcmUKPj4gdGhlIGNodW5rcyBjYW4gYmUgcGxhY2VkLCBpdCBhbGxvd3Mg
dXMgdG8gdXNlIGFuIGFyYml0cmFyeSBidWZmZXIgCj4+IHNpemUgYW5kCj4+IHBsYWNlIHRoYXQg
d2hlcmV2ZXIgd2UgaGF2ZSBhIGZyZWUgYWRkcmVzcyBpbiB0aGUgdW1lbS4gVGhlc2UgY2hhbmdl
cyAKPj4gYWRkIHRoZQo+PiBhYmlsaXR5IHRvIHN1cHBvcnQganVtYm9mcmFtZXMgYW5kIG1ha2Ug
aXQgZWFzeSB0byBpbnRlZ3JhdGUgd2l0aCBvdGhlcgo+PiBleGlzdGluZyBmcmFtZXdvcmtzIHRo
YXQgaGF2ZSB0aGVpciBvd24gbWVtb3J5IG1hbmFnZW1lbnQgc3lzdGVtcywgCj4+IHN1Y2ggYXMK
Pj4gRFBESy4KPgo+IEknbSBhIGxpdHRsZSB1bmNsZWFyIG9uIGhvdyB0aGlzIHNob3VsZCB3b3Jr
LCBhbmQgaGF2ZSBhIGZldyBpc3N1ZXMgaGVyZToKPgo+IMKgMSkgVGhlcmUgaXNuJ3QgYW55IHN1
cHBvcnQgZm9yIHRoZSB1c2VyIGRlZmluZWQgdW1lbS0+aGVhZHJvb20KPgoKRm9yIHRoZSB1bmFs
aWduZWQgY2h1bmtzIGNhc2UsIGl0IGRvZXMgbm90IG1ha2Ugc2Vuc2UgdG8gdG8gc3VwcG9ydCBh
IAp1c2VyIGRlZmluZWQgaGVhZHJvb20gc2luY2UgdGhlIHVzZXIgY2FuIHBvaW50IGRpcmVjdGx5
IHRvIHdoZXJlIHRoZXkgCndhbnQgdGhlIGRhdGEgdG8gc3RhcnQgdmlhIHRoZSBidWZmZXIgYWRk
cmVzcy4gVGhlcmVmb3JlLCBmb3IgdW5hbGlnbmVkIApjaHVua3MsIHRoZSB1c2VyIGRlZmluZWQg
aGVhZHJvb20gc2hvdWxkIGFsd2F5cyBiZSAwIChha2EgdGhlIHVzZXIgZGlkIApub3QgZGVmaW5l
IGEgaGVhZHJvb20gYW5kIHRoZSBkZWZhdWx0IHZhbHVlIG9mIDAgaXMgdXNlZCkuIEFueSBvdGhl
ciAKdmFsdWUgd2lsbCBiZSBjYXVnaHQgYW5kIHdlIHJldHVybiBhbiBpbnZhbGlkIGFyZ3VtZW50
IGVycm9yLgoKCj4gwqAyKSBXaGVuIHF1ZXVpbmcgUlggYnVmZmVycywgdGhlIGhhbmRsZSAoYWth
IHVtZW0gb2Zmc2V0KSBpcyB1c2VkLCB3aGljaAo+IMKgwqDCoCBwb2ludHMgdG8gdGhlIHN0YXJ0
IG9mIHRoZSBidWZmZXIgYXJlYS7CoCBXaGVuIHRoZSBidWZmZXIgYXBwZWFycyBpbgo+IMKgwqDC
oCB0aGUgY29tcGxldGlvbiBxdWV1ZSwgaGFuZGxlIHBvaW50cyB0byB0aGUgc3RhcnQgb2YgdGhl
IHJlY2VpdmVkIAo+IGRhdGEsCj4gwqDCoMKgIHdoaWNoIG1pZ2h0IGJlIGRpZmZlcmVudCBmcm9t
IHRoZSBidWZmZXIgc3RhcnQgYWRkcmVzcy4KPgo+IMKgwqDCoCBOb3JtYWxseSwgdGhpcyBSWCBh
ZGRyZXNzIGlzIGp1c3QgcHV0IGJhY2sgaW4gdGhlIGZpbGwgcXVldWUsIGFuZCB0aGUKPiDCoMKg
wqAgbWFzayBpcyB1c2VkIHRvIGZpbmQgdGhlIGJ1ZmZlciBzdGFydCBhZGRyZXNzIGFnYWluLsKg
IFRoaXMgbm8gbG9uZ2VyCj4gwqDCoMKgIHdvcmtzLCBzbyBteSBxdWVzdGlvbiBpcywgaG93IGlz
IHRoZSBidWZmZXIgc3RhcnQgYWRkcmVzcyByZWNvbXB1dGVkCj4gwqDCoMKgIGZyb20gdGhlIGFj
dHVhbCBkYXRhIHBheWxvYWQgYWRkcmVzcz8KPgo+IMKgwqDCoCBTYW1lIHdpdGggVFggLSBpZiB0
aGUgVFggcGF5bG9hZCBpc24ndCBhbGlnbmVkIGluIHdpdGggdGhlIHN0YXJ0IG9mCj4gwqDCoMKg
IHRoZSBidWZmZXIsIHdoYXQgaGFwcGVucz8KCk9uIHRoZSBhcHBsaWNhdGlvbiBzaWRlICh4ZHBz
b2NrKSwgd2UgZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCB0aGUgdXNlciAKZGVmaW5lZCBoZWFk
cm9vbSwgc2luY2UgaXQgaXMgMCwgc28gd2Ugb25seSBuZWVkIHRvIGFjY291bnQgZm9yIHRoZSAK
WERQX1BBQ0tFVF9IRUFEUk9PTSB3aGVuIGNvbXB1dGluZyB0aGUgb3JpZ2luYWwgYWRkcmVzcyAo
aW4gdGhlIGRlZmF1bHQgCnNjZW5hcmlvKS4gVGhpcyB3YXMgbWlzc2luZyBmcm9tIHRoZSB2MSwg
d2lsbCBhZGQgdGhpcyBpbiB0aGUgdjIsIHRvIApoYXZlIHhkcHNvY2sgdXNlIHRoZSBkZWZhdWx0
IHZhbHVlIGZyb20gbGliYnBmISBJZiB0aGUgdXNlciBpcyB1c2luZyAKYW5vdGhlciBCUEYgcHJv
Z3JhbSB0aGF0IHVzZXMgYSBkaWZmZXJlbnQgb2Zmc2V0LCB0aGVuIHRoZSBjb21wdXRhdGlvbiAK
d2lsbCBuZWVkIHRvIGJlIGFkanVzdGVkIGZvciB0aGF0IGFjY29yZGluZ2x5LiBJbiB2MiB3ZSds
bCBhZGQgc3VwcG9ydCAKZm9yIHRoaXMgdmlhIGNvbW1hbmQtbGluZSBwYXJhbWV0ZXIuCgpIb3dl
dmVyLCB3ZSBhcmUgYWxzbyB3b3JraW5nIG9uIGFuICJpbi1vcmRlciIgcGF0Y2hzZXQsIGhvcGVm
dWxseSB0byBiZSAKcHVibGlzaGVkIHNvb24sIHRvIGd1YXJhbnRlZSB0aGUgYnVmZmVycyByZXR1
cm5lZCB0byB0aGUgYXBwbGljYXRpb24gYXJlIAppbiB0aGUgc2FtZSBvcmRlciBhcyB0aG9zZSBw
cm92aWRlZCB0byB0aGUga2VybmVsLiBMb25nZXIgdGVybSwgdGhpcyBpcyAKdGhlIGJlc3Qgc29s
dXRpb24gaGVyZSBhcyBpdCBhbGxvd3MgdGhlIGFwcGxpY2F0aW9uIHRvIHRyYWNrIGl0c2VsZiwg
dmlhIAphICJzaGFkb3cgcmluZyIgb3Igb3RoZXJ3aXNlLCB0aGUgYnVmZmVycyBzZW50IHRvIHRo
ZSBrZXJuZWwgYW5kIGFueSAKbWV0YWRhdGEgYXNzb2NpYXRlZCB3aXRoIHRoZW0sIHN1Y2ggYXMg
dGhlIHN0YXJ0IG9mIGJ1ZmZlciBhZGRyZXNzLgoKPgo+IMKgMykgVGhpcyBhcHBlYXJzIGxpbWl0
ZWQgdG8gY3Jvc3NpbmcgYSBzaW5nbGUgcGFnZSBib3VuZGFyeSwgYnV0IHRoZXJlCj4gwqDCoMKg
IGlzIG5vIGNvbnN0cmFpbnQgY2hlY2sgb24gY2h1bmtfc2l6ZS4KClRoZXJlIGlzIGFuIGV4aXN0
aW5nIGNoZWNrIGZvciBjaHVua19zaXplIGR1cmluZyB4ZHBfdW1lbV9yZWcgKGluIAp4ZHBfdW1l
bS5jKSBUaGUgY2hlY2sgbWFrZXMgc3VyZSB0aGF0IGNodW5rIHNpemUgaXMgYXQgbGVhc3QgClhE
UF9VTUVNX01JTl9DSFVOS19TSVpFIGFuZCBhdCBtb3N0IFBBR0VfU0laRS4gU2luY2UgdGhlIG1h
eCBpcyBwYWdlIApzaXplLCB3ZSBvbmx5IG5lZWQgdG8gY2hlY2sgdGhlIGltbWVkaWF0ZSBuZXh0
IHBhZ2UgZm9yIGNvbnRpZ3VpdHkuCldoaWxlIHRoaXMgcGF0Y2hzZXQgYWxsb3dzIGEgbWF4IG9m
IDRrIHNpemVkIGJ1ZmZlcnMsIGl0IGlzIHN0aWxsIGFuIAppbXByb3ZlbWVudCBmcm9tIHRoZSBj
dXJyZW50IHN0YXRlLiBGdXR1cmUgZW5oYW5jZW1lbnRzIGNvdWxkIGxvb2sgaW50byAKZXh0ZW5k
aW5nIHRoZSA0ayBsaW1pdCBidXQgZm9yIG5vdyBpdCBpcyBhIGdvb2QgZmlyc3Qgc3RlcCB0b3dh
cmRzIApzdXBwb3J0aW5nIGh1Z2VwYWdlcyBlZmZpY2llbnRseS4KCkJlc3QgcmVnYXJkcywKS2V2
aW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
