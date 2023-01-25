Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D5867B061
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 11:52:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F77740BFD;
	Wed, 25 Jan 2023 10:52:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F77740BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674643948;
	bh=eabN5ztZiaTxXIo+RI3QSo/EZTiRO2ksIZjemb+/HT4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jeeAuhFUqQi/rf22tCiSywHnAPB5RCbZeJMD6YxY+9ZSPJYhFEVd13WnLHR8IdRdV
	 SOZfLy6im5Gujv5ukwpNEnxuo4f/UWR3Zj4HgAXKWiePzN2L0eK8iKlxU4CuAOeVth
	 UiwGww8uadbkRuve2MasGjeBTNxh6IIXMfTjFxgMdozcKcyFsWzU9qBbXv9p6XOeAm
	 1I28N41J6MkFwieOr0MITuCxQIYhpu5DW+ceRJswMzqNLZrlU+7rA71/XRpDYKDbnb
	 CsiMRzl/8g+GjB62PXa11iNcgpJAOGnWFzC45on4i06zjh4UkLUgDASsoIK8rfylsy
	 6GTctLxUzoeYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jvjLpJ2eck76; Wed, 25 Jan 2023 10:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B808402F6;
	Wed, 25 Jan 2023 10:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B808402F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9E291BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BAC67418BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:52:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAC67418BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9w-TIfqbSpXX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 10:52:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 842B9418A2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 842B9418A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:52:19 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 184ED61CC40F9;
 Wed, 25 Jan 2023 11:52:16 +0100 (CET)
Message-ID: <cfde76e9-8195-8a45-a5ab-de1cecb38487@molgen.mpg.de>
Date: Wed, 25 Jan 2023 11:52:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>
References: <20230125102650.1805470-1-michal.wilczynski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230125102650.1805470-1-michal.wilczynski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix check for weight and
 priority of a scheduling node
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWNoYWwsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKCkFtIDI1LjAxLjIzIHVt
IDExOjI2IHNjaHJpZWIgTWljaGFsIFdpbGN6eW5za2k6Cj4gQ3VycmVudGx5IGNoZWNrcyBmb3Ig
d2VpZ2h0IGFuZCBwcmlvcml0eSByYW5nZXMgZG9lc24ndCBjaGVjawoKcGx1cmFsOiBkb27igJl0
Cgo+IGluY29taW5nIHZhbHVlIGZyb20gdGhlIGRldmxpbmsuIEluc3RlYWQgaXQgY2hlY2tzIG5v
ZGUgY3VycmVudCB3ZWlnaHQKPiBvciBwcmlvcml0eS4gVGhpcyBtYWtlcyB0aG9zZSBjaGVja3Mg
dXNlbGVzcy4KPiAKPiBDaGFuZ2UgcmFuZ2UgY2hlY2tzIGluIGljZV9zZXRfb2JqZWN0X3R4X3By
aW9yaXR5KCkgYW5kCj4gaWNlX3NldF9vYmplY3RfdHhfd2VpZ2h0KCkgdG8gY2hlY2sgYWdhaW5z
dCBpbmNvbWluZyBwcmlvcml0eSBhbmQKPiB3ZWlnaHQuCj4gCj4gRml4ZXM6IDQyYzJlYjZiMWY0
MyAoImljZTogSW1wbGVtZW50IGRldmxpbmstcmF0ZSBBUEkiKQo+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBXaWxjenluc2tpIDxtaWNoYWwud2lsY3p5bnNraUBpbnRlbC5jb20+Cj4gQWNrZWQtYnk6
IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMgfCA0ICsrLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGV2bGluay5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZXZsaW5rLmMKPiBpbmRleCA4Mjg2
ZTQ3YjRiYWUuLjBmYWUwMTg2YmQ4NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2RldmxpbmsuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZGV2bGluay5jCj4gQEAgLTg5OSw3ICs4OTksNyBAQCBzdGF0aWMgaW50IGlj
ZV9zZXRfb2JqZWN0X3R4X3ByaW9yaXR5KHN0cnVjdCBpY2VfcG9ydF9pbmZvICpwaSwgc3RydWN0
IGljZV9zY2hlZAo+ICAgewo+ICAgCWludCBzdGF0dXM7Cj4gICAKPiAtCWlmIChub2RlLT50eF9w
cmlvcml0eSA+PSA4KSB7Cj4gKwlpZiAocHJpb3JpdHkgPj0gOCkgewo+ICAgCQlOTF9TRVRfRVJS
X01TR19NT0QoZXh0YWNrLCAiUHJpb3JpdHkgc2hvdWxkIGJlIGxlc3MgdGhhbiA4Iik7CgpVbnJl
bGF0ZWQgdG8gdGhpcyBwYXRjaCwgYnV0IEnigJlkIGFsd2F5cyBwcmludCB0aGUgd3JvbmcgdmFs
dWUgaW4gdGhlIAplcnJvciBtZXNzYWdlLgoKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJfQo+
IEBAIC05MjksNyArOTI5LDcgQEAgc3RhdGljIGludCBpY2Vfc2V0X29iamVjdF90eF93ZWlnaHQo
c3RydWN0IGljZV9wb3J0X2luZm8gKnBpLCBzdHJ1Y3QgaWNlX3NjaGVkX24KPiAgIHsKPiAgIAlp
bnQgc3RhdHVzOwo+ICAgCj4gLQlpZiAobm9kZS0+dHhfd2VpZ2h0ID4gMjAwIHx8IG5vZGUtPnR4
X3dlaWdodCA8IDEpIHsKPiArCWlmICh3ZWlnaHQgPiAyMDAgfHwgd2VpZ2h0IDwgMSkgewo+ICAg
CQlOTF9TRVRfRVJSX01TR19NT0QoZXh0YWNrLCAiV2VpZ2h0IG11c3QgYmUgYmV0d2VlbiAxIGFu
ZCAyMDAiKTsKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAJfQoKUmV2aWV3ZWQtYnk6IFBhdWwg
TWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
