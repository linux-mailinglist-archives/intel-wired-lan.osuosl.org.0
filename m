Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A4B584D8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 10:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B8F961076;
	Fri, 29 Jul 2022 08:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B8F961076
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659084128;
	bh=X9VXRUmT9Zz5REeahnDy0IAe7Cb2BB6sBxvH4UVHlM4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p3e3/pzEnkAhtndmnUKSV5SwZ0ck6r8SZFVAueK9LnuZojQwRRZxB08u7HBtLAllC
	 QFH1KSRzbZBfyXgxB4OH6N7kyFdw02Qnqpe3d9TT51HWiGar2ti/f2E17D9j4LMgBd
	 m0wnBhNpB8kzWWGeZsI17Wq2IlCWI4XRqivc6kzAalTOX4Fdu8DJHBUCvx/WTpOKpX
	 l/nCkd6+7+lZrI7R2RMj0zxaOmIexaiMPgAxRf09018XNlDXLT2PEH50aMO12SLmwk
	 oSe1LgliWR7XQg4iXhuLW5aj0AJTPe3QflRYYbnExtOhXCdrrAxt8s75b40icc24bV
	 OzNPhw0CD2myA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KC4SPGFaLlTW; Fri, 29 Jul 2022 08:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11EE861071;
	Fri, 29 Jul 2022 08:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11EE861071
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB8FD1BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 08:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C52F84016A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 08:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C52F84016A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id it9Ad8D0TTGl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 08:42:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5A6C40B7B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C5A6C40B7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 08:42:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="271765142"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="271765142"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 01:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="669207270"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.237.142.70])
 ([10.237.142.70])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 01:41:59 -0700
Message-ID: <8e65876e-4168-e5bb-813c-3bba478a11fb@linux.intel.com>
Date: Fri, 29 Jul 2022 10:40:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220706162639.8897-1-marcin.szycik@linux.intel.com>
 <f8e9e966-8d98-9a17-298f-d2e791e5359d@intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <f8e9e966-8d98-9a17-298f-d2e791e5359d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659084120; x=1690620120;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=8VT4fL9Z12j0mgFMqIQwGoMnAdkaaPHNTLsqFRl2lhw=;
 b=MKjjG0XnEPw5xhMmS5mLR9QRKw61gGFvI3twIj09T6Uk+PL6qu56YfHK
 /2uf/jMUj3DgmDj7yrCZoM35bQL1I6Y5z61rR8VpJv7YGiVsTB6NCl+wV
 dwhpgneeupIDim/0CM1Q2HIlB9FsJa+wB9+RghE9V1Iwm4Upe54GUqKI/
 ZvE2pmNdWeU+jm2wgvn4E1taUUatd4r5SbiFTeFM2t/KLmLwsum/fJ6TA
 170qK6xDn9tUIraHTFVksQ2K2o6g8Wf+HZFSsGUlvcqzxtRZM/5GIIdfu
 4ikQOnXM19nJ1Na0yyQHfmXhXRGmmGTTWjXUrkU78FAF6WeKbWQSy3gxR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MKjjG0Xn
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for ip
 TTL & ToS offload
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyOC1KdWwtMjIgMTg6MTQsIFRvbnkgTmd1eWVuIHdyb3RlOgo+IE9uIDcvNi8yMDIyIDk6
MjYgQU0sIE1hcmNpbiBTenljaWsgd3JvdGU6Cj4+IEFkZCBzdXBwb3J0IGZvciBwYXJzaW5nIFRU
TCBhbmQgVG9TIChIb3AgTGltaXQgYW5kIFRyYWZmaWMgQ2xhc3MpIHRjIGZpZWxkcwo+PiBhbmQg
bWF0Y2hpbmcgb24gdGhvc2UgZmllbGRzIGluIGZpbHRlcnMuIEluY29tcGxldGUgcGFydCBvZiBp
bXBsZW1lbnRhdGlvbgo+PiB3YXMgYWxyZWFkeSBpbiBwbGFjZSAoZ2V0dGluZyBlbmNfaXAgYW5k
IGVuY190b3MgZnJvbSBmbG93X21hdGNoX2lwIGFuZAo+PiB3cml0aW5nIHRoZW0gdG8gZmlsdGVy
IGhlYWRlcikuCj4+Cj4+IE5vdGU6IG1hdGNoaW5nIG9uIGlwdjYgaXBfdHRsLCBlbmNfdHRsIGFu
ZCBlbmNfdG9zIGlzIGN1cnJlbnRseSBub3QKPj4gc3VwcG9ydGVkIGJ5IHRoZSBERFAgcGFja2Fn
ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51
eC5pbnRlbC5jb20+Cj4+IFJldmlld2VkLWJ5OiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5z
d2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+IAo+IDxzbmlwPgo+IAo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90Y19saWIuaCBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmgKPj4gaW5kZXggMDE5Mzg3
NGNkMjAzLi43ZGE5YjkyZTNiNDkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfdGNfbGliLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV90Y19saWIuaAo+PiBAQCAtMjQsOSArMjQsMTUgQEAKPj4gwqAgI2RlZmluZSBJ
Q0VfVENfRkxXUl9GSUVMRF9FVEhfVFlQRV9JRMKgwqDCoMKgwqDCoMKgIEJJVCgxNykKPj4gwqAg
I2RlZmluZSBJQ0VfVENfRkxXUl9GSUVMRF9FTkNfT1BUU8KgwqDCoMKgwqDCoMKgIEJJVCgxOCkK
Pj4gwqAgI2RlZmluZSBJQ0VfVENfRkxXUl9GSUVMRF9DVkxBTsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgQklUKDE5KQo+PiArI2RlZmluZSBJQ0VfVENfRkxXUl9GSUVMRF9JUF9UT1PCoMKgwqDCoMKg
wqDCoCBCSVQoMjApCj4+ICsjZGVmaW5lIElDRV9UQ19GTFdSX0ZJRUxEX0lQX1RUTMKgwqDCoMKg
wqDCoMKgIEJJVCgyMSkKPj4gKyNkZWZpbmUgSUNFX1RDX0ZMV1JfRklFTERfRU5DX0lQX1RPU8Kg
wqDCoMKgwqDCoMKgIEJJVCgyMikKPj4gKyNkZWZpbmUgSUNFX1RDX0ZMV1JfRklFTERfRU5DX0lQ
X1RUTMKgwqDCoMKgwqDCoMKgIEJJVCgyMykKPiAKPiBMb29rcyBsaWtlIHRoZSBQUFBvRSB2YWx1
ZXMgWzFdIGFyZSBub3cgY29uZmxpY3Rpbmcgd2l0aCB0aGVzZS4gQXMgUFBQb0Ugd2FzIGFjY2Vw
dGVkIGludG8gbmV0LW5leHQsIHBsZWFzZSB1cGRhdGUgdGhlc2UgdmFsdWVzLgoKVGhhbmtzIGZv
ciBwb2ludGluZyB0aGlzIG91dCwgSSdsbCBmaXggaXQuCgo+IAo+PiDCoCAjZGVmaW5lIElDRV9U
Q19GTE9XRVJfTUFTS18zMsKgwqAgMHhGRkZGRkZGRgo+PiDCoCArI2RlZmluZSBJQ0VfSVBWNl9I
RFJfVENfTUFTSyAweEZGMDAwMDAKPj4gKwo+PiDCoCBzdHJ1Y3QgaWNlX2luZHJfYmxvY2tfcHJp
diB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldjsKPj4gwqDCoMKgwqDC
oCBzdHJ1Y3QgaWNlX25ldGRldl9wcml2ICpucDsKPiAKPiAKPiBbMV0gaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV0ZGV2L25ldC1uZXh0LmdpdC9kaWZm
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmg/aWQ9Y2Q4ZWZlZWVk
MTZlOGVjZjMwMDcxNTgzODY1ZjNmNDY4ZGI5ZTg1NApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
