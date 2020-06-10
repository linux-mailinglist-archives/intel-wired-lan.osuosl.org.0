Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B29D1F4EB3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 09:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08F2187DC5;
	Wed, 10 Jun 2020 07:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jvm-1vv9uLFW; Wed, 10 Jun 2020 07:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E9D887DD9;
	Wed, 10 Jun 2020 07:18:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CAAF1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 07:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7856C86FFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 07:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uvQt-NZYEQD2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 07:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D716D8689C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 07:18:55 +0000 (UTC)
IronPort-SDR: 3GfBA+lUWfb4TIo9c7olSeke2n9zIkhncckc3QQ7E+2t9msLvmcOZdWyYtKwq+/skyQql22C54
 OlqYAb3ml4dQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 00:18:53 -0700
IronPort-SDR: YsxhppGjTVR5tZoIy/Te9TprtxGPiDd9QqNabTU88WUxAL/KONqbSNCRTyrpdv1gAHHi68Hl6o
 hcnU+QpcJ1QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,495,1583222400"; d="scan'208";a="418661200"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.169.52])
 ([10.185.169.52])
 by orsmga004.jf.intel.com with ESMTP; 10 Jun 2020 00:18:51 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20200610061227.3315-1-sasha.neftin@intel.com>
 <a7d7a8c2-2ad1-2ac4-dc7c-e8237a34739c@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <975fc37e-80c6-957f-a6c0-8edba4f80a5c@intel.com>
Date: Wed, 10 Jun 2020 10:18:50 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <a7d7a8c2-2ad1-2ac4-dc7c-e8237a34739c@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Refactor the
 igc_power_up_link()
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

T24gNi8xMC8yMDIwIDA5OjIyLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+IAo+IEFtIDEwLjA2LjIwIHVtIDA4OjEyIHNj
aHJpZWIgU2FzaGEgTmVmdGluOgo+PiBQSFkgb2YgdGhlIGkyMjUgZGV2aWNlIHN1cHBvcnQgb25s
eSBjb3BwZXIgbW9kZS4KPj4gVGhlcmUgaXMgbm8gcG9pbnQgdG8gY2hlY2sgbWVkaWEgdHlwZSBp
biB0aGUKPj4gaWdjX3Bvd2VyX3VwX2xpbmsoKSBtZXRob2QuCj4gCj4gT25lIG5pdCByZWdhcmRp
bmcgdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkuICpSZWZhY3RvciogdmVyeSBnZW5lcmljLiAK
PiBDb3VsZCB5b3UgdXNlIHNvbWV0aGluZyBsaWtlOgo+IAo+ICA+IGlnYzogUmVtb3ZlIHVubmVl
ZGVkIGNoZWNrIGZvciBjb3BwZXIgbWVkaWEgdHlwZQpQYXVsLCB0aGFua3MgZm9yIHJldmlld2lu
ZyB0aGlzIHBhdGNoLiBJIHdpbGwgc2VuZCB2Mi4KPiAKPj4gU2lnbmVkLW9mZi1ieTogU2FzaGEg
TmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCAzICstLQo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyAKPj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+PiBpbmRleCBhZjVlMTY4NmY3ZjIuLjgzYzk0
ZmE1OGM0MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19tYWluLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWlu
LmMKPj4gQEAgLTExNSw4ICsxMTUsNyBAQCBzdGF0aWMgdm9pZCBpZ2NfcG93ZXJfdXBfbGluayhz
dHJ1Y3QgaWdjX2FkYXB0ZXIgCj4+ICphZGFwdGVyKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgaWdj
X3Jlc2V0X3BoeSgmYWRhcHRlci0+aHcpOwo+PiAtwqDCoMKgIGlmIChhZGFwdGVyLT5ody5waHku
bWVkaWFfdHlwZSA9PSBpZ2NfbWVkaWFfdHlwZV9jb3BwZXIpCj4+IC3CoMKgwqDCoMKgwqDCoCBp
Z2NfcG93ZXJfdXBfcGh5X2NvcHBlcigmYWRhcHRlci0+aHcpOwo+PiArwqDCoMKgIGlnY19wb3dl
cl91cF9waHlfY29wcGVyKCZhZGFwdGVyLT5odyk7Cj4+IMKgwqDCoMKgwqAgaWdjX3NldHVwX2xp
bmsoJmFkYXB0ZXItPmh3KTsKPj4gwqAgfQo+IAo+IFJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8
cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
