Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 549E85BED5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2019 16:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AFAF1203C0;
	Mon,  1 Jul 2019 14:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H3HS+u7prHX9; Mon,  1 Jul 2019 14:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 503EE20521;
	Mon,  1 Jul 2019 14:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 738721BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 14:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C07E2050E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9o7mxtMg+Xwm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2019 14:58:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id AB2E3203C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 14:58:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 07:58:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="186506946"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2019 07:58:06 -0700
To: Jonathan Lemon <jonathan.lemon@gmail.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
 <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <c6c48475-c4c8-599f-8217-4bc0f4d26a90@intel.com>
Date: Mon, 1 Jul 2019 15:58:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjgvMDYvMjAxOSAyMToyOSwgSm9uYXRoYW4gTGVtb24gd3JvdGU6Cj4gT24gMjggSnVuIDIw
MTksIGF0IDk6MTksIExhYXR6LCBLZXZpbiB3cm90ZToKPj4gT24gMjcvMDYvMjAxOSAyMjoyNSwg
SmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4+PiBJIHRoaW5rIHRoYXQncyB2ZXJ5IGxpbWl0aW5nLsKg
IFdoYXQgaXMgdGhlIGNoYWxsZW5nZSBpbiBwcm92aWRpbmcKPj4+IGFsaWduZWQgYWRkcmVzc2Vz
LCBleGFjdGx5Pwo+PiBUaGUgY2hhbGxlbmdlcyBhcmUgdHdvLWZvbGQ6Cj4+IDEpIGl0IHByZXZl
bnRzIHVzaW5nIGFyYml0cmFyeSBidWZmZXIgc2l6ZXMsIHdoaWNoIHdpbGwgYmUgYW4gaXNzdWUg
Cj4+IHN1cHBvcnRpbmcgZS5nLiBqdW1ibyBmcmFtZXMgaW4gZnV0dXJlLgo+PiAyKSBoaWdoZXIg
bGV2ZWwgdXNlci1zcGFjZSBmcmFtZXdvcmtzIHdoaWNoIG1heSB3YW50IHRvIHVzZSBBRl9YRFAs
IAo+PiBzdWNoIGFzIERQREssIGRvIG5vdCBjdXJyZW50bHkgc3VwcG9ydCBoYXZpbmcgYnVmZmVy
cyB3aXRoICdmaXhlZCcgCj4+IGFsaWdubWVudC4KPj4gwqDCoMKgIFRoZSByZWFzb24gdGhhdCBE
UERLIHVzZXMgYXJiaXRyYXJ5IHBsYWNlbWVudCBpcyB0aGF0Ogo+PiDCoMKgwqAgwqDCoMKgIC0g
aXQgd291bGQgc3RvcCB0aGluZ3Mgd29ya2luZyBvbiBjZXJ0YWluIE5JQ3Mgd2hpY2ggbmVlZCB0
aGUgCj4+IGFjdHVhbCB3cml0YWJsZSBzcGFjZSBzcGVjaWZpZWQgaW4gdW5pdHMgb2YgMWsgLSB0
aGVyZWZvcmUgd2UgbmVlZCAyayAKPj4gKyBtZXRhZGF0YSBzcGFjZS4KPj4gwqDCoMKgIMKgwqDC
oCAtIHdlIHBsYWNlIHBhZGRpbmcgYmV0d2VlbiBidWZmZXJzIHRvIGF2b2lkIGNvbnN0YW50bHkg
Cj4+IGhpdHRpbmcgdGhlIHNhbWUgbWVtb3J5IGNoYW5uZWxzIHdoZW4gYWNjZXNzaW5nIG1lbW9y
eS4KPj4gwqDCoMKgIMKgwqDCoCAtIGl0IGFsbG93cyB0aGUgYXBwbGljYXRpb24gdG8gY2hvb3Nl
IHRoZSBhY3R1YWwgYnVmZmVyIHNpemUgCj4+IGl0IHdhbnRzIHRvIHVzZS4KPj4gwqDCoMKgIFdl
IG1ha2UgdXNlIG9mIHRoZSBhYm92ZSB0byBhbGxvdyB1cyB0byBzcGVlZCB1cCBwcm9jZXNzaW5n
IAo+PiBzaWduaWZpY2FudGx5IGFuZCBhbHNvIHJlZHVjZSB0aGUgcGFja2V0IGJ1ZmZlciBtZW1v
cnkgc2l6ZS4KPj4KPj4gwqDCoMKgIE5vdCBoYXZpbmcgYXJiaXRyYXJ5IGJ1ZmZlciBhbGlnbm1l
bnQgYWxzbyBtZWFucyBhbiBBRl9YRFAgZHJpdmVyIAo+PiBmb3IgRFBESyBjYW5ub3QgYmUgYSBk
cm9wLWluIHJlcGxhY2VtZW50IGZvciBleGlzdGluZyBkcml2ZXJzIGluIAo+PiB0aG9zZSBmcmFt
ZXdvcmtzLiBFdmVuIHdpdGggYSBuZXcgY2FwYWJpbGl0eSB0byBhbGxvdyBhbiBhcmJpdHJhcnkg
Cj4+IGJ1ZmZlciBhbGlnbm1lbnQsIGV4aXN0aW5nIGFwcHMgd2lsbCBuZWVkIHRvIGJlIG1vZGlm
aWVkIHRvIHVzZSB0aGF0IAo+PiBuZXcgY2FwYWJpbGl0eS4KPgo+IFNpbmNlIGFsbCBidWZmZXJz
IGluIHRoZSB1bWVtIGFyZSB0aGUgc2FtZSBjaHVuayBzaXplLCB0aGUgb3JpZ2luYWwgCj4gYnVm
ZmVyCj4gYWRkcmVzcyBjYW4gYmUgcmVjYWxjdWxhdGVkIHdpdGggc29tZSBtdWx0aXBseS9zaGlm
dCBtYXRoLiBIb3dldmVyLCAKPiB0aGlzIGlzCj4gbW9yZSBleHBlbnNpdmUgdGhhbiBqdXN0IGEg
bWFzayBvcGVyYXRpb24uCgoKWWVzLCB3ZSBjYW4gZG8gdGhpcy4KCkFub3RoZXIgb3B0aW9uIHdl
IGhhdmUgaXMgdG8gYWRkIGEgc29ja2V0IG9wdGlvbiBmb3IgcXVlcnlpbmcgdGhlIAptZXRhZGF0
YSBsZW5ndGggZnJvbSB0aGUgZHJpdmVyIChhc3N1bWluZyBpdCBkb2Vzbid0IHZhcnkgcGVyIHBh
Y2tldCkuIApXZSBjYW4gdXNlIHRoYXQgaW5mb3JtYXRpb24gdG8gZ2V0IGJhY2sgdGhlIG9yaWdp
bmFsIGFkZHJlc3MgdXNpbmcgCnN1YnRyYWN0aW9uLgoKQWx0ZXJuYXRpdmVseSwgd2UgY2FuIGNo
YW5nZSB0aGUgUnggZGVzY3JpcHRvciBmb3JtYXQgdG8gaW5jbHVkZSB0aGUgCm1ldGFkYXRhIGxl
bmd0aC4gV2UgY291bGQgZG8gdGhpcyBpbiBhIGNvdXBsZSBvZiB3YXlzLCBmb3IgZXhhbXBsZSwg
CnJhdGhlciB0aGFuIHJldHVybmluZyB0aGUgYWRkcmVzcyBhdCB0aGUgc3RhcnQgb2YgdGhlIHBh
Y2tldCwgaW5zdGVhZCAKcmV0dXJuIHRoZSBidWZmZXIgYWRkcmVzcyB0aGF0IHdhcyBwYXNzZWQg
aW4sIGFuZCBhZGRpbmcgYW5vdGhlciAxNi1iaXQgCmZpZWxkIHRvIHNwZWNpZnkgdGhlIHN0YXJ0
IG9mIHRoZSBwYWNrZXQgb2Zmc2V0IHdpdGggdGhhdCBidWZmZXIuIElkIAp1c2luZyAxNi1iaXRz
IG9mIGRlc2NyaXB0b3Igc3BhY2UgaXMgbm90IGRlc2lyYWJsZSwgYW4gYWx0ZXJuYXRpdmUgY291
bGQgCmJlIHRvIGxpbWl0IHVtZW0gc2l6ZXMgdG8gZS5nLiAyXjQ4IGJpdHMgKDI1NiB0ZXJhYnl0
ZXMgc2hvdWxkIGJlIAplbm91Z2gsIHJpZ2h0IDotKSApIGFuZCB1c2UgdGhlIHJlbWFpbmluZyAx
NiBiaXRzIG9mIHRoZSBhZGRyZXNzIGFzIGEgCnBhY2tldCBvZmZzZXQuIE90aGVyIHZhcmlhdGlv
bnMgb24gdGhlc2UgYXBwcm9hY2hlcyBhcmUgb2J2aW91c2x5IApwb3NzaWJsZSB0b28uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
