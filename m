Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A13559B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 23:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 224F385EB8;
	Tue, 25 Jun 2019 21:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJvtSooFQGgD; Tue, 25 Jun 2019 21:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 759B785E79;
	Tue, 25 Jun 2019 21:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4C3C1BF417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 13:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0D2D8140D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 13:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bc9cWXO5Uo-X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 13:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87AAA816FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 13:15:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 06:15:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="166673508"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2019 06:14:59 -0700
To: Jakub Kicinski <jakub.kicinski@netronome.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-4-kevin.laatz@intel.com>
 <20190624122342.26c6a9b4@cakuba.netronome.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <bf3e67de-b23a-fa69-4cbc-c53e9cc5e055@intel.com>
Date: Tue, 25 Jun 2019 14:14:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190624122342.26c6a9b4@cakuba.netronome.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 25 Jun 2019 21:12:38 +0000
Subject: Re: [Intel-wired-lan] [PATCH 03/11] xdp: add offset param to
 zero_copy_allocator
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
 ast@kernel.org, intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDI0LzA2LzIwMTkgMjA6MjMsIEpha3ViIEtpY2luc2tpIHdyb3RlOgo+IE9uIFRodSwgMjAg
SnVuIDIwMTkgMDk6MDk6NTAgKzAwMDAsIEtldmluIExhYXR6IHdyb3RlOgo+PiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9uZXQveGRwLmggYi9pbmNsdWRlL25ldC94ZHAuaAo+PiBpbmRleCAwZjI1YjM2
NzVjNWMuLmVhODAxZmQyYmY5OCAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9uZXQveGRwLmgKPj4g
KysrIGIvaW5jbHVkZS9uZXQveGRwLmgKPj4gQEAgLTUzLDcgKzUzLDggQEAgc3RydWN0IHhkcF9t
ZW1faW5mbyB7Cj4+IMKgc3RydWN0IHBhZ2VfcG9vbDsKPj4KPj4gwqBzdHJ1Y3QgemVyb19jb3B5
X2FsbG9jYXRvciB7Cj4+IC3CoMKgwqAgdm9pZCAoKmZyZWUpKHN0cnVjdCB6ZXJvX2NvcHlfYWxs
b2NhdG9yICp6Y2EsIHVuc2lnbmVkIGxvbmcgCj4+IGhhbmRsZSk7Cj4+ICvCoMKgwqAgdm9pZCAo
KmZyZWUpKHN0cnVjdCB6ZXJvX2NvcHlfYWxsb2NhdG9yICp6Y2EsIHVuc2lnbmVkIGxvbmcgaGFu
ZGxlLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZmZfdCBvZmYpOwo+PiDCoH07Cj4KPiBQ
bGVhc2UgcnVuIGNoZWNrcGF0Y2ggLS1zdHJpY3Qgb24gYWxsIHlvdXIgY2hhbmdlcy7CoCBUaGUg
Y29kZQo+IGZvcm1hdHRpbmcgaXMgaW5jb3JyZWN0IGluIG1hbnkgd2F5cyBpbiB0aGlzIHNlcmll
cy4KPgpUaGFua3MsIHdpbGwgZml4IGluIHRoZSB2Mi4KCgo+IFBsZWFzZSBpbmNsdWRlIHBlcmZv
cm1hbmNlIG1lYXN1cmVtZW50cyBwcm92aW5nIHRoZSBzbG93IGRvd24KPiBpcyBuZWdsaWdpYmxl
IGluIHRoZSBjb3ZlciBsZXR0ZXIuCj4KR29vZCBzdWdnZXN0aW9uLiBXaWxsIGFkZCB0byB0aGUg
Y292ZXIgbGV0dGVyIGluIHRoZSB2MiEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
