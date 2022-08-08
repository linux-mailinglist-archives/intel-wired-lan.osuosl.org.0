Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1630258C617
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 12:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C534540608;
	Mon,  8 Aug 2022 10:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C534540608
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659953424;
	bh=oNVQioX91w3v3MbwBKVPJoWaMGo3EdTG3NT9n+5x1Sw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C6sl4SkJ7w4WC2mDWOAZ7dYeus/ddOD+y6oP4YCBaBN4u6AhC6W9m/HRyZCd/8Ylz
	 W5ZBpts7aOHI3mPpUTH6j43HuA+YxiIadXJdD2kOh18vRE1x9vrWBY68xRw5wOh9xs
	 EpZf7gAM0wUBYp7A88E5/TFNL8czRVZz6HgJSqWiSpRNUD21Iwr6NUVmEJnCDd1RzD
	 Jmrhwse/cNwgGMt6LHsH1S7Vi2tKnO6AV+D+czbXt5+KiIjFVGOjObSLqTf7AeQTHz
	 gb3v6Z07xcselZIpcVsQhgf20DM1/zW2vYFKp171DkN4jVak+RMWtGW92VuRiosR9d
	 Hhz0l7Cb1EweQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEocD63-GJLf; Mon,  8 Aug 2022 10:10:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C232340476;
	Mon,  8 Aug 2022 10:10:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C232340476
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38E571BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2026D81D70
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:10:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2026D81D70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 31gms51naZt4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 10:10:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4DB581D5F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4DB581D5F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:10:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="352282125"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="352282125"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:10:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="780427190"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:10:16 -0700
Date: Mon, 8 Aug 2022 03:13:06 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <YvC3gijjHdGLmGQA@localhost.localdomain>
References: <20220808042339.2979-1-michal.swiatkowski@linux.intel.com>
 <629564b2-75ac-c495-b252-f0184d534283@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <629564b2-75ac-c495-b252-f0184d534283@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659953417; x=1691489417;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HZ4DqAIvvA4/bWMKpxmDJcG994cIgYnDwmoMF70MvFU=;
 b=i/jzsi6UMizGpzCngm4QnRpqATKQYzD5Ghg0WNB9WeB6JPNHHTTJFmGf
 QHr+gq/aurrepsLz2xHZN+hfOk/S8PN4v5LmNl1niqMnag+X3NepWweDq
 WrZ1xNBWN6B2dBy7+vaRbEzKtuHOimNWidabNyYHXi7DpFzIzEZ5A8HmU
 W4z7KWWoNLoOXmK6++lSgslbYNaZQ6hu3NChrlzELOJxT85xiqA73VXPi
 7E1DwR0sEzf0wG+LJ09cF0N1NlnN2/7DuikIEcK/B2jF+hYO9zKl1m+HL
 amjneEcPbi2nViHMuUZjbfY0uOTnobyx/UKeQAolaah2P1QYyg3n9TZvY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i/jzsi6U
Subject: Re: [Intel-wired-lan] [PATCH net] ice: config netdev tc before
 setting queues number
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBBdWcgMDgsIDIwMjIgYXQgMDg6NDg6NDZBTSArMDIwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBNaWNoYWwsCj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+
IEFtIDA4LjA4LjIyIHVtIDA2OjIzIHNjaHJpZWIgTWljaGFsIFN3aWF0a293c2tpOgo+ID4gQWZ0
ZXIgbG93ZXJpbmcgbnVtYmVyIG9mIHR4IHF1ZXVlcyB0aGUgd2FybmluZyBhcHBlYXJzOgo+ID4g
Ik51bWJlciBvZiBpbiB1c2UgdHggcXVldWVzIGNoYW5nZWQgaW52YWxpZGF0aW5nIHRjIG1hcHBp
bmdzLiBQcmlvcml0eQo+ID4gdHJhZmYgaWMgY2xhc3NpZmljYXRpb24gZGlzYWJsZWQhIgo+IAo+
IEEgc3BhY2Ugc251Y2sgaW4gaW4gKnRyYWZmaWMqLgo+IAo+IEl04oCZZCBiZSBhbHNvIG5pY2Us
IGlmIHlvdSBhZGRlZCB0aGUgY29tbWFuZCB0byBsb3dlciB0aGUgdHggcXVldWVzIHRvIHRoZQo+
IGNvbW1pdCBtZXNzYWdlLgo+IAoKVGhhbmtzLCBJIHdpbGwgZml4IGFuZCBhZGQgY29tbWFuZCBp
biB2Mi4KCj4gPiBGaXggdGhpcyBieSBzZXR0aW5nIGNvcnJlY3QgdGMgbWFwcGluZyBiZWZvcmUg
c2V0dGluZyByZWFsIG51bWJlciBvZgo+ID4gcXVldWVzIG9uIG5ldGRldi4KPiA+IAo+ID4gRml4
ZXM6IDA3NTRkNjViZDRiZTUgKCJpY2U6IEFkZCBpbmZyYXN0cnVjdHVyZSBmb3IgbXFwcmlvIHN1
cHBvcnQgdmlhIG5kb19zZXR1cF90YyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3dpYXRr
b3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAyICsrCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPiA+IGluZGV4IGQ5OTIzMjFlNzRiYS4uYmIxN2JjZmQy
NTI5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9t
YWluLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5j
Cj4gPiBAQCAtNjkxOCw2ICs2OTE4LDggQEAgaW50IGljZV92c2lfb3BlbihzdHJ1Y3QgaWNlX3Zz
aSAqdnNpKQo+ID4gICAJaWYgKGVycikKPiA+ICAgCQlnb3RvIGVycl9zZXR1cF9yeDsKPiA+ICsJ
aWNlX3ZzaV9jZmdfbmV0ZGV2X3RjKHZzaSwgdnNpLT50Y19jZmcuZW5hX3RjKTsKPiA+ICsKPiA+
ICAgCWlmICh2c2ktPnR5cGUgPT0gSUNFX1ZTSV9QRikgewo+ID4gICAJCS8qIE5vdGlmeSB0aGUg
c3RhY2sgb2YgdGhlIGFjdHVhbCBxdWV1ZSBjb3VudHMuICovCj4gPiAgIAkJZXJyID0gbmV0aWZf
c2V0X3JlYWxfbnVtX3R4X3F1ZXVlcyh2c2ktPm5ldGRldiwgdnNpLT5udW1fdHhxKTsKPiAKPiAK
PiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
