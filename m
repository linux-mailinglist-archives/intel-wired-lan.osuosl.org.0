Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 787F85A0AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 18:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEB5587694;
	Fri, 28 Jun 2019 16:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lI6aV3Gs5Y74; Fri, 28 Jun 2019 16:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0875D87688;
	Fri, 28 Jun 2019 16:19:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3941BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2AA0D2283A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqmyD55QpkUv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 16:19:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 54C4022817
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 16:19:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 09:19:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="167801019"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.252.3.92])
 ([10.252.3.92])
 by orsmga006.jf.intel.com with ESMTP; 28 Jun 2019 09:19:10 -0700
To: Jakub Kicinski <jakub.kicinski@netronome.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
Date: Fri, 28 Jun 2019 17:19:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190627142534.4f4b8995@cakuba.netronome.com>
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ciara.loftus@intel.com,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjcvMDYvMjAxOSAyMjoyNSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gT24gVGh1LCAyNyBK
dW4gMjAxOSAxMjoxNDo1MCArMDEwMCwgTGFhdHosIEtldmluIHdyb3RlOgo+PiBPbiB0aGUgYXBw
bGljYXRpb24gc2lkZSAoeGRwc29jayksIHdlIGRvbid0IGhhdmUgdG8gd29ycnkgYWJvdXQgdGhl
IHVzZXIKPj4gZGVmaW5lZCBoZWFkcm9vbSwgc2luY2UgaXQgaXMgMCwgc28gd2Ugb25seSBuZWVk
IHRvIGFjY291bnQgZm9yIHRoZQo+PiBYRFBfUEFDS0VUX0hFQURST09NIHdoZW4gY29tcHV0aW5n
IHRoZSBvcmlnaW5hbCBhZGRyZXNzIChpbiB0aGUgZGVmYXVsdAo+PiBzY2VuYXJpbykuCj4gVGhh
dCBhc3N1bWVzIHNwZWNpZmljIGxheW91dCBmb3IgdGhlIGRhdGEgaW5zaWRlIHRoZSBidWZmZXIu
ICBTb21lIE5JQ3MKPiB3aWxsIHByZXBlbmQgaW5mb3JtYXRpb24gbGlrZSB0aW1lc3RhbXAgdG8g
dGhlIHBhY2tldCwgbWVhbmluZyB0aGUKPiBwYWNrZXQgd291bGQgc3RhcnQgYXQgb2Zmc2V0IFhE
UF9QQUNLRVRfSEVBRFJPT00gKyBtZXRhZGF0YSBsZW4uLgoKWWVzLCBpZiBOSUNzIHByZXBlbmQg
ZXh0cmEgZGF0YSB0byB0aGUgcGFja2V0IHRoYXQgd291bGQgYmUgYSBwcm9ibGVtIGZvcgp1c2lu
ZyB0aGlzIGZlYXR1cmUgaW4gaXNvbGF0aW9uLiBIb3dldmVyLCBpZiB3ZSBhbHNvIGFkZCBpbiBz
dXBwb3J0IGZvciAKaW4tb3JkZXIKUlggYW5kIFRYIHJpbmdzLCB0aGF0IHdvdWxkIG5vIGxvbmdl
ciBiZSBhbiBpc3N1ZS4gSG93ZXZlciwgZXZlbiBmb3IgTklDcwp3aGljaCBkbyBwcmVwZW5kIGRh
dGEsIHRoaXMgcGF0Y2hzZXQgc2hvdWxkIG5vdCBicmVhayBhbnl0aGluZyB0aGF0IGlzIApjdXJy
ZW50bHkKd29ya2luZy4KCj4KPiBJIHRoaW5rIHRoYXQncyB2ZXJ5IGxpbWl0aW5nLiAgV2hhdCBp
cyB0aGUgY2hhbGxlbmdlIGluIHByb3ZpZGluZwo+IGFsaWduZWQgYWRkcmVzc2VzLCBleGFjdGx5
PwpUaGUgY2hhbGxlbmdlcyBhcmUgdHdvLWZvbGQ6CjEpIGl0IHByZXZlbnRzIHVzaW5nIGFyYml0
cmFyeSBidWZmZXIgc2l6ZXMsIHdoaWNoIHdpbGwgYmUgYW4gaXNzdWUgCnN1cHBvcnRpbmcgZS5n
LiBqdW1ibyBmcmFtZXMgaW4gZnV0dXJlLgoyKSBoaWdoZXIgbGV2ZWwgdXNlci1zcGFjZSBmcmFt
ZXdvcmtzIHdoaWNoIG1heSB3YW50IHRvIHVzZSBBRl9YRFAsIHN1Y2ggCmFzIERQREssIGRvIG5v
dCBjdXJyZW50bHkgc3VwcG9ydCBoYXZpbmcgYnVmZmVycyB3aXRoICdmaXhlZCcgYWxpZ25tZW50
LgogwqDCoMKgIFRoZSByZWFzb24gdGhhdCBEUERLIHVzZXMgYXJiaXRyYXJ5IHBsYWNlbWVudCBp
cyB0aGF0OgogwqDCoMKgIMKgwqDCoCAtIGl0IHdvdWxkIHN0b3AgdGhpbmdzIHdvcmtpbmcgb24g
Y2VydGFpbiBOSUNzIHdoaWNoIG5lZWQgdGhlIAphY3R1YWwgd3JpdGFibGUgc3BhY2Ugc3BlY2lm
aWVkIGluIHVuaXRzIG9mIDFrIC0gdGhlcmVmb3JlIHdlIG5lZWQgMmsgKyAKbWV0YWRhdGEgc3Bh
Y2UuCiDCoMKgwqAgwqDCoMKgIC0gd2UgcGxhY2UgcGFkZGluZyBiZXR3ZWVuIGJ1ZmZlcnMgdG8g
YXZvaWQgY29uc3RhbnRseSBoaXR0aW5nIAp0aGUgc2FtZSBtZW1vcnkgY2hhbm5lbHMgd2hlbiBh
Y2Nlc3NpbmcgbWVtb3J5LgogwqDCoMKgIMKgwqDCoCAtIGl0IGFsbG93cyB0aGUgYXBwbGljYXRp
b24gdG8gY2hvb3NlIHRoZSBhY3R1YWwgYnVmZmVyIHNpemUgaXQgCndhbnRzIHRvIHVzZS4KIMKg
wqDCoCBXZSBtYWtlIHVzZSBvZiB0aGUgYWJvdmUgdG8gYWxsb3cgdXMgdG8gc3BlZWQgdXAgcHJv
Y2Vzc2luZyAKc2lnbmlmaWNhbnRseSBhbmQgYWxzbyByZWR1Y2UgdGhlIHBhY2tldCBidWZmZXIg
bWVtb3J5IHNpemUuCgogwqDCoMKgIE5vdCBoYXZpbmcgYXJiaXRyYXJ5IGJ1ZmZlciBhbGlnbm1l
bnQgYWxzbyBtZWFucyBhbiBBRl9YRFAgZHJpdmVyIApmb3IgRFBESyBjYW5ub3QgYmUgYSBkcm9w
LWluIHJlcGxhY2VtZW50IGZvciBleGlzdGluZyBkcml2ZXJzIGluIHRob3NlIApmcmFtZXdvcmtz
LiBFdmVuIHdpdGggYSBuZXcgY2FwYWJpbGl0eSB0byBhbGxvdyBhbiBhcmJpdHJhcnkgYnVmZmVy
IAphbGlnbm1lbnQsIGV4aXN0aW5nIGFwcHMgd2lsbCBuZWVkIHRvIGJlIG1vZGlmaWVkIHRvIHVz
ZSB0aGF0IG5ldyAKY2FwYWJpbGl0eS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
