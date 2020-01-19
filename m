Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4879141DAB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jan 2020 12:55:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 850CE87482;
	Sun, 19 Jan 2020 11:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 01RNV9piKvDB; Sun, 19 Jan 2020 11:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 340258744F;
	Sun, 19 Jan 2020 11:55:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66AB61BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D3678710D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JbBjQLq2Uken for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jan 2020 11:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F35086AD4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 11:55:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 03:55:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,337,1574150400"; d="scan'208";a="424939160"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2020 03:55:23 -0800
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20200119074601.33324-1-sasha.neftin@intel.com>
 <46e9c8d6-3382-2614-4087-8cfedcdeb9dd@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <58e2e144-4098-7f95-dde6-c6b0043a7908@intel.com>
Date: Sun, 19 Jan 2020 13:55:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <46e9c8d6-3382-2614-4087-8cfedcdeb9dd@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Add support for Alder Lake
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

T24gMS8xOS8yMDIwIDEzOjAyLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IEFtIDE5LjAxLjIwIHVtIDA4OjQ2IHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+PiBBZGQgZGV2
aWNlcyBJRCdzIGZvciB0aGUgbmV4dCBMT00gZ2VuZXJhdGlvbnMgdGhhdCB3aWxsIGJlCj4+IGF2
YWlsYWJsZSBvbiB0aGUgbmV4dCBJbnRlbCBDbGllbnQgcGxhdGZvcm0gKEFsZGVyIExha2UpCj4+
IFRoaXMgcGF0Y2ggcHJvdmlkZXMgdGhlIGluaXRpYWwgc3VwcG9ydCBmb3IgdGhlc2UgZGV2aWNl
cwo+Pgo+PiB2MS0+djI6Cj4+IEFkZHJlc3MgY29tbWludXR5IGNvbW1lbnRzCj4gCj4gY29tbXVu
aXR5CnRoYW5rcywgd2lsbCBmaXggdGhlIHR5cG8gaW4gdjMKPiAKPj4gU2lnbmVkLW9mZi1ieTog
U2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYyB8IDMgKystCj4+IMKgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ody5owqDCoMKgwqDCoCB8IDUgKysrKysKPj4g
wqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyB8IDcgKysrKysr
Kwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmPCoCB8IDcg
KysrKysrLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvcHRwLmPCoMKg
wqDCoCB8IDEgKwo+PiDCoCA1IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9l
MTAwMGUvZXRodG9vbC5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9l
dGh0b29sLmMKPj4gaW5kZXggYWRjZTdlMzE5YjllLi5hYWMwYjdmYjYyNDMgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMKPj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYwo+PiBAQCAtODk1LDgg
Kzg5NSw4IEBAIHN0YXRpYyBpbnQgZTEwMDBfcmVnX3Rlc3Qoc3RydWN0IGUxMDAwX2FkYXB0ZXIg
Cj4+ICphZGFwdGVyLCB1NjQgKmRhdGEpCj4+IMKgwqDCoMKgwqAgY2FzZSBlMTAwMF9wY2hfbHB0
Ogo+PiDCoMKgwqDCoMKgIGNhc2UgZTEwMDBfcGNoX3NwdDoKPj4gwqDCoMKgwqDCoCBjYXNlIGUx
MDAwX3BjaF9jbnA6Cj4+IC3CoMKgwqDCoMKgwqDCoCAvKiBmYWxsIHRocm91Z2ggKi8KPiAKPiBQ
bGVhc2Ugc3BsaXQgdGhpcyBvdXQsIG9yIG1lbnRpb24gdGhpcyBpbiBhIGNvbW1pdCBtZXNzYWdl
LiBBbHNvLCB0aGVyZSAKPiBhcmUgbW9yZSBpbnN0YW5jZXMuIElmIHlvdSB3YW50LCBJIGNhbiBz
ZW50IGEgY2xlYW4tdXAgY29tbWl0IGZvciB0aGUgCj4gdW5uZWNlc3NhcnkgZmFsbC10aHJvdWdo
IGNvbW1lbnRzLgo+IAo+IFvigKZdClRoaXMgaXMgdW5yZWxhdGVkIHN0YXRlbWVudCB0byB0aGlz
IHBhdGNoLiBJIHRoaW5rIHdlIHNob3VsZCBwcm9jZXNzIApzZXBhcmF0ZSBwYXRjaCB0byBjbGVh
biB1cCB1bm5lZWRlZCAiZmFsbCB0aHJvdWdoIiBzdGF0ZW1lbnRzLiBZb3UgY2FuIApkbyBpdCBp
ZiB5b3Ugd2FudCwgb3RoZXJ3aXNlIHdlIHdpbGwgZG8gaXQgbGF0ZXIuCj4gCj4gCj4gS2luZCBy
ZWdhcmRzLAo+IAo+IFBhdWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
