Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 198D4251DEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 19:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2644822274;
	Tue, 25 Aug 2020 17:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbAAOnobjOHK; Tue, 25 Aug 2020 17:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11FEF20C45;
	Tue, 25 Aug 2020 17:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04DBD1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE5FF20451
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QgcnhzdzCih1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 17:14:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 14A6420447
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:14:15 +0000 (UTC)
IronPort-SDR: 6UrymeDmIZwlCmI+j8/Mv1202vSqqlmvlDhZ35n7OVckeZdL6wYPKx3vfFMX5VXiVyAASwc/4I
 4DwcibNkTcag==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="174201989"
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="174201989"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 10:14:14 -0700
IronPort-SDR: 2ZItQ/zfr0Grb0WpnjNLmHmlmW7Om09pW78aitNxty0HE0IsHtNmXEiF/H2Zsm4ZOk5/JkdwDU
 qTrct/2H7JFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,353,1592895600"; d="scan'208";a="322834728"
Received: from bartholt-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.53.74])
 by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2020 10:14:10 -0700
To: Jakub Kicinski <kuba@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <20200825121323.20239-1-bjorn.topel@gmail.com>
 <20200825121323.20239-4-bjorn.topel@gmail.com>
 <20200825084959.69e0bb0d@kicinski-fedora-PC1C0HJN>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <9590fe12-55a5-69fd-0737-32a6c9aceca3@intel.com>
Date: Tue, 25 Aug 2020 19:14:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825084959.69e0bb0d@kicinski-fedora-PC1C0HJN>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/3] ice: avoid premature Rx
 buffer reuse
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 maciej.machnikowski@intel.com, lirongqing@baidu.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOC0yNSAxNzo0OSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gT24gVHVlLCAyNSBB
dWcgMjAyMCAxNDoxMzoyMyArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+PiBGcm9tOiBCasO2
cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4+Cj4+IFRoZSBwYWdlIHJlY3ljbGUg
Y29kZSwgaW5jb3JyZWN0bHksIHJlbGllZCBvbiB0aGF0IGEgcGFnZSBmcmFnbWVudAo+PiBjb3Vs
ZCBub3QgYmUgZnJlZWQgaW5zaWRlIHhkcF9kb19yZWRpcmVjdCgpLiBUaGlzIGFzc3VtcHRpb24g
bGVhZHMgdG8KPj4gdGhhdCBwYWdlIGZyYWdtZW50cyB0aGF0IGFyZSB1c2VkIGJ5IHRoZSBzdGFj
ay9YRFAgcmVkaXJlY3QgY2FuIGJlCj4+IHJldXNlZCBhbmQgb3ZlcndyaXR0ZW4uCj4+Cj4+IFRv
IGF2b2lkIHRoaXMsIHN0b3JlIHRoZSBwYWdlIGNvdW50IHByaW9yIGludm9raW5nIHhkcF9kb19y
ZWRpcmVjdCgpLgo+Pgo+PiBGaXhlczogZWZjMjIxNGI2MDQ3ICgiaWNlOiBBZGQgc3VwcG9ydCBm
b3IgWERQIikKPj4gUmVwb3J0ZWQtYW5kLWFuYWx5emVkLWJ5OiBMaSBSb25nUWluZyA8bGlyb25n
cWluZ0BiYWlkdS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRv
cGVsQGludGVsLmNvbT4KPiAKPiBHb3R0YSBhZGp1c3QgdGhlIGtkb2M6Cj4gCj4gZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmM6NzczOiB3YXJuaW5nOiBGdW5jdGlvbiBw
YXJhbWV0ZXIgb3IgbWVtYmVyICdyeF9idWZfcGdjbnQnIG5vdCBkZXNjcmliZWQgaW4gJ2ljZV9j
YW5fcmV1c2VfcnhfcGFnZScKPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4
cnguYzo4ODU6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3J4X2J1Zl9w
Z2NudCcgbm90IGRlc2NyaWJlZCBpbiAnaWNlX2dldF9yeF9idWYnCj4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmM6MTAzMzogd2FybmluZzogRnVuY3Rpb24gcGFyYW1l
dGVyIG9yIG1lbWJlciAncnhfYnVmX3BnY250JyBub3QgZGVzY3JpYmVkIGluICdpY2VfcHV0X3J4
X2J1ZicKPiAKClRoYW5rcyEgSSdsbCBzcGluIGEgdjMuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
