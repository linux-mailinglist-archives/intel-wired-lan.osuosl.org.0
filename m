Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA7E103611
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Nov 2019 09:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3488E87AEF;
	Wed, 20 Nov 2019 08:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1grTHq2kHYtZ; Wed, 20 Nov 2019 08:34:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52A31879E1;
	Wed, 20 Nov 2019 08:34:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7B01BF44C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 08:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1651B86C69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 08:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0WmgbXrJZCc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Nov 2019 08:34:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E81E86C45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2019 08:34:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 00:34:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="381287584"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga005.jf.intel.com with ESMTP; 20 Nov 2019 00:34:32 -0800
From: "Neftin, Sasha" <sasha.neftin@intel.com>
To: jeffrey.t.kirsher@intel.com, Jan Janssen <medhefgo@web.de>,
 intel-wired-lan@lists.osuosl.org
References: <3945198.J3aOToa6sv@minako>
 <92b94935dea3b8c7e7236d6f4e1ac148e6cd2ffd.camel@intel.com>
 <96bdb43e-2a7b-028c-c9ed-98e4477f6b7d@intel.com>
Message-ID: <e68c0b03-e05b-735d-1bce-8f12aaa073aa@intel.com>
Date: Wed, 20 Nov 2019 10:34:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <96bdb43e-2a7b-028c-c9ed-98e4477f6b7d@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Regression: e1000e link not coming up
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
Cc: "David S. Miller" <davem@davemloft.net>,
 Detlev Casanova <detlev.casanova@gmail.co>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTEvMTkvMjAxOSAwODoxMiwgTmVmdGluLCBTYXNoYSB3cm90ZToKPiBPbiAxMS8xOC8yMDE5
IDIwOjI5LCBKZWZmIEtpcnNoZXIgd3JvdGU6Cj4+IE9uIFNhdCwgMjAxOS0xMS0xNiBhdCAxMjo1
MCArMDEwMCwgSmFuIEphbnNzZW4gd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBzaW5jZSA1LjMgbXkg
STIxOS1WIG5ldHdvcmsgaW50ZXJmYWNlIHNvbWV0aW1lcyBkb2Vzbid0IGNvbWUgdXAgd2hlbgo+
Pj4gYm9vdGluZwo+Pj4gb3IgcmVzdW1pbmcgZnJvbSBzdXNwZW5kLiBUaGlzIGVpdGhlciBmb3Jj
ZXMgbWUgdG8gdXNlICJpcCBsaW5rCj4+PiBkb3duL3VwIiBvcgo+Pj4gcmVsb2FkaW5nIHRoZSBt
b2R1bGUgdG8gZ2V0IHdvcmtpbmcgaW50ZXJuZXQuCj4+Pgo+Pj4gSSByZXBvcnRlZCB0aGlzIGlz
c3VlIHByZXZpb3VzbHkgdG8gbmV0ZGV2QHZnZXIua2VybmVsLm9yZyB3aGVyZSBJCj4+PiBpbml0
aWFsbHkKPj4+IGJpc2VjdGVkIHRvIGEgd3JvbmcgY29tbWl0LiBBZnRlciBmaW5kaW5nIHRoZSBy
aWdodCBvbmUgbm9ib2R5Cj4+PiByZWFjdGVkIHRvIGl0LAo+Pj4gc28gbm93IEkgYW0gdHJ5aW5n
IHRoaXMgYWdhaW4gaGVyZS4KPj4KPj4gSSBhcG9sb2dpemUsIHRoaXMgaXMgdGhlIGNvcnJlY3Qg
bWFpbGluZyBsaXN0IGZvciBpc3N1ZXMgd2l0aCB0aGUgSW50ZWwKPj4gd2lyZWQgTEFOLgo+Pgo+
Pgo+Pj4gVGhlcmUgaXMgYWxzbyBhIGJ1Z3ppbGxhIGVudHJ5IGZvciB0aGlzLCBidXQgaXQgc2Vl
bXMgdG8gYmUgaWdub3JlZAo+Pj4gYnkKPj4+IG1haW50YWluZXJzIHRvbzogaHR0cHM6Ly9idWd6
aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDUwNjcKPj4+IEZvciBtZSwgdGhpcyBo
YXBwZW5zIHdpdGggc3lzdGVtZC1uZXR3b3JrZCwgYnV0IHRoZSBwZW9wbGUgaW4gdGhlCj4+PiBi
dWd6aWxsYQo+Pj4gcmVwb3J0IGFyZSBvYnNlcnZpbmcgdGhpcyB3aXRoIE5ldHdvcmtNYW5hZ2Vy
Lgo+Pj4KPj4+IFRoZSBjb21taXQgaW50cm9kdWNpbmcgdGhlIGJ1ZyBpcwo+Pj4gNTk2NTNlNjQ5
N2QxNmY3YWMxZDlkYjA4OGYzOTU5ZjU3ZWU4YzNkYgo+Pj4gKGUxMDAwZTogTWFrZSB3YXRjaGRv
ZyB1c2UgZGVsYXllZCB3b3JrKSBhbmQgcmV2ZXJ0aW5nIGl0IGRpZCBtYWtlCj4+PiB0aGlzIGJ1
ZyBnbwo+Pj4gYXdheS4gVGhvdWdoLCBpdCBjYW5ub3QgYmUgcmV2ZXJ0ZWQgYXV0b21hdGljYWxs
eSBvbiB0aGUgbGF0ZXN0IGdpdAo+Pj4gdHJlZSBmcm9tCj4+PiBUb3J2YWxkcyBhbnltb3JlLgo+
Pgo+PiBJIHdpbGwgd29yayB3aXRoIHRoZSBlMTAwMGUgZHJpdmVyIGxlYWQgKFNhc2hhIE5lZnRp
bikgdG8gd29yayB1cCBhCj4+IHBhdGNoIHRoYXQgd2lsbCBhcHBseSB0byBEYXZpZCBNaWxsZXIn
cyBuZXQgdHJlZS7CoCBJIHdpbGwgbWFrZSBzdXJlIHlvdQo+PiBhcmUgQ0MnZCBvbiB0aGUgcGF0
Y2gsIHNvIHlvdSB3aWxsIGtub3cgd2hlbiBpdCBtYWtlcyBpdCBpbnRvIHRoZQo+PiB1cHN0cmVh
bSBrZXJuZWwuCj4+Cj4gSSBoZWFyZCBhIGxvdCBvZiBwZW9wbGVzIGNvbXBsYWluIGFib3V0IGEg
cHJvYmxlbSB3aXRoIHVzaW5nIAo+IGRlbGF5ZWRfd29yayBzdHJ1Y3QgaW4gZTEwMDBlLiBJIHdv
dWxkIHN1Z2dlc3QgcmV2ZXJ0aW5nIHRoaXMgcGF0Y2guCkxvb2tzIHJldmVydGluZyBvZiB0aGlz
IHBhdGNoIHNvbHZlZCBhbHNvIHRoZSAKaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3df
YnVnLmNnaT9pZD0yMDUwNDcKCj4+PiBJJ3ZlIGFsc28gdHJpZWQgdGhlIG1hc3RlciBicmFuY2gg
b24gamtpcnNoZXIvbmV0LXF1ZXVlLmdpdMKgIGFuZAo+Pj4gamtpcnNoZXIvbmV4dC1xdWV1ZS5n
aXQsIGJ1dCB0aGUgYnVnIGlzIHN0aWxsIHByZXNlbnQgdGhlcmUgdG9vLgo+Pj4KPj4+IFRoaXMg
YnVnIGlzIHJlYWxseSBhbm5veWluZyBhbmQgaW5jb252ZW5pZW50LCBzbyBJIHdvdWxkIHJlYWxs
eQo+Pj4gYXBwcmVjaWF0ZSBpZgo+Pj4gc29tZWJvZHkgY291bGQgZml4IHRoaXMgYnVnIG9yIGF0
IGxlYXN0IGhhdmUgdGhlIG9mZmVuZGluZyBjb21taXQKPj4+IHJldmVydGVkLgo+Pj4KPj4+IFJl
Z2FyZHMsCj4+PiBKYW4KPj4+Cj4+Pgo+Pgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IElu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
