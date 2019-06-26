Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 797FA56266
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 08:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B4A82152C;
	Wed, 26 Jun 2019 06:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XzYC3ISkHGQT; Wed, 26 Jun 2019 06:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 12FC321526;
	Wed, 26 Jun 2019 06:36:42 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25FAD1BF3CC
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jun 2019 06:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 219D121514
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jun 2019 06:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mqg3KFBu0MC8 for <intel-wired-lan@osuosl.org>;
 Wed, 26 Jun 2019 06:36:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CBE620489
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jun 2019 06:36:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 23:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,418,1557212400"; d="scan'208";a="166934387"
Received: from vlifsht-mobl1.ger.corp.intel.com (HELO [10.185.168.95])
 ([10.185.168.95])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2019 23:36:39 -0700
To: intel-wired-lan@osuosl.org
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
 <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
 <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <6d920130-5c92-50ed-6e29-b072671f49e6@intel.com>
Date: Wed, 26 Jun 2019 09:36:38 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8yNi8yMDE5IDA5OjI2LCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IE9uIDYvMjYvMjAxOSAw
OToxNCwgS2FpIEhlbmcgRmVuZyB3cm90ZToKPj4gSGkgU2FzaGEKPj4KPj4gYXQgNTowOSBQTSwg
S2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPj4KPj4+
IEhpIEplZmZyZXksCj4+Pgo+Pj4gV2XigJl2ZSBlbmNvdW50ZXJlZCBhbm90aGVyIGlzc3VlLCB3
aGljaCBjYXVzZXMgbXVsdGlwbGUgQ1JDIGVycm9ycyAKPj4+IGFuZCByZW5kZXJzIGV0aGVybmV0
IGNvbXBsZXRlbHkgdXNlbGVzcywgaGVyZeKAmXMgdGhlIG5ldHdvcmsgc3RhdHM6Cj4+Cj4+IEkg
YWxzbyB0cmllZCBpZ25vcmVfbHRyIGZvciB0aGlzIGlzc3VlLCBzZWVtcyBsaWtlIGl0IGFsbGV2
aWF0ZXMgdGhlIAo+PiBzeW1wdG9tIGEgYml0IGZvciBhIHdoaWxlLCB0aGVuIHRoZSBuZXR3b3Jr
IHN0aWxsIGJlY29tZXMgdXNlbGVzcyAKPj4gYWZ0ZXIgc29tZSB1c2FnZS4KPj4KPj4gQW5kIHll
cywgaXTigJlzIGFsc28gYSBXaGlza2V5IExha2UgcGxhdGZvcm0uIFdoYXTigJlzIHRoZSBuZXh0
IHN0ZXAgdG8gCj4+IGRlYnVnIHRoaXMgcHJvYmxlbT8KPj4KPj4gS2FpLUhlbmcKPiBDUkMgZXJy
b3JzIG5vdCByZWxhdGVkIHRvIHRoZSBMVFIuIFBsZWFzZSwgdHJ5IHRvIGRpc2FibGUgdGhlIE1F
IG9uIAo+IHlvdXIgcGxhdGZvcm0uIEhvcGUgeW91IGhhdmUgdGhpcyBvcHRpb24gaW4gQklPUy4g
QW5vdGhlciB3YXkgaXMgdG8gCj4gY29udGFjdCB5b3VyIFBDIHZlbmRvciBhbmQgYXNrIHRvIHBy
b3ZpZGUgTlZNIHdpdGhvdXQgTUUuIExldCdzIHN0YXJ0IAo+IGRlYnVnZ2luZyB3aXRoIHRoZXNl
IHN0ZXBzLgo+Pgo+Pj4KPj4+IC9zeXMvY2xhc3MvbmV0L2VubzEvc3RhdGlzdGljcyQgZ3JlcCAu
ICoKPj4+IGNvbGxpc2lvbnM6MAo+Pj4gbXVsdGljYXN0Ojk1Cj4+PiByeF9ieXRlczoxNDk5ODUx
Cj4+PiByeF9jb21wcmVzc2VkOjAKPj4+IHJ4X2NyY19lcnJvcnM6MTE2NQo+Pj4gcnhfZHJvcHBl
ZDowCj4+PiByeF9lcnJvcnM6MjMzMAo+Pj4gcnhfZmlmb19lcnJvcnM6MAo+Pj4gcnhfZnJhbWVf
ZXJyb3JzOjAKPj4+IHJ4X2xlbmd0aF9lcnJvcnM6MAo+Pj4gcnhfbWlzc2VkX2Vycm9yczowCj4+
PiByeF9ub2hhbmRsZXI6MAo+Pj4gcnhfb3Zlcl9lcnJvcnM6MAo+Pj4gcnhfcGFja2V0czo0Nzg5
Cj4+PiB0eF9hYm9ydGVkX2Vycm9yczowCj4+PiB0eF9ieXRlczo4NjQzMTIKPj4+IHR4X2NhcnJp
ZXJfZXJyb3JzOjAKPj4+IHR4X2NvbXByZXNzZWQ6MAo+Pj4gdHhfZHJvcHBlZDowCj4+PiB0eF9l
cnJvcnM6MAo+Pj4gdHhfZmlmb19lcnJvcnM6MAo+Pj4gdHhfaGVhcnRiZWF0X2Vycm9yczowCj4+
PiB0eF9wYWNrZXRzOjczNzAKPj4+IHR4X3dpbmRvd19lcnJvcnM6MAo+Pj4KPj4+IFNhbWUgYmVo
YXZpb3IgY2FuIGJlIG9ic2VydmVkIG9uIGJvdGggbWFpbmxpbmUga2VybmVsIGFuZCBvbiB5b3Vy
IAo+Pj4gZGV2LXF1ZXVlIGJyYW5jaC4KPj4+IE9UT0gsIHRoZSBzYW1lIGlzc3VlIGNhbuKAmXQg
YmUgb2JzZXJ2ZWQgb24gb3V0LW9mLXRyZWUgZTEwMDBlLgo+Pj4KPj4+IElzIHRoZXJlIGFueSBw
bGFuIHRvIGNsb3NlIHRoZSBnYXAgYmV0d2VlbiB1cHN0cmVhbSBhbmQgb3V0LW9mLXRyZWUgCj4+
PiB2ZXJzaW9uPwo+Pj4KPj4+IEthaS1IZW5nCj4+Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgoKSGVsbG8gS2FpLUhlbmcsCgpJcyB0
aGVyZSBhbnkgc3BlY2lmaWMgZmxvdyB0aGF0IHlvdSBkbyB0byBlbmNvdW50ZXIgdGhpcyBpc3N1
ZT8KCkRvZXMgdGhpcyBvY2N1ciBvbiBkaWZmZXJlbnQgbGluayBzcGVlZHM/IGR1cGxleGVzPwoK
RG8geW91IGRpc2Nvbm5lY3QgYW5kIHJlY29ubmVjdCB0aGUgY2FibGUgZHVyaW5nIHRoZSBmbG93
PwoKQ2FuIHlvdSBwbGVhc2UgYXR0YWNoIGRtZXNnIGxvZyBmb3IgdGhpcz8KCkRvIHlvdSB3b3Jr
IHdpdGggYSBuZXR3b3JrIHN3aXRjaCBvciBiYWNrIHRvIGJhY2s/IHdoYXQgaXMgeW91ciBsaW5r
IApwYXJ0bmVyPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
