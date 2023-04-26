Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8526C6EEBCE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 03:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B9A141918;
	Wed, 26 Apr 2023 01:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B9A141918
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682471548;
	bh=UMTTr+xhh34opsWTQceHcCi0bQuqaG+L9tEA37Lb5Ok=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ymM1VX6EDo5yVKzWXG8DWvjHVomAibbmfCH0NoNJBUl/sDE2xCzpwHtZ7z/maVA3Y
	 y++38R0oHI5LilO7+MTeuv67fQy9Mix12f8oDcaogCDhrHbuQOVyUs0LeBbLiUJYHD
	 BCgGwpx5knNYm1Fc0tEOYAqJJiMRNQ6EsnBc0G2YdCfo0pCm9BeujOkzbJzJ+qaaK0
	 eGjPDzfcCsXdYTXwLPawbmfDqcx3SWN2My5yVD3b9sIV2MAiprY+TUh+SinOcRS0Lk
	 sGJ+lHnrmk04I7L4UkaaApFd+wh3428mnoizINwVOTXJEtXmUn1aJi4TlVpIyApXEF
	 +MG+69/QjUqqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0d8-mKAEtBS; Wed, 26 Apr 2023 01:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC622418C0;
	Wed, 26 Apr 2023 01:12:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC622418C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8BD31BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 01:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7104610B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 01:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7104610B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nqEU1dZSP53u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 01:12:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D541160E78
Received: from mail-m11876.qiye.163.com (mail-m11876.qiye.163.com
 [115.236.118.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D541160E78
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 01:12:17 +0000 (UTC)
Received: from [0.0.0.0] (unknown [172.96.223.238])
 by mail-m11876.qiye.163.com (Hmail) with ESMTPA id 23D1D3C02DC;
 Wed, 26 Apr 2023 09:12:09 +0800 (CST)
Message-ID: <50db75d3-8e83-5422-79da-479576634a1f@sangfor.com.cn>
Date: Wed, 26 Apr 2023 09:11:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>,
 anthony.l.nguyen@intel.com, mateusz.palczewski@intel.com
References: <20230420061142.31798-1-dinghui@sangfor.com.cn>
 <9e55b632-ee3c-8873-5a94-804de4919907@intel.com>
From: Ding Hui <dinghui@sangfor.com.cn>
In-Reply-To: <9e55b632-ee3c-8873-5a94-804de4919907@intel.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaQkMdVh8eS0hLTUxOGB0aSVUTARMWGhIXJBQOD1
 lXWRgSC1lBWUpMSVVCTVVJSUhVSUhDWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a87bb1e36d02eb2kusn23d1d3c02dc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PiI6Nyo6ST0KAlEaLE9RCz0Z
 NQxPFClVSlVKTUNJT0xKTkhISU1OVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKTElVQk1VSUlIVUlIQ1lXWQgBWUFISkNNNwY+
Subject: Re: [Intel-wired-lan] [RFC PATCH net v2] iavf: Fix lost VF MAC when
 repeatedly set same MAC
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

T24gMjAyMy80LzI2IDA6NDIsIEdhcmRvY2tpLCBQaW90clggd3JvdGU6Cj4gSGVsbG8gRGluZywK
PiAKPiBUaGFua3MgZm9yIHRoZSByZXBvcnQuIEludGVsIGlzIGFscmVhZHkgYXdhcmUgb2YgdGhp
cyBpc3N1ZSBhbmQgdGhlIGZpeCBzaG91bGQgYmUgYXZhaWxhYmxlIGluIHRoZSBuZXh0IHJlbGVh
c2UuIFRoZSB3YXkgd2UgZml4ZWQgdGhhdCBpcyB0aGF0IHdlJ3JlIGNoZWNraW5nIHdoZXRoZXIg
cmVxdWVzdCBmcm9tIGtlcm5lbCBpcyB0byBjaGFuZ2UgTUFDIGFkZHJlc3MgdG8gdGhlIHNhbWUg
YWRkcmVzcyB0aGF0J3MgYWxyZWFkeSBhcHBsaWVkLiBUaGlzIHdheSB3ZSdyZSBsaW1pdGluZyB0
aGUgbnVtYmVyIG9mIHZpcnRjaG5sIGNhbGxzLgo+IEkgdGhpbmsgeW91ciBwYXRjaCBpcyBhbHNv
IHZhbGlkLCBidXQgb25lIG1pbm9yIHByb2JsZW0gd2l0aCBpdCBpcyB0aGF0IElBVkZfRkxBR19B
UV9ERUxfTUFDX0ZJTFRFUiBmbGFnIGluIGFxX3JlcXVpcmVkIGlzIG5vdCBiZWluZyBjbGVhcmVk
LiBJJ20gcGFzdGluZyBiZWxvdyBvdXIgc29sdXRpb24uIFdlIGFsc28gaGF2ZSBhIHBsYW4gdG8g
c2VuZCB0aGlzIGNvZGUgdG8gdXBzdHJlYW0sIHNvIHRoZSBmaW5hbCBzb2x1dGlvbiBtaWdodCBj
aGFuZ2UgaWYgY29tbXVuaXR5IHdpbGwgcmFpc2UgYW55IGNvbmNlcm5zLgo+IAoKVGhhbmtzIGZv
ciB0aGUgcmVwbHkuCgpCZWZvcmUgdGhlIHJlcGx5LCBJIHVzZWQgdG8gdGhpbmsgdGhhdCB0aGUg
Y29tbWl0IDM1YTI0NDNkMDkxMCAoImlhdmY6IEFkZCB3YWl0aW5nIGZvciByZXNwb25zZSBmcm9t
IFBGIGluIHNldCBtYWMiKQpyZW1vdmVkIHRoZSBldGhlcl9hZGRyX2VxdWFsKCkgaW4gaWF2Zl9z
ZXRfbWFjKCkgaW50ZW50aW9uYWxseSwgdG8gbWFrZSBzdXJlIGNhbGwgdmlydGNobmwgb24gZXZl
cnkgc2V0IG1hYy4KCj4gZGlmZiAtLWdpdCBhL2lhdmZfbWFpbi5jIGIvaWF2Zl9tYWluLmMKPiBp
bmRleCA1MTI2NzA0OS4uNjBlMzI3NDYgMTAwNjQ0Cj4gLS0tIGEvaWF2Zl9tYWluLmMKPiArKysg
Yi9pYXZmX21haW4uYwo+IEBAIC0xMTkwLDYgKzExOTAsOSBAQCBpbnQgaWF2Zl9yZXBsYWNlX3By
aW1hcnlfbWFjKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIsCj4gIMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCBpYXZmX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiAgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGlhdmZfbWFjX2ZpbHRlciAqbmV3X2Y7Cj4gCj4gK8KgwqDCoMKgwqDCoCBpZiAoZXRoZXJf
YWRkcl9lcXVhbChuZXdfbWFjLCBody0+bWFjLmFkZHIpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAwOwo+ICsKCkkgYWxzbyB0cmllZCBhZGQgYmFjayB0aGUgZXRoZXJf
YWRkcl9lcXVhbCgpIGNvbmRpdGlvbiwgYnV0IEkgYWRkZWQgaXQgaW4gaWF2Zl9zZXRfbWFjKCks
CnNpbmNlIEkgdGhpbmsgdGhhdCB0aGVyZSBpcyBubyBuZWVkIHRvIHdhaXRfZXZlbnRfaW50ZXJy
dXB0aWJsZV90aW1lb3V0KCkgaWYgc2tpcHBpbmcKcXVldWVfd29yaygpLgoKPiAgwqDCoMKgwqDC
oMKgwqAgc3Bpbl9sb2NrX2JoKCZhZGFwdGVyLT5tYWNfdmxhbl9saXN0X2xvY2spOwo+IAo+ICDC
oMKgwqDCoMKgwqDCoCBuZXdfZiA9IGlhdmZfYWRkX2ZpbHRlcihhZGFwdGVyLCBuZXdfbWFjKTsK
PiAKPiBSZWdhcmRzLAo+IFBpb3RyCj4gCj4gCgotLSAKVGhhbmtzLAotIERpbmcgSHVpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
