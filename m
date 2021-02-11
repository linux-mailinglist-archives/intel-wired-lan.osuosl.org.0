Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C93319224
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 19:25:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDE1386E10;
	Thu, 11 Feb 2021 18:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qC5zvTMxtLwB; Thu, 11 Feb 2021 18:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B7AE86E76;
	Thu, 11 Feb 2021 18:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFA6E1BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 18:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDCDB6E922
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 18:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G0EfiPwzfLW5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Feb 2021 18:25:18 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 29CAE6F4BA; Thu, 11 Feb 2021 18:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E40456E922
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 18:25:16 +0000 (UTC)
IronPort-SDR: afdilAqyFvKMzutnZGYVgmNELH+yJSM7c/AiuAJTnoNnjSoEtWtgEhyVTnRfmDwxF6P2N6qN6a
 A9H6Wu5QyT0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="182363792"
X-IronPort-AV: E=Sophos;i="5.81,171,1610438400"; d="scan'208";a="182363792"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 10:25:15 -0800
IronPort-SDR: CAMPK7Z15TOk3mW2/Kx63piIMUtyTap2E6tl3J9l1VxLAQLhi0AMN21lRHYm+bLiYTHZk/aJMX
 ihyqHiEYLflA==
X-IronPort-AV: E=Sophos;i="5.81,171,1610438400"; d="scan'208";a="587041474"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.251.151.54])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 10:25:14 -0800
Date: Thu, 11 Feb 2021 10:25:13 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: =?UTF-8?Q?Micha=C5=82_Ma=C5=82oszewski?= <michal.maloszewski@intel.com>
Message-ID: <20210211102513.00003b57@intel.com>
In-Reply-To: <1613042941-31948-1-git-send-email-michal.maloszewski@intel.com>
References: <1613042941-31948-1-git-send-email-michal.maloszewski@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL ptr dereference
 on VSI filter sync
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

TWljaGHFgiBNYcWCb3N6ZXdza2kgd3JvdGU6Cgo+IC0tLQo+IHYyOiBwZXJtaXNzaW9ucyBhcmUg
Y2hhbmdlZAo+IAo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaCAgICAg
IHwgMSArCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCA4
ICsrKysrKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+ICBtb2RlIGNoYW5nZSAxMDA2NDQgPT4gMTAwNzU1IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZS5oCj4gIG1vZGUgY2hhbmdlIDEwMDY0NCA9PiAxMDA3NTUgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwoKUGxlYXNlIGZpeCB5b3VyIGdp
dCBjb21taXQsIHRoaXMgZmlsZSBwZXJtaXNzaW9uIGNoYW5nZSBtYWtpbmcgdGhlCmZpbGVzIDEw
MDc1NSAoZXhlY3V0YWJsZSEpIGRvZXNuJ3QgbWFrZSBhbnkgc2Vuc2UgYW5kIHdpbGwgYmUgcmVq
ZWN0ZWQKdXBzdHJlYW0sIHNvIEknbSByZWplY3RpbmcgaXQgaGVyZS4KCllvdSBtdXN0IHJlc3Vi
bWl0IGEgdjMgcGxlYXNlIHdpdGhvdXQgdGhlIDc1NSBjaGFuZ2VzLgppbiB5b3VyIHRyZWU6CmNo
bW9kIDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaCBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCmdpdCBhZGQgLXUKZ2l0IGNvbW1pdCAt
LWFtZW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
